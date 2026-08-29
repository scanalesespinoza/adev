# A-Dev Evidence Index

This page maps A-Dev principles to concrete proof sources and canonical assets. The doctrine stays neutral; the evidence stays specific.

Primary raw source stream: local Codex CLI work on Homedir from late 2025 through March 2026. Those transcripts are not the product; they are the evidence reservoir. The goal of this index is to surface the reusable doctrine extracted from that reservoir.

## Evidence map
| Principle | What the evidence proves | Canonical asset |
| --- | --- | --- |
| Living baseline | Repeated failures produced new operating rules instead of tribal memory. | [`ADEV.md` operational lessons](../ADEV.md#operational-lessons-consolidated-from-homedir) |
| Live Alpha behind flags | New capability work moved faster and safer when guarded by flags instead of heavy staging. | `docs/case-studies/live-alpha-flags.md` |
| Stop the line in the same hour | Regressions were contained when the iteration paused and recovery happened before new work resumed. | `docs/case-studies/rollback.md` |
| CI/CD recovery is part of delivery | Failing checks, broken deploy steps, and image-flow mismatches needed the same rigor as feature work. | `docs/case-studies/ci-cd-recovery.md` |
| Multilingual means no hardcoded UI copy | Drift appeared first in edge views, admin flows, and timeline surfaces. | `docs/case-studies/multilingual-drift.md` |
| Optimize only with evidence | Performance work improved once rate limiting and request origin patterns were measured instead of guessed. | `docs/case-studies/performance-evidence.md` |
| Backup is not done until restore works | Backup and DR only became trustworthy after restore compatibility and retention rules were validated. | `docs/case-studies/disaster-recovery.md` |
| Homedir is proof, not doctrine | The framework gains power when product history is converted into reusable rules and teaching assets. | `publishing-kit/11-homedir-derived-maturity-map.md` |
| Operational repetition requires outcome evidence | Aggregated command histories expose navigation, continuity, preflight, authority, and retry friction, but frequency without reliable outcomes cannot establish success. | [`Operational workflow telemetry`](evidence/operational-workflow-telemetry.md) and [`starter-kit/OPERATING_RITUALS.md`](../starter-kit/OPERATING_RITUALS.md) |

## What still needs canonization
- Admin/public UX divergence as its own case study.
- A single public document that links principle -> evidence -> starter-kit action.
- Stage 2 adoption rituals for day 0, first week, and first release.
- Stronger manuscript references from chapters to the evidence assets listed above.

## Use rule
If a future lesson from Homedir cannot be traced to one of the rows above, either add a new canonical asset or update an existing one. Do not leave important proof trapped in execution history.

For the practice architecture and the evidence shelf, see [`framework/evidence/README.md`](../framework/evidence/README.md). For the emerging agent-governance evidence chain, see [`framework/hardness/README.md`](../framework/hardness/README.md).
