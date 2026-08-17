# Appendix A. Technical Assets

## From Book to Repository

The book explains why ADEV exists and how to make decisions within the practice. Technical assets turn those ideas into observable repository behavior.

They are not separate products. They form a system with distinct responsibilities:

- the **manuscript** teaches judgment, tensions, and limits;
- the **framework** preserves doctrine and portable contracts;
- the **starter kit** offers adaptable starting pieces;
- the **evidence** shows where claims come from;
- **project overlays** record the particular reality in which work is executed.

This appendix is a map, not a copy of those files. When they differ, always use the linked source and its current version.

## Authority Hierarchy

Not every document carries the same weight. Identify its category before applying an instruction:

| Surface | Function | Authority |
| --- | --- | --- |
| Doctrine | Durable principles and non-negotiable rules | Normative within its scope |
| Policy | Obligation with authority, priority, evidence, and exceptions | Normative in its declared scope |
| Overlay | Specialization for a repository, environment, or team | Locally normative; cannot weaken a higher rule |
| Skill | Contract for a bounded capability | Operational; acts only within granted authority |
| Practice and checklist | Repeatable guidance for applying doctrine | Advisory unless explicitly promoted to policy |
| Evidence and case | Artifact supporting an observation | Descriptive; does not create a rule by itself |
| Book | Explanation, teaching, and narrative | Interpretive; points to the technical canon |

The canonical entry point is [`ADEV.md`](../../../ADEV.md). From there, the agent locates applicable sources. A file closer to a task may specialize behavior, but should not silently contradict a higher-authority restriction.

When two rules appear incompatible, use the [policy and precedence model](../../../framework/hardness/01-policy-and-precedence.md). If a material conflict remains, stop the affected action and request a decision.

## Framework Map

The [`framework/`](../../../framework/) directory organizes the practice into canonical shelves.

### Doctrine

[Doctrine](../../../framework/doctrine/README.md) answers which principles govern ADEV. Its primary source is `ADEV.md`.

Use it to orient a new baseline, assess compatibility of local practices, identify non-negotiable delivery and evidence rules, and extract transferable lessons from a project. Stack, command, and environment preferences belong in overlays when they are only locally meaningful.

### Definitions

[Definitions](../../../framework/definitions/README.md) preserve shared distinctions among doctrine, policy, practice, skill, evidence, and overlay. Consult them when one word is being used for different objects. Precision prevents advice from becoming obligation or a particular case from becoming principle.

### Practices

[Practices](../../../framework/practices/README.md) are repeatable patterns, including the quality cycle, operating rituals, and first adoption path. Adapt them to risk. A practice becomes mandatory only when a policy or local baseline says so and defines how compliance is demonstrated.

### Evidence

The [evidence shelf](../../../framework/evidence/README.md) connects expectations, decisions, actions, validation, and reusable learning. Use it to trace claims, distinguish public artifacts from recollection, record metric boundaries, and decide whether an observation is ready for doctrine. Project-specific evidence can teach a pattern without requiring its implementation to be copied.

### Hardness

[`framework/hardness/`](../../../framework/hardness/) governs the agent-facing part of ADEV. Its central question is whether a person can anticipate and audit what an agent will do, under which authority, and with what evidence.

The recommended path is:

1. [Definition and scope](../../../framework/hardness/00-definition-and-scope.md).
2. [Policy and precedence](../../../framework/hardness/01-policy-and-precedence.md).
3. [Skill contract](../../../framework/hardness/02-skill-contract-template.md).
4. [Human expectations contract](../../../framework/hardness/03-human-expectations-contract.md).
5. [Action risk and authority model](../../../framework/hardness/04-action-risk-authority-model.md).
6. [Policy schema and fixtures](../../../framework/hardness/05-policy-schema-and-fixtures.md).
7. [Agent consumption guide](../../../framework/hardness/06-agent-consumption-guide.md).
8. [Compatibility layer](../../../framework/hardness/07-compatibility-layer.md).

Hardness is an emerging foundation, not a certification or guarantee of deterministic behavior.

## Which Asset to Use

| Need | Entry asset | Expected result |
| --- | --- | --- |
| Start ADEV in a repository | [`starter-kit/DAY_0.md`](../../../starter-kit/DAY_0.md) | Skeleton for context, work, and evidence |
| Seed a machine-readable baseline | [`starter-kit/BASELINE_template.json`](../../../starter-kit/BASELINE_template.json) | Adapted sources, non-negotiables, authority, and validation |
| Clarify an ambiguous request | [Expectations contract](../../../framework/hardness/03-human-expectations-contract.md) | Intent, scope, acceptance, uncertainty, and stop conditions |
| Decide whether an agent may act | [Authority model](../../../framework/hardness/04-action-risk-authority-model.md) | Effect class, approval, evidence, and escalation |
| Create a reusable capability | [Skill template](../../../framework/hardness/02-skill-contract-template.md) | Trigger, permissions, effects, invariants, and validation |
| Record a decision | [`starter-kit/DECISION_LOG.md`](../../../starter-kit/DECISION_LOG.md) | Rationale, alternatives, state, and future review |
| Prepare and review an iteration | [`starter-kit/QUALITY_CYCLE_checklist.md`](../../../starter-kit/QUALITY_CYCLE_checklist.md) | Proportional evidence across creation and verification |
| Learn from failure | [`starter-kit/OPERATING_RITUALS.md`](../../../starter-kit/OPERATING_RITUALS.md) | Classification, containment, and durable improvement |
| Complete the first week | [`starter-kit/FIRST_WEEK.md`](../../../starter-kit/FIRST_WEEK.md) | First closed cycle and improved baseline |
| Prepare the first delivery | [`starter-kit/FIRST_RELEASE.md`](../../../starter-kit/FIRST_RELEASE.md) | Traceability, verification, and recovery |
| Assess maturity | [`docs/adoption-maturity-model.md`](../../../docs/adoption-maturity-model.md) | Next missing capability, not certification |
| Support a claim | [`docs/evidence-index.md`](../../../docs/evidence-index.md) | Link among principle, proof, and asset |
| Record an unresolved question | [`docs/research-agenda.md`](../../../docs/research-agenda.md) | Hypothesis, required evidence, and provisional guardrail |

## Minimum Structure of an ADEV Repository

Names may vary. What matters is recognizable responsibilities and sources.

```text
repository/
├── ADEV.md                 # index of principles and sources
├── docs/
│   ├── product/            # people, problems, behaviors
│   ├── architecture/       # structural decisions and contracts
│   ├── quality/            # quality definition and validations
│   ├── security/           # data, threats, permissions, and controls
│   └── decisions/          # decisions and reviews
├── .github/ or equivalent/
│   ├── issue templates/    # intent and acceptance
│   └── workflows/          # independent evidence
└── code and tests
```

Do not create empty folders to simulate maturity. Link equivalent existing sources. If a definition required for the first change is absent, record the gap and resolve it within the smallest possible scope.

## Upstream Baseline and Local Overlay

`ADEV.md` in this repository is the upstream canon. An adopting project needs a local copy, reference, or adaptation explaining which upstream principles apply and which particular restrictions the project adds.

An overlay may include approved stack and versions, actual build and test commands, architecture paths, regulatory requirements, environments and gates, ownership and approvals, and rollback behavior. It should neither turn local details into general claims nor duplicate hundreds of lines when a stable link plus a brief specialization is enough.

When the upstream canon changes, review compatibility. Synchronization must not overwrite local decisions without evaluation.

## Skill Contracts

A skill is not merely a stored prompt. It is a capability contract. Before using or creating one, verify its purpose and triggers, exclusions, inputs and outputs, permitted files and tools, local or external effects, invariants, applicable policies, acceptable uncertainty, stop and escalation conditions, and evidence.

A skill cannot expand the authority granted by a person or weaken a higher policy. If it can perform an operation but the objective does not authorize it, it must abstain.

The repository includes a [read-only inspection skill](../../../framework/hardness/skills/adev-read-only-inspection/SKILL.md) as an initial reference. It is a reviewable example, not proof that every runtime behaves identically or a sufficient contract for write or publication effects.

## Policies and Structural Validation

The [policy schema](../../../framework/hardness/policy-schema.json) checks for fields such as authority, scope, precedence, evidence, owner, and review.

Structural validation answers whether a record has the expected form. It does not establish that the policy is correct, the runtime will enforce it, the agent will behave as expected, or operational evidence exists. Fixtures and local scripts detect incomplete contracts; behavioral evaluation and real observation supply the remaining layers.

## Evidence Without Sensitive Data

Useful evidence records objective and boundary, sources, decision and action, relevant diff or result, validation, uncertainty and failure, delivery or containment, and reusable learning.

It must not preserve secrets, credentials, personal information, customer data, or raw outputs containing sensitive information. Generalize people, organizations, and environments when detail is unnecessary to reproduce the pattern. A mutable repository link needs a commit, tag, or observation date when it supports a material claim.

## Copy, Adapt, or Link

- **Copy** when the asset must run or be edited inside the consuming repository.
- **Adapt** when the pattern is correct but needs local values, roles, or controls.
- **Link** when a canonical source exists and duplication would increase drift.

For example, copy and adapt a baseline seed; link an upstream definition; implement checks locally; and keep evidence near the system that produced it. Every copied asset creates a maintenance responsibility, so record origin or version when future synchronization matters.

## Preserve the Duality

When the book introduces a new practice, it should point to an applicable asset or declare that the asset is missing. When a technical asset materially changes an idea, review the manuscript, glossary, and evidence to avoid two versions of ADEV.

Duality is preserved through references, not duplication:

> **The book teaches. The framework governs. The kit starts. The project specializes. The evidence demonstrates.**

## Recommended Path

After finishing the book:

1. Follow [`starter-kit/DAY_0.md`](../../../starter-kit/DAY_0.md).
2. Copy and adapt [`starter-kit/BASELINE_template.json`](../../../starter-kit/BASELINE_template.json).
3. Compare your structure with the [minimal example](../../../starter-kit/examples/minimal-adev-loop/).
4. Define a request with the [expectations contract](../../../framework/hardness/03-human-expectations-contract.md).
5. Classify its effect with the [authority model](../../../framework/hardness/04-action-risk-authority-model.md).
6. Run the [quality cycle](../../../starter-kit/QUALITY_CYCLE_checklist.md).
7. Close the first delivery with [`FIRST_RELEASE.md`](../../../starter-kit/FIRST_RELEASE.md).
8. Record the learning on the appropriate shelf.

Do not install every asset on day one. Use the smallest piece that reduces real uncertainty, and add structure when execution demonstrates the need.
