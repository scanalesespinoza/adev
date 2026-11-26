# A-Dev

[![Validate](https://github.com/scanalesespinoza/adev/actions/workflows/validate-implementation.yml/badge.svg)](https://github.com/scanalesespinoza/adev/actions/workflows/validate-implementation.yml) [![Site](https://github.com/scanalesespinoza/adev/actions/workflows/deploy-site.yml/badge.svg)](https://scanalesespinoza.github.io/adev/) [![Release](https://img.shields.io/github/v/release/scanalesespinoza/adev)](https://github.com/scanalesespinoza/adev/releases/latest) [![License](https://img.shields.io/github/license/scanalesespinoza/adev)](LICENSE)

A-Dev makes the AI coding agents you already use, such as Claude Code or Codex, work the way a careful senior engineer would. They clarify the goal before changing anything, ask before risky actions, test and verify their work, and learn from mistakes. It is open, works with several agents, and you can adopt it step by step, whether you are a student or a professional team.

> **¿Hablas español?** Lee el [inicio rápido en español](docs/es/inicio-rapido.md). A-Dev se instala con un solo comando (abajo). Si eres estudiante o estás empezando con agentes, usa `--profile guided`: el agente te explica cada paso y te pide confirmación antes de cambiar archivos. El libro *ADEV: La práctica de AI Agentic Development* está en español en [adev-book](https://github.com/scanalesespinoza/adev-book/tree/main/adevelopment-book/book-es). La documentación del repositorio está en inglés.

## Quick start

Requirements: Linux or macOS with `bash`, `git`, and `curl`. Run it from a folder for tools, not from inside one of your projects:

```bash
mkdir -p ~/workspace && cd ~/workspace
curl -fsSL https://raw.githubusercontent.com/scanalesespinoza/adev/main/install/bootstrap.sh | bash
```

**New to coding agents, or a student?** Use the guided profile, so the agent explains its steps and asks before changing files:

```bash
curl -fsSL https://raw.githubusercontent.com/scanalesespinoza/adev/main/install/bootstrap.sh | bash -s -- --profile guided
```

Then open a new terminal and start a new agent session. Options go after `bash -s --`:

| Option | Use it to |
| --- | --- |
| `--profile guided\|standard\|autonomous` | Match the agent's autonomy to your experience (default: `standard`); see [profiles](profiles/README.md) |
| `--workspace PATH` | Choose where A-Dev is cloned (default: the current directory) |
| `--overlay-repo URL` | Connect your private [personal overlay](starter-kit/personal-overlay/README.md). Optional; you do not need one to start. |

Prefer to read the script first? Download it, inspect it, then run it: `curl -fsSLO https://raw.githubusercontent.com/scanalesespinoza/adev/main/install/bootstrap.sh && less bootstrap.sh && bash bootstrap.sh --profile guided`.

### What the installer changes

- Clones A-Dev into `./adev` (or `--workspace`).
- Adds a block of instructions between `<!-- adev:start -->` and `<!-- adev:end -->` to `~/.claude/CLAUDE.md` and `~/.codex/AGENTS.md`. It applies to **every** session of those agents. Your other content in those files is kept.
- Links A-Dev's skills into `~/.claude/skills`, `~/.codex/skills`, and `~/.agents/skills`.
- Adds the `adev` command to `~/.local/bin` and saves your choices in `~/.config/adev/config`.

It never grants the agent permission to push, publish, deploy, merge, or delete. Those always need your explicit approval.

**Undo:** `adev uninstall` removes the block, the skill links, the command, and the saved settings. It leaves the `adev/` folder and any line you added to your shell profile; delete those yourself if you want.

### What changes in a session

Asked to "help with assignment 2" in a course repository, with the guided profile, an agent working under A-Dev:

1. restates what the assignment asks and how it will be graded;
2. points out ambiguities before coding, for example whether a 3.95 average rounds up to a passing 4.0;
3. asks about the course's AI policy and whether you want hints, a review of your code, or code with explanations ([academic overlay](overlays/academic.md));
4. proposes a plan and waits for your answer before writing files;
5. tests and verifies its work, says what it did not verify, and ends with a checklist of what you should check and an honest AI-use declaration if your course needs one;
6. records what was learned in your personal overlay, if you have one ([learning loop](skills/adev-learn/SKILL.md)).

It does not create branches, push, or open pull requests unless you ask.

Day to day: `adev doctor` checks the installation, `adev update` keeps it current, and `adev capture session --title "..."` records evidence. Details and Windows instructions are in the [installation guide](install/README.md).

### Words you will see

**Profile:** how much the agent asks and explains. **Overlay:** extra rules for a context such as coursework or a web product. **Skill:** instructions an agent loads for a kind of task. **Personal overlay:** your private repository of preferences and evidence. **R0–R3:** risk levels of actions, from only reading (R0) to affecting things outside your machine (R3). All terms: [definitions](docs/definitions.md).

## Use A-Dev without installing

For agents that cannot run the installer, such as cloud or web agents, or for a single task, paste this prompt at the start of the session. Change the profile if you want, and remove the overlay line if you do not have one.

```text
Work under A-Dev for this session. Source: https://github.com/scanalesespinoza/adev
(use a local checkout if one exists; otherwise read the files from GitHub).

Before doing anything else, read, in this order:
1. SKILL.md: how to apply A-Dev to a task.
2. ADEV.md: the 13 core principles. They apply to everything you do.
3. profiles/standard.md: the profile for this session (guided | standard | autonomous).
4. practices/engineering-baseline.md: the quality bar for every change.
5. overlays/README.md: then read only the overlays whose scope matches this task
   (for coursework, overlays/academic.md).

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
Apply A-Dev (adev skill) to this task with the standard profile, and run the learning loop when you finish.
```

## Start here

| You are | Start with |
| --- | --- |
| A student or new to coding agents | The [quick start](#quick-start) with `--profile guided`, then the [academic overlay](overlays/academic.md) |
| Working on a group or team project | The [small team quick setup](practices/multi-agent-collaboration.md#small-team-quick-setup) |
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
