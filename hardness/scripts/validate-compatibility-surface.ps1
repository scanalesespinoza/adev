[CmdletBinding()]
param()

$ErrorActionPreference = 'Stop'
$hardnessRoot = Split-Path -Parent $PSScriptRoot
$requiredFiles = @(
    '07-compatibility-layer.md',
    '02-skill-contract-template.md',
    '03-human-expectations-contract.md',
    '04-action-risk-authority-model.md',
    '05-policy-schema-and-fixtures.md',
    '06-agent-consumption-guide.md',
    'policy-schema.json',
    'skills/adev-read-only-inspection/SKILL.md',
    'compatibility/skill-md-profile.md',
    'compatibility/runtime-profile-template.md',
    'compatibility/portability-matrix.md',
    'compatibility/conformance-checklist.md'
)

foreach ($relativePath in $requiredFiles) {
    if (-not (Test-Path -LiteralPath (Join-Path $hardnessRoot $relativePath))) {
        throw "Compatibility surface is missing: $relativePath"
    }
}

$checklist = Get-Content -LiteralPath (Join-Path $hardnessRoot 'compatibility/conformance-checklist.md') -Raw
if (([regex]::Matches($checklist, '(?m)^- \[ \]')).Count -lt 8) {
    throw 'Conformance checklist must contain at least eight local checks.'
}

$specification = Get-Content -LiteralPath (Join-Path $hardnessRoot '07-compatibility-layer.md') -Raw
foreach ($requiredPhrase in @('does not make A-Dev depend', 'not an industry standard, a certification program, or a claim of official support', 'Portable contract', 'Minimum conformity')) {
    if ($specification -notmatch [regex]::Escape($requiredPhrase)) {
        throw "Compatibility specification is missing required phrase: $requiredPhrase"
    }
}

Write-Output 'Hardness compatibility surface validated: files, checklist, and core boundaries present.'
