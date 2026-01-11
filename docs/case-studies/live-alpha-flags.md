# Live Alpha with Feature Flags

## Context
- A-Dev favors “Live Alpha” over heavy staging to avoid drift and hidden debt.
- Need to ship new behaviors fast without risking the primary user path.

## Decision
- Gate every new capability behind a feature flag and keep defaults OFF until walkthrough + tests pass.
- Treat flags as architecture: part of the prompt context, part of the baseline, part of the evidence.

## Guardrails
- Quality gates: build/tests + manual walkthrough when the flag is ON; verify legacy path with the flag OFF.
- Health probes (`/q/health/live`, `/health/ready`) stay active across both paths.
- Resource bounds stay small (e.g., requests ~50m CPU/52Mi RAM, burst up to 4 CPU/1Gi) to keep “rampage → steady state” predictable.
- Baseline reminders: avoid inline scripts or UI drift; keep the look & feel consistent when toggling.

## Outcome
- New features reach users sooner with controlled exposure; no staging sync tax.
- Evidence chain (plan → prompt → commit/tests) includes the flag configuration so future prompts stay consistent.
- Flags make rollback trivial: disable, fix, update baseline, re-enable.

## Lessons
- Feature flags are the cheapest insurance against AI-induced regressions.
- Keeping probes and resources steady across flag states avoids “it works only in staging.”
- Documenting flag behavior in the baseline prevents future prompt drift. 
