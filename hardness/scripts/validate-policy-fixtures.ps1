[CmdletBinding()]
param(
    [string]$SchemaPath,
    [string]$ValidFixturePath,
    [string]$InvalidFixturePath
)

$ErrorActionPreference = 'Stop'
$scriptDirectory = Split-Path -Parent $MyInvocation.MyCommand.Path

if ([string]::IsNullOrWhiteSpace($SchemaPath)) { $SchemaPath = Join-Path $scriptDirectory '..\policy-schema.json' }
if ([string]::IsNullOrWhiteSpace($ValidFixturePath)) { $ValidFixturePath = Join-Path $scriptDirectory '..\fixtures\valid-policy.json' }
if ([string]::IsNullOrWhiteSpace($InvalidFixturePath)) { $InvalidFixturePath = Join-Path $scriptDirectory '..\fixtures\invalid-policy-missing-owner.json' }

function Get-JsonObject {
    param([string]$Path)

    if (-not (Test-Path -LiteralPath $Path)) {
        throw "Required policy validation input is missing: $Path"
    }

    return Get-Content -LiteralPath $Path -Raw | ConvertFrom-Json
}

function Test-RequiredFields {
    param($Object, [string[]]$Fields, [string]$Context, [System.Collections.Generic.List[string]]$Errors)

    foreach ($field in $Fields) {
        if ($Object.PSObject.Properties.Name -notcontains $field) {
            $Errors.Add("$Context is missing required field '$field'.")
        }
    }
}

function Test-StringArray {
    param($Value, [string]$Context, [System.Collections.Generic.List[string]]$Errors)

    if ($null -eq $Value -or @($Value).Count -eq 0 -or @($Value | Where-Object { $_ -isnot [string] -or $_.Length -eq 0 }).Count -gt 0) {
        $Errors.Add("$Context must be a non-empty array of non-empty strings.")
    }
}

function Test-EnumValue {
    param($Value, [string[]]$Allowed, [string]$Context, [System.Collections.Generic.List[string]]$Errors)

    if ($Allowed -notcontains $Value) {
        $Errors.Add("$Context must be one of: $($Allowed -join ', ').")
    }
}

function Test-IsoDate {
    param($Value, [string]$Context, [System.Collections.Generic.List[string]]$Errors)

    $parsed = [datetime]::MinValue
    if ($Value -isnot [string] -or -not [datetime]::TryParseExact($Value, 'yyyy-MM-dd', [Globalization.CultureInfo]::InvariantCulture, [Globalization.DateTimeStyles]::None, [ref]$parsed)) {
        $Errors.Add("$Context must be an ISO date (yyyy-MM-dd).")
    }
}

function Test-PolicyRecord {
    param($Policy, $Schema)

    $errors = [System.Collections.Generic.List[string]]::new()
    Test-RequiredFields $Policy $Schema.required 'policy' $errors

    if ($Policy.id -notmatch '^HD-[A-Z][A-Z0-9-]*-[0-9]{3}$') { $errors.Add('policy.id does not match the stable ID pattern.') }
    if ($Policy.statement -isnot [string] -or $Policy.statement.Length -eq 0) { $errors.Add('policy.statement must be a non-empty string.') }
    Test-EnumValue $Policy.level @($Schema.properties.level.enum) 'policy.level' $errors
    if ($Policy.rationale -isnot [string] -or $Policy.rationale.Length -eq 0) { $errors.Add('policy.rationale must be a non-empty string.') }

    Test-RequiredFields $Policy.scope $Schema.properties.scope.required 'policy.scope' $errors
    foreach ($field in $Schema.properties.scope.required) { Test-StringArray $Policy.scope.$field "policy.scope.$field" $errors }

    Test-RequiredFields $Policy.authority $Schema.properties.authority.required 'policy.authority' $errors
    if ($Policy.authority.source -isnot [string] -or $Policy.authority.source.Length -eq 0) { $errors.Add('policy.authority.source must be a non-empty string.') }
    Test-EnumValue $Policy.authority.level @($Schema.properties.authority.properties.level.enum) 'policy.authority.level' $errors

    Test-RequiredFields $Policy.precedence $Schema.properties.precedence.required 'policy.precedence' $errors
    if ($Policy.precedence.authorityRank -isnot [int] -or $Policy.precedence.authorityRank -lt 1 -or $Policy.precedence.authorityRank -gt 6) { $errors.Add('policy.precedence.authorityRank must be an integer from 1 to 6.') }
    if ($Policy.precedence.priority -isnot [int] -or $Policy.precedence.priority -lt 0) { $errors.Add('policy.precedence.priority must be a non-negative integer.') }
    Test-EnumValue $Policy.precedence.tieBreaker @($Schema.properties.precedence.properties.tieBreaker.enum) 'policy.precedence.tieBreaker' $errors

    if ($Policy.exceptions -isnot [System.Collections.IEnumerable]) { $errors.Add('policy.exceptions must be an array.') }
    else { foreach ($exception in @($Policy.exceptions)) { Test-RequiredFields $exception @('condition', 'disposition') 'policy.exceptions entry' $errors; Test-EnumValue $exception.disposition @($Schema.properties.exceptions.items.properties.disposition.enum) 'policy.exceptions.disposition' $errors } }

    Test-RequiredFields $Policy.evidence $Schema.properties.evidence.required 'policy.evidence' $errors
    Test-StringArray $Policy.evidence.requirements 'policy.evidence.requirements' $errors
    Test-EnumValue $Policy.evidence.retention @($Schema.properties.evidence.properties.retention.enum) 'policy.evidence.retention' $errors

    Test-RequiredFields $Policy.owner $Schema.properties.owner.required 'policy.owner' $errors
    if ($Policy.owner.role -isnot [string] -or $Policy.owner.role.Length -eq 0) { $errors.Add('policy.owner.role must be a non-empty string.') }
    if ($Policy.owner.reviewer -isnot [string] -or $Policy.owner.reviewer.Length -eq 0) { $errors.Add('policy.owner.reviewer must be a non-empty string.') }

    Test-RequiredFields $Policy.review $Schema.properties.review.required 'policy.review' $errors
    Test-IsoDate $Policy.review.dueOn 'policy.review.dueOn' $errors
    Test-RequiredFields $Policy.expiry $Schema.properties.expiry.required 'policy.expiry' $errors
    Test-IsoDate $Policy.expiry.expiresOn 'policy.expiry.expiresOn' $errors
    Test-EnumValue $Policy.expiry.action @($Schema.properties.expiry.properties.action.enum) 'policy.expiry.action' $errors

    return ,$errors
}

$schema = Get-JsonObject $SchemaPath
$validErrors = Test-PolicyRecord (Get-JsonObject $ValidFixturePath) $schema
$invalidErrors = Test-PolicyRecord (Get-JsonObject $InvalidFixturePath) $schema

if ($validErrors.Count -gt 0) {
    throw "Expected valid fixture to satisfy schema: $($validErrors -join ' ')"
}

if ($invalidErrors.Count -eq 0) {
    throw 'Expected invalid fixture to fail schema.'
}

Write-Output 'Hardness policy fixtures validated: valid accepted; invalid rejected.'
Write-Output "Invalid fixture rejection: $($invalidErrors -join ' ')"
