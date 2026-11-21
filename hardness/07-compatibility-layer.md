# Hardness Compatibility Layer

This specification lets an implementation runtime adapt A-Dev Hardness and does not make A-Dev depend on that runtime. It is not an industry standard, a certification program, or a claim of official support by any agent project or foundation.

## Separation of responsibilities

| Surface | Responsibility | Does not do |
| --- | --- | --- |
| A-Dev canon | States doctrine, evidence boundaries, and durable constraints. | Depend on a runtime convention. |
| Hardness portable contract | Defines portable policy, skill, expectation, risk, and evaluation semantics. | Implement execution or grant permissions. |
| Runtime adaptation profile | Maps portable semantics to a runtime's files, tools, prompts, or controls. | Redefine or weaken the canon. |
| Runtime implementation | Enforces, presents, or automates the adapted behavior. | Claim A-Dev conformance without the minimum checks below. |

## Portable contract

- **Policy:** use stable IDs, scope, authority, precedence, exceptions, owner, review, expiry, and evidence requirements as defined by the [policy schema](policy-schema.json) and [policy model](01-policy-and-precedence.md).
- **Skill:** preserve purpose, triggers, non-triggers, inputs, outputs, permissions, side effects, invariants, policy references, uncertainty, stop/escalate, evidence, and validation from the [skill contract](02-skill-contract-template.md).
- **Evaluation:** describe a scenario, applicable policy, expected decision, required evidence, and safe failure boundary. Synthetic evaluations do not prove a runtime's behavior.
- **Human expectation:** capture intent, constraints, authority, non-goals, acceptance criteria, uncertainty, and stop conditions using the [expectations contract](03-human-expectations-contract.md).

## Adaptation profiles

An adaptation profile maps the portable contract to one runtime convention. Profiles are compatibility notes, not dependencies or endorsements.

- [SKILL.md convention profile](compatibility/skill-md-profile.md): a reference profile for folder-based skills with `SKILL.md`; it is compatible and non-exclusive.
- [Runtime profile template](compatibility/runtime-profile-template.md): use this structure for a future runtime without changing portable semantics.
- [Portability matrix](compatibility/portability-matrix.md): identifies what must be preserved, may be adapted, or remains out of scope.

## Minimum conformity

A runtime adaptation is minimally conformant only when it:

1. identifies the A-Dev canon and does not silently override higher policy;
2. preserves the portable policy and skill fields or records an explicit, reviewable mapping gap;
3. classifies effects and maintains approval and stop boundaries from the [action risk model](04-action-risk-authority-model.md);
4. records evidence and uncertainty without turning synthetic fixtures into operational proof; and
5. passes the local [conformance checklist](compatibility/conformance-checklist.md).

Use the [agent consumption guide](06-agent-consumption-guide.md) to choose a skill before applying an adaptation profile.
