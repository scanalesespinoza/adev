[CmdletBinding()]
param(
    [ValidateSet("guided", "standard", "autonomous")]
    [string]$AdevProfile = "standard",
    [string[]]$Overlay = @(),
    [string]$CodexHomePath = $(if ($env:CODEX_HOME) { $env:CODEX_HOME } else { Join-Path $env:USERPROFILE ".codex" }),
    [string]$ClaudeHomePath = $(if ($env:CLAUDE_CONFIG_DIR) { $env:CLAUDE_CONFIG_DIR } else { Join-Path $env:USERPROFILE ".claude" }),
    [string]$AgentSkillsPath = $(if ($env:AGENT_SKILLS_PATH) { $env:AGENT_SKILLS_PATH } else { Join-Path $env:USERPROFILE ".agents\skills" })
)

# Registers A-Dev, a baseline profile, and optional overlays for local coding agents.
# Windows counterpart of install.sh; skill locations are created as directory junctions.

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$startMarker = "<!-- adev:start -->"
$endMarker = "<!-- adev:end -->"

function Get-NormalizedPath {
    param([Parameter(Mandatory = $true)][string]$Path)
    return [System.IO.Path]::GetFullPath($Path).TrimEnd([System.IO.Path]::DirectorySeparatorChar, [System.IO.Path]::AltDirectorySeparatorChar)
}

function Get-SkillName {
    param([Parameter(Mandatory = $true)][string]$Root)
    $lines = Get-Content -LiteralPath (Join-Path $Root "SKILL.md")
    $fences = 0
    foreach ($line in $lines) {
        if ($line -eq "---") { $fences++; continue }
        if ($fences -eq 1 -and $line -match '^name:\s*(\S+)\s*$') {
            $name = $Matches[1]
            if ($name -notmatch '^[a-z0-9][a-z0-9-]*$') { break }
            return $name
        }
    }
    throw "SKILL.md in $Root needs a frontmatter name of lowercase letters, digits, and hyphens."
}

function Register-SkillLink {
    param(
        [Parameter(Mandatory = $true)][string]$Source,
        [Parameter(Mandatory = $true)][string]$Destination
    )
    New-Item -ItemType Directory -Path (Split-Path -Parent $Destination) -Force | Out-Null
    if (Test-Path -LiteralPath $Destination) {
        $item = Get-Item -LiteralPath $Destination -Force
        $target = if ($item.PSObject.Properties.Name -contains "Target" -and $item.Target) { @($item.Target)[0] } else { $null }
        if ($target -and (Get-NormalizedPath $target) -eq $Source) {
            Write-Host "Skill already registered: $Destination"
        }
        else {
            Write-Warning "Kept existing skill location: $Destination"
        }
        return
    }
    New-Item -ItemType Junction -Path $Destination -Value $Source | Out-Null
    Write-Host "Registered skill: $Destination -> $Source"
}

function Register-Skill {
    param([string]$Source, [string]$Name)
    Register-SkillLink -Source $Source -Destination (Join-Path $AgentSkillsPath $Name)
    Register-SkillLink -Source $Source -Destination (Join-Path $CodexHomePath "skills\$Name")
    Register-SkillLink -Source $Source -Destination (Join-Path $ClaudeHomePath "skills\$Name")
}

function Update-ManagedGuidance {
    param(
        [Parameter(Mandatory = $true)][string]$Path,
        [Parameter(Mandatory = $true)][string]$Section
    )
    $existing = if (Test-Path -LiteralPath $Path) { Get-Content -LiteralPath $Path -Raw } else { "" }
    if ($null -eq $existing) { $existing = "" }
    $pattern = [regex]::new([regex]::Escape($startMarker) + ".*?" + [regex]::Escape($endMarker), [System.Text.RegularExpressions.RegexOptions]::Singleline)
    if ($pattern.IsMatch($existing)) {
        $updated = $pattern.Replace($existing, { param($m) $Section }, 1)
    }
    elseif ([string]::IsNullOrWhiteSpace($existing)) {
        $updated = "$Section`n"
    }
    else {
        $updated = $existing.TrimEnd() + "`n`n$Section`n"
    }
    New-Item -ItemType Directory -Path (Split-Path -Parent $Path) -Force | Out-Null
    [System.IO.File]::WriteAllText($Path, $updated, [System.Text.UTF8Encoding]::new($false))
    Write-Host "Updated managed agent guidance: $Path"
    if ($updated -match '-context:start -->') {
        Write-Warning "$Path also contains a section managed by another installer; review it for duplicate guidance."
    }
}

$adevRoot = Get-NormalizedPath (Split-Path -Parent $PSScriptRoot)
$adevSkill = Join-Path $adevRoot "SKILL.md"
$profileFile = Join-Path $adevRoot "profiles\$AdevProfile.md"
Register-Skill -Source $adevRoot -Name (Get-SkillName $adevRoot)
foreach ($bundled in Get-ChildItem -LiteralPath (Join-Path $adevRoot "skills") -Directory -ErrorAction SilentlyContinue) {
    if (Test-Path -LiteralPath (Join-Path $bundled.FullName "SKILL.md")) {
        Register-Skill -Source $bundled.FullName -Name (Get-SkillName $bundled.FullName)
    }
}
$engineeringBaseline = Join-Path $adevRoot "practices\engineering-baseline.md"
$learningSkill = Join-Path $adevRoot "skills\adev-learn\SKILL.md"
$firstOverlayName = $null

$lines = @(
    $startMarker,
    "# A-Dev",
    "",
    "- For software-delivery work, read and apply $adevSkill within the authorized scope.",
    "- Apply the engineering baseline ($engineeringBaseline) to every change: deliver the requested outcome at professional standard, beyond what was asked and within scope, unless an applicable overlay narrows it (in coursework, the academic overlay: implement only what the assignment asks and offer extras as optional suggestions).",
    "- A-Dev profile: $AdevProfile ($profileFile). A more specific declaration in the task or repository takes precedence."
)

foreach ($path in $Overlay) {
    $overlayRoot = Get-NormalizedPath $path
    if (-not (Test-Path -LiteralPath (Join-Path $overlayRoot "SKILL.md"))) {
        throw "Overlay has no SKILL.md: $path"
    }
    $name = Get-SkillName $overlayRoot
    Register-Skill -Source $overlayRoot -Name $name
    if (-not $firstOverlayName) { $firstOverlayName = $name }
    $lines += "- Overlay ${name}: at the beginning of every session, read $(Join-Path $overlayRoot 'SKILL.md') and follow its startup procedure."
}

if ($firstOverlayName) {
    $lines += "- Learning loop: before your final message in any turn where you changed files, fixed a mistake, or learned something non-obvious, even if you end with a question, apply $learningSkill and record evidence in overlay $firstOverlayName."
}
else {
    $lines += "- Learning loop: before your final message in any turn where you changed files, fixed a mistake, or learned something non-obvious, even if you end with a question, apply $learningSkill."
}
$lines += "- Loading this guidance does not authorize remote writes, deployment, or destructive operations."
$lines += $endMarker
$section = $lines -join "`n"

Update-ManagedGuidance -Path (Join-Path $CodexHomePath "AGENTS.md") -Section $section
Update-ManagedGuidance -Path (Join-Path $ClaudeHomePath "CLAUDE.md") -Section $section
Write-Host "Restart Claude Code and Codex, or begin new sessions, to load the updated guidance."
