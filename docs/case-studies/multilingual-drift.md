# Multilingual Drift Is Product Debt

## Context
- Homedir repeatedly exposed English-only fragments in Spanish flows, especially in edge pages, admin views, profile panels, and event timelines.
- The issue was not translation volume. It was discipline drift.

## Failure pattern
Visible symptoms included:
- hardcoded labels in templates,
- mixed-language panels after otherwise correct locale selection,
- partial localization in new initiative surfaces such as CFP, volunteers, and speaker flows.

## Decision
- Treat multilingual support as a product invariant, not a final pass.
- Audit touched surfaces for visible text whenever a feature changes.
- Move copy into language resources instead of accepting temporary hardcoded shortcuts.

## Evidence-derived guardrails
- If the project claims multilingual support, every visible string is product code.
- Edge views and admin surfaces deserve the same language rigor as landing pages.
- "Temporary" hardcoded text becomes long-lived debt unless blocked early.

## Reusable lesson
Localization drift is a verification failure, not a cosmetic issue. It weakens trust and signals that the delivery system is not yet coherent across its own surfaces.

## Evidence status
- Type: distilled operational narrative from HomeDir (author-attributed).
- Related artifacts: HomeDir ships bilingual docs under [`docs/en/`](https://github.com/scanalesespinoza/homedir/tree/1853d66110629541e8f7b7b8f1dfae05c3fece07/docs/en) and [`docs/es/`](https://github.com/scanalesespinoza/homedir/tree/1853d66110629541e8f7b7b8f1dfae05c3fece07/docs/es); no message-bundle files exist in the tree at `1853d66`.
- Gap: the specific mixed-language views and their fixing commits are not linked; treat as attributed narrative pending artifact-level evidence.
