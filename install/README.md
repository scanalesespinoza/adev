# Install A-Dev for your agents

The installer registers A-Dev as a skill for Claude Code, Codex, and agents that read `~/.agents/skills`, records a [baseline profile](../profiles/README.md), and optionally adds your own overlays. It writes one managed section, delimited by `<!-- adev:start -->` and `<!-- adev:end -->`, in Claude Code `CLAUDE.md` and Codex `AGENTS.md`. Unrelated configuration is preserved, and running it again replaces only that section.

## Linux and macOS

One command clones A-Dev into a workspace directory and installs it:

```bash
curl -fsSL https://raw.githubusercontent.com/scanalesespinoza/adev/main/install/bootstrap.sh \
  | bash -s -- --workspace "$HOME/workspace" --profile standard
```

Add your overlays, and any repository they reference, with repeatable options:

```bash
bash install/bootstrap.sh --workspace "$HOME/workspace" --profile autonomous \
  --overlay-repo https://github.com/<you>/<your-overlay>.git \
  --repo https://github.com/<you>/<referenced-repo>.git
```

The bootstrap never replaces an existing checkout: a non-Git path, an unexpected `origin`, local changes, or a branch other than the default stop it. From an existing checkout, run the installer directly:

```bash
install/install.sh --profile guided --overlay ../my-overlay
```

## Windows

From a clone of this repository:

```powershell
.\install\Install-ADev.ps1 -AdevProfile standard -Overlay ..\my-overlay
```

Skill locations are created as directory junctions.

## Options

| Option | Default | Effect |
| --- | --- | --- |
| `--profile` / `-AdevProfile` | `standard` | `guided`, `standard`, or `autonomous`; see [profiles](../profiles/README.md) |
| `--overlay PATH` / `-Overlay` | none | Registers a directory that contains a `SKILL.md` and loads it at the start of every session |
| `--overlay-repo URL` (bootstrap) | none | Clones or updates the repository, then registers it as an overlay |
| `--repo URL` (bootstrap) | none | Clones or updates a repository without registering it |
| `--ref` (bootstrap) | default branch | Branch or tag of A-Dev to check out on first clone |

`CLAUDE_CONFIG_DIR`, `CODEX_HOME`, and `AGENT_SKILLS_PATH` override the default locations.

## What it does not do

Installing A-Dev grants an agent no permission. Publication, deployment, merges, and destructive operations still require the authority described in the [core doctrine](../ADEV.md#core-principles) and the selected profile.

To create a private overlay with your working preferences and evidence, start from the [personal overlay template](../starter-kit/personal-overlay/README.md).

## Verify

```bash
install/test_install.sh
```

The test runs the installer against a temporary home directory without network access.
