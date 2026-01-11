# EvenFlow to HomeDir (Origin Experiment → Pathfinder)

## Context
- Need: full event management (auth, speakers, schedule, notifications) for a real group in ~6 weeks.
- Constraint: solo build, frugal stack; no heavy middleware or expensive tooling.
- Outcome: EvenFlow worked as the alpha experiment and its DNA became the foundation for HomeDir.

## Decision
- Reject heavy/enterprise middleware and costly managed services; build lean messaging/persistence.
- Prefer server-side rendering and simple components over complex client-side frameworks.
- Keep everything behind clear guardrails (baseline + flags) to move fast without hidden debt.

## Guardrails
- Frugality first: only dependencies that fit budget and operational simplicity.
- Live Alpha: ship increments behind flags; keep default paths stable.
- Baseline updates after every failure; add constraints for auth/session and UI consistency.
- Health probes stay on (`/q/health/live`, `/health/ready`) across iterations.

## Outcome
- Auth + speaker management + schedule + notification flow delivered in ~1.5 months by one orchestrator.
- Baseline enriched with “no heavy middleware” and “SSR-first” rules; reusable in HomeDir.
- Evidence captured via plan → prompt → commit/tests; rollback paths stayed trivial through flags.

## Lessons
- Governing the gap beats knowing every API: validation (50/50) + flags keep velocity safe.
- Frugal constraints (no bloat, SSR) reduce coordination tax and make handoff easier.
- Experiments feed the Pathfinder: successful patterns from EvenFlow became HomeDir standards.
