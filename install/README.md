# Install A-Dev for your agents

Installing A-Dev connects it to the coding agents on your machine (Claude Code, Codex, and agents that read `~/.agents/skills`). After installation, every agent session:

- applies the A-Dev [core doctrine](../ADEV.md) and the [engineering baseline](../practices/engineering-baseline.md), so tasks are delivered at professional standard, beyond what was asked and within scope;
- behaves according to the selected [baseline profile](../profiles/README.md);
- loads your private [personal overlay](../starter-kit/personal-overlay/README.md), if you have one;
- runs the [learning loop](../skills/adev-learn/SKILL.md), so your daily work becomes evidence, candidate patterns, and proposals to A-Dev.

## Linux (and macOS)

Requirements: `bash`, `git`, and `curl`.

```bash
curl -fsSL https://raw.githubusercontent.com/scanalesespinoza/adev/main/install/bootstrap.sh \
  | bash -s -- --workspace "$HOME/workspace" --profile standard
```

With a personal overlay and a repository it references:

```bash
curl -fsSL https://raw.githubusercontent.com/scanalesespinoza/adev/main/install/bootstrap.sh \
  | bash -s -- --workspace "$HOME/workspace" --profile standard \
      --overlay-repo https://github.com/<you>/<your-overlay>.git \
      --repo https://github.com/<you>/<referenced-repo>.git
```

The bootstrap clones or fast-forwards each repository into the workspace, then runs `adev install`. It never replaces an existing checkout: a non-Git path, an unexpected `origin`, local changes, or a branch other than the default stop it.

The installer links the `adev` command into `~/.local/bin`. If that directory is not on your `PATH`, add it:

```bash
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
```

## The `adev` command

| Command | What it does |
| --- | --- |
| `adev install --profile P --overlay PATH...` | Registers the A-Dev skills and each overlay, writes one managed section (`<!-- adev:start -->` … `<!-- adev:end -->`) in `~/.claude/CLAUDE.md` and `~/.codex/AGENTS.md`, saves the settings, and links the command. Running it again replaces only that section. |
| `adev install ... --remove-section NAME` | Also removes another installer's `<!-- NAME:start -->` … `<!-- NAME:end -->` block, for migrations. |
| `adev update` | Fast-forwards A-Dev and each overlay when the checkout is clean and tracks a branch, then reinstalls with the saved profile and overlays. Checkouts with local changes are skipped and reported. |
| `adev doctor` | Checks skill links, managed guidance, the profile, overlays, the command, and upstream freshness. Exits non-zero on failure. |
| `adev capture daily` / `incident --title T` / `session --title T` | Creates a dated evidence record in your overlay from its template and adds it to `evidence/INDEX.md`. |
| `adev uninstall` | Removes the managed guidance, the skill links that point to A-Dev or your overlays, the command link, and the saved settings. Repositories and evidence are never deleted. |

Settings are stored in `~/.config/adev/config`. `CLAUDE_CONFIG_DIR`, `CODEX_HOME`, `AGENT_SKILLS_PATH`, `XDG_CONFIG_HOME`, and `ADEV_BIN_DIR` override the default locations. `install/install.sh` remains as a compatibility alias for `adev install`.

## Windows

From a clone of this repository:

```powershell
.\install\Install-ADev.ps1 -AdevProfile standard -Overlay ..\my-overlay
```

Skill locations are created as directory junctions. The Windows installer covers `install` only.

## What it does not do

Installing A-Dev grants an agent no permission. Publication, deployment, merges, and destructive operations still require the authority described in the [core doctrine](../ADEV.md#core-principles) and the selected profile. The learning loop records evidence in your overlay as part of the task; it opens pull requests to A-Dev only when you authorize it.

## Verify

```bash
install/test_install.sh   # installer compatibility, temporary home
install/test_adev.sh      # install, doctor, capture, update, uninstall with local Git remotes
```

Both tests run without network access and never touch your real home directory.
