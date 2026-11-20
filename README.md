# A-Dev

A-Dev is a vendor-neutral practice for software delivery by people and agents working together. It gives agents and the professionals who direct them a baseline of good behavior: explicit intent, bounded autonomy, verified outcomes, and evidence that survives the session. It is designed to be adopted gradually and extended over time.

## Start here

| You are | Start with |
| --- | --- |
| A practitioner learning the practice | [`ADEV.md`](ADEV.md), the 13 core principles, then the [starter kit](starter-kit/README.md) |
| Setting up your agents to work this way | The [installer](install/README.md), then choose a [baseline profile](profiles/README.md) |
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
