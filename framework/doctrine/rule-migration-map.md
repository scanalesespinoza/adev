# Rule migration map

The former single-file doctrine (`framework/ADEV.md` at [`340f705`](https://github.com/scanalesespinoza/adev/blob/340f705/framework/ADEV.md)) mixed universal rules, defaults, practices, stack-specific lessons, and repository maintenance rules. This map shows where each rule now lives, so that downstream copies and reviewers can verify that nothing was dropped.

Legend: **Core n** is principle n in [`ADEV.md`](../ADEV.md#core-principles); **Flow n** is step n of its [default operating flow](../ADEV.md#default-operating-flow).

## Former non-negotiable rules

| Former | Now |
| --- | --- |
| 1 (atomic PR per iteration) | Core 3 |
| 1, second entry (scoped issue as source of truth) | Core 1 |
| 2 (PR only, no direct pushes) | Core 4 |
| 3 (atomic Conventional Commits) | Core 3 |
| 4 (do not mix change types) | Core 3 |
| 5 (prefer new canonical assets) | [Delivery defaults](../practices/delivery-defaults.md#design-judgment), design judgment 1 |
| 6 (claims map to evidence) | Core 6 |
| 7 (failures become durable assets) | Core 11 |
| 8 (English only) | Repository rule in [`AGENTS.md`](../../AGENTS.md); applies to the A-Dev canon, not to adopters |
| 9 (avoid parallel edits) | Core 2; [multi-agent collaboration](../practices/multi-agent-collaboration.md) 4 |
| 10 (no guessed workflows) | Core 6 |
| 11 (narrowest validation) | Core 5 |
| 12 (CI green before merge) | Core 4 |
| 13 (validate in production before the next iteration) | Core 5 |
| 14, 15 (versioning) | [Delivery defaults](../practices/delivery-defaults.md#versioning), versioning |
| 16 (follow through to deployment verification) | Core 5; Flow 8 |
| 17 (three-iteration rollout) | [Delivery defaults](../practices/delivery-defaults.md#incremental-rollout), incremental rollout |
| 18 (localization bundles) | [Web product overlay](../overlays/web-product.md#localization), localization 1 |
| 19 (batch delivery) | Core 3 |
| 20 (failures close with durable learning) | Core 11 |
| 21 (tests for views, copy, routes) | [Web product overlay](../overlays/web-product.md#tests), tests 1 |
| 22 (security review before PR) | Core 9 |
| 23, 24, 25 (marketing automation) | [Marketing automation overlay](../overlays/marketing-automation.md) 1, 2, 4 |
| 26, 27 (shared handoff workspace) | [Shared handoff overlay](../overlays/multi-agent-handoff.md) 1, 2, 5 |
| 28 (quality before approval) | Delivery defaults, pull requests 5 |
| 29 (auto-merge) | Delivery defaults, pull requests 6; now a default that also requires permission under Core 10 |
| 30 (draft PRs, issue lock, traceability) | Delivery defaults, pull requests 2 and 3; Core 1 |
| 31 (finish in a PR) | Delivery defaults, pull requests 1 |
| 32, 33 (post-merge cleanup) | Delivery defaults, branch hygiene 3 |
| 34, 35 (product focus) | Delivery defaults, product focus 1 and 2 |
| 36 (no private context required) | Core 13 |
| 37 (strongest material) | `AGENTS.md`, editorial positioning 3 |
| 38, 39 (sensitive data, neutral descriptors) | Core 8; [data protection](../practices/data-protection.md) 1 to 4 |
| 40, 41 (housekeeping, librarian) | Core 12 |
| 42, 43, 44 (technical debt, decisions, process patterns) | Delivery defaults, design judgment 2 to 4 |
| 45 (validate the end-user path) | Core 5 |
| 46, 47 (vendor-neutral canon) | Core 13 |
| 48 (fresh branch per change) | Core 3; delivery defaults, branch hygiene 2 |
| 49 (branch-per-change flow) | Core 3 and 4; Flow 1 to 8 |
| 50 (branch hygiene protocol) | Delivery defaults, branch hygiene 1 |

## Other former sections

| Former section | Now |
| --- | --- |
| Multi-agent collaboration 1 to 13 | [Multi-agent collaboration](../practices/multi-agent-collaboration.md) 1 to 13 |
| Multi-agent collaboration 14 (hourly context refresh) | [Shared handoff overlay](../overlays/multi-agent-handoff.md) 2 and 5; the example private path is generalized |
| Privacy and data protection 1 to 12 | [Data protection](../practices/data-protection.md) 1 to 12 |
| Stage model | `AGENTS.md`, framework stages; book work moved to [adev-book](https://github.com/scanalesespinoza/adev-book) |
| Operating flow 1 to 3 | Core 2; Flow 2 |
| Operating flow 4, 5 | Core 1 and 3; Flow 1 |
| Operating flow 5a, 22 (search before adding) | Core 12; Flow 3 |
| Operating flow 6 | Flow 4 |
| Operating flow 7, 8 (rollout, batch restore point) | Delivery defaults, incremental rollout |
| Operating flow 9 | Core 5; Flow 5 |
| Operating flow 10, 11 | Flow 7 |
| Operating flow 12, 20 (handoff updates) | Shared handoff overlay 3 and 4 |
| Operating flow 13 (PR content) | Delivery defaults, pull requests 4; Flow 7 |
| Operating flow 14 (auto-merge) | Delivery defaults, pull requests 6 |
| Operating flow 15 (monitor checks) | Core 4; Flow 8 |
| Operating flow 16 (validations before merge) | Delivery defaults, pull requests 5 |
| Operating flow 17 (quality gates in the delivery layer) | Delivery defaults, product focus 1 |
| Operating flow 18, 19 (verify, clean up) | Core 5; delivery defaults, branch hygiene 3; Flow 8 |
| Operating flow 21 (temporary artifacts) | Core 12; Flow 8 |
| Operating flow 23 (production failure) | Core 7 |
| Evidence rules 1, 6, 8, 9, 10, 11 | [Evidence rules](../evidence/README.md#evidence-rules) 1 to 6 |
| Evidence rules 2 to 5 (Homedir citations) | [Homedir overlay](../overlays/homedir.md#citing-homedir-evidence) 1 to 4 |
| Evidence rule 7 (starter-kit coverage) | `AGENTS.md`, working rules |
| Operational lessons 1, 2, 17 | [Operational lessons](../practices/operational-lessons.md#truthful-process), truthful process 1 to 3 |
| Operational lessons 3, 4, 5, 7, 14 | Operational lessons, verification 1 to 5 |
| Operational lessons 8, 20, 21 | Operational lessons, workstreams 1 to 3 |
| Operational lessons 12, 13 | Operational lessons, logging and security 1 and 2 |
| Operational lessons 6, 9, 10, 11, 16 | [Web product overlay](../overlays/web-product.md): visual identity; localization 2; tests 2 to 4 |
| Operational lesson 15 | Marketing automation overlay 3 |
| Operational lessons 18, 19, 22 to 26 | [Platform operations overlay](../overlays/platform-operations.md) |
| Homedir overlay | [Homedir overlay](../overlays/homedir.md#operating-in-homedir) |
| Editorial positioning | `AGENTS.md`, editorial positioning |

## Removed content

- Two evidence lines pointed to an author's private archive that readers cannot resolve. The rules they supported are preserved above.
- An example Windows path for external context roots is generalized.
