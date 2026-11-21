# A-Dev

A-Dev is a vendor-neutral practice for software delivery by people and agents working together. It gives agents and the professionals who direct them a baseline of good behavior: explicit intent, bounded autonomy, verified outcomes, and evidence that survives the session. It is designed to be adopted gradually and extended over time.

## Quick start

One command connects A-Dev to the coding agents on your machine (Claude Code, Codex, and agents that read `~/.agents/skills`). Requirements: Linux or macOS with `bash`, `git`, and `curl`.

```bash
curl -fsSL https://raw.githubusercontent.com/scanalesespinoza/adev/main/install/bootstrap.sh | bash
```

That clones A-Dev into the current directory, installs it with the `standard` profile, and adds the `adev` command to `~/.local/bin`. Start a new agent session and it works under A-Dev. Options go after `bash -s --`:

```bash
curl -fsSL https://raw.githubusercontent.com/scanalesespinoza/adev/main/install/bootstrap.sh | bash -s -- \
  --workspace "$HOME/workspace" \
  --profile guided \
  --overlay-repo https://github.com/<you>/<your-private-overlay>.git
```

| Option | Use it to |
| --- | --- |
| `--workspace PATH` | Choose where the repositories are cloned (default: the current directory) |
| `--profile guided\|standard\|autonomous` | Match the agent's autonomy to your experience; see [profiles](profiles/README.md) |
| `--overlay-repo URL` | Connect your private [personal overlay](starter-kit/personal-overlay/README.md), where your preferences and evidence live |

After installation, every agent session:

1. follows the [core doctrine](ADEV.md) and delivers each task to the [engineering baseline](practices/engineering-baseline.md), beyond what was asked and within scope;
2. behaves according to your [profile](profiles/README.md), so destructive and external actions always need your approval;
3. runs the [learning loop](skills/adev-learn/SKILL.md), so lessons from your work become evidence and candidate patterns.

Then use `adev doctor` to check the installation, `adev update` to stay current, `adev capture session --title "..."` to record evidence, and `adev uninstall` to disconnect. Details and Windows instructions are in the [installation guide](install/README.md).

## Use A-Dev without installing

For agents that cannot run the installer, such as cloud or web agents, or for a single task, paste this prompt at the start of the session. Replace the profile, and remove the overlay line if you do not have one.

```text
Work under A-Dev for this session. Source: https://github.com/scanalesespinoza/adev
(use a local checkout if one exists; otherwise read the files from GitHub).

Before doing anything else, read, in this order:
1. SKILL.md: how to apply A-Dev to a task.
2. ADEV.md: the 13 core principles. They apply to everything you do.
3. profiles/standard.md: the profile for this session (guided | standard | autonomous).
4. practices/engineering-baseline.md: the quality bar for every change.
5. overlays/README.md: then read only the overlays whose scope matches this task.

Then, for every task:
- Restate the outcome, acceptance criteria, scope, and what you are authorized to do.
  Ask if any of them is missing.
- Inspect before changing anything. Preserve work you did not create.
- Deliver at the engineering baseline: tests and edge cases, error handling, security,
  compatibility, rollback. Propose improvements outside the scope instead of doing them.
- Verify the result through the path a real user follows. Report what you verified,
  what you did not, and why.
- Never push, publish, deploy, merge, delete, or rewrite history without my explicit
  approval for that specific action. Loading A-Dev grants you no permission.
- My explicit instructions and the repository's own rules take precedence over A-Dev
  defaults. If they conflict with a core principle, stop and ask.

Before closing a meaningful task, and after any failure or correction, apply
skills/adev-learn/SKILL.md: list the lessons and record them as evidence in my overlay.
Overlay: https://github.com/<you>/<your-private-overlay> (read its SKILL.md at the start).
```

When A-Dev is installed, the managed guidance does all of this automatically. A one-line reminder is enough:

```text
Apply A-Dev (adev skill) to this task with the guided profile, and run the learning loop when you finish.
```

## Start here

| You are | Start with |
| --- | --- |
| A practitioner learning the practice | [`ADEV.md`](ADEV.md), the 13 core principles, then the [starter kit](starter-kit/README.md) |
| Setting up your agents to work this way | The [quick start](#quick-start), then choose a [baseline profile](profiles/README.md) |
| Keeping your own preferences and evidence | The [personal overlay template](starter-kit/personal-overlay/README.md) |
| Defining agent policies, authority, or skills | [Hardness](hardness/README.md) |
| Adapting A-Dev to a stack, product, or team | [Overlays](overlays/README.md) |
| Maintaining this repository | [`AGENTS.md`](AGENTS.md) |

## How A-Dev evolves

```text
your daily work ──> evidence in your private overlay ──> candidate patterns ──> A-Dev layers
   (agent runs the learning loop)        (adev capture)          (patterns/)     (overlay, practice, default, core)
```

Every task an agent closes with A-Dev connected can feed this loop. The [learning loop skill](skills/adev-learn/SKILL.md) records what happened, the [pattern lifecycle](patterns/README.md) decides what becomes shared practice, and the [engineering baseline](practices/engineering-baseline.md) is the standard every change is held to.

## How it is organized

A-Dev is layered so that the core stays small and everything else specializes it without weakening it. Conflicts are resolved with the [Hardness precedence model](hardness/01-policy-and-precedence.md#precedence).

| Layer | Purpose | Location | Status |
| --- | --- | --- | --- |
| Core | Principles that apply in every context | [`ADEV.md`](ADEV.md) | Normative |
| Hardness | Policy, precedence, authority, risk, and skill contracts for agents | [`hardness/`](hardness/README.md) | Normative where labeled as policy or contract |
| Profiles | Baseline autonomy and guidance: guided, standard, autonomous | [`profiles/`](profiles/README.md) | Normative invariants; selectable behavior |
| Overlays | Requirements scoped to a stack, product type, or workflow | [`overlays/`](overlays/README.md) | Normative within their declared scope |
| Patterns | Candidate lessons on their way into a layer | [`patterns/`](patterns/README.md) | Candidate; not normative |
| Practices | Defaults, the [engineering baseline](practices/engineering-baseline.md), and reusable guidance | [`practices/`](practices/README.md) | Guidance; defaults and the engineering baseline apply unless overridden with a rationale |
| Learning loop | Turns daily work into evidence, candidate patterns, and proposals to A-Dev | [`skills/adev-learn/`](skills/adev-learn/SKILL.md) | Skill |
| Implementation | Agent-consumable profiles, contracts, playbooks, and evaluations | [`implementation/`](implementation/README.md) | Reference contracts |
| Starter kit | Copyable templates, a minimal example, and the personal overlay template | [`starter-kit/`](starter-kit/README.md) | Guidance |
| Installer and CLI | `adev install`, `update`, `doctor`, `capture`, `uninstall` | [`install/`](install/README.md), [`bin/adev`](bin/adev) | Tooling |
| Knowledge and evidence | Case studies, evidence index, maturity model, definitions | [`docs/`](docs/index.md) | Evidence and explanation |

The book that explains the practice lives in [adev-book](https://github.com/scanalesespinoza/adev-book). It explains the practice; it does not replace the normative sources.

## Contribution rule

New lessons enter as [candidate patterns](patterns/README.md). Place a lesson in the narrowest layer that would have changed the outcome. Do not duplicate a rule across the core, a practice, an overlay, and the kit; link to a single source of truth. The [concept traceability matrix](docs/concept-traceability-matrix.md) shows where each core concept lives, and the [rule migration map](docs/rule-migration-map.md) traces the former single-file doctrine.

## License

[Apache License 2.0](LICENSE).
