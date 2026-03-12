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
