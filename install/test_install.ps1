# Exercise Install-ADev.ps1 against temporary agent directories. Run on Windows (CI: windows-latest).
Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$adevRoot = [System.IO.Path]::GetFullPath((Join-Path $PSScriptRoot ".."))
$installer = Join-Path $PSScriptRoot "Install-ADev.ps1"
$sandbox = Join-Path ([System.IO.Path]::GetTempPath()) ("adev-test-" + [guid]::NewGuid().ToString("N"))
$claudeHome = Join-Path $sandbox ".claude"
$codexHome = Join-Path $sandbox ".codex"
$agentSkills = Join-Path $sandbox ".agents\skills"
$overlay = Join-Path $sandbox "my-overlay"

function Assert-True {
    param([bool]$Condition, [string]$Message)
    if (-not $Condition) { throw "FAIL: $Message" }
    Write-Host "  ok  $Message"
}

function Get-LinkTarget {
    param([string]$Path)
    $item = Get-Item -LiteralPath $Path -Force
    $target = @($item.Target)[0]
    if (-not $target) { return $null }
    return [System.IO.Path]::GetFullPath($target).TrimEnd('\', '/')
}

$saved = @{ CLAUDE_CONFIG_DIR = $env:CLAUDE_CONFIG_DIR; CODEX_HOME = $env:CODEX_HOME; AGENT_SKILLS_PATH = $env:AGENT_SKILLS_PATH }
try {
    New-Item -ItemType Directory -Path $claudeHome, $overlay -Force | Out-Null
    Set-Content -LiteralPath (Join-Path $claudeHome "CLAUDE.md") -Value "# My notes`n`nKeep me." -Encoding utf8
    Set-Content -LiteralPath (Join-Path $overlay "SKILL.md") -Value "---`nname: test-overlay`ndescription: Test overlay.`n---`n`n# Overlay" -Encoding utf8
    $env:CLAUDE_CONFIG_DIR = $claudeHome
    $env:CODEX_HOME = $codexHome
    $env:AGENT_SKILLS_PATH = $agentSkills

    Write-Host "- install with the guided profile and an overlay"
    & $installer -AdevProfile guided -Overlay $overlay | Out-Null
    foreach ($base in @((Join-Path $claudeHome "skills"), (Join-Path $codexHome "skills"), $agentSkills)) {
        Assert-True ((Get-LinkTarget (Join-Path $base "adev")) -eq $adevRoot.TrimEnd('\', '/')) "adev junction in $base"
        Assert-True ((Get-LinkTarget (Join-Path $base "adev-learn")) -eq (Join-Path $adevRoot "skills\adev-learn")) "adev-learn junction in $base"
        Assert-True ((Get-LinkTarget (Join-Path $base "test-overlay")) -eq $overlay) "overlay junction in $base"
    }
    $claude = Get-Content -LiteralPath (Join-Path $claudeHome "CLAUDE.md") -Raw
    Assert-True ($claude -match 'Keep me\.') "existing guidance preserved"
    Assert-True ($claude.Contains("A-Dev profile: guided")) "profile recorded"
    Assert-True ($claude.Contains("Overlay test-overlay:")) "overlay recorded"
    Assert-True ($claude.Contains("engineering-baseline.md")) "engineering baseline referenced"
    Assert-True ($claude.Contains("record evidence in overlay test-overlay")) "learning loop targets the overlay"
    $codex = Get-Content -LiteralPath (Join-Path $codexHome "AGENTS.md") -Raw
    Assert-True ($codex.Contains("A-Dev profile: guided")) "Codex guidance written"

    Write-Host "- reinstall replaces the managed section"
    & $installer -AdevProfile standard | Out-Null
    $claude = Get-Content -LiteralPath (Join-Path $claudeHome "CLAUDE.md") -Raw
    Assert-True (([regex]::Matches($claude, '<!-- adev:start -->')).Count -eq 1) "single managed section"
    Assert-True ($claude.Contains("A-Dev profile: standard")) "profile updated"
    Assert-True (-not $claude.Contains("Overlay test-overlay:")) "removed overlay no longer listed"
    Assert-True ($claude -match 'Keep me\.') "existing guidance preserved after update"

    Write-Host "- invalid input is rejected"
    $rejected = $false
    try { & $installer -AdevProfile reckless | Out-Null } catch { $rejected = $true }
    Assert-True $rejected "unknown profile rejected"
    $rejected = $false
    try { & $installer -Overlay (Join-Path $sandbox "missing") | Out-Null } catch { $rejected = $true }
    Assert-True $rejected "overlay without SKILL.md rejected"

    Write-Host "Install-ADev.ps1: PASS"
}
finally {
    foreach ($name in $saved.Keys) { Set-Item -Path "env:$name" -Value $saved[$name] -ErrorAction SilentlyContinue }
    if (Test-Path -LiteralPath $sandbox) { Remove-Item -LiteralPath $sandbox -Recurse -Force }
}
