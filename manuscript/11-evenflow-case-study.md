# EvenFlow: Frugal Live Alpha in 6 Weeks (reference case)

> This case is a reference for readers who want a concrete example. The A-Dev framework stands on its own; you can skip this if you only need the principles and starter kit.

## Context
- Need: full event platform for a real group (auth, speakers, schedule, notifications) in ~6 weeks, solo.
- Constraint: frugal stack; no heavy middleware or costly managed services; prefer SSR over complex SPA frameworks.
- Outcome: EvenFlow worked as the alpha experiment and its DNA became HomeDir.

## Plan and guardrails
- Live Alpha behind flags; default OFF until walkthrough + tests.
- Frugality: lean messaging/persistence, no enterprise bloat; SSR-first to avoid UI sprawl.
- Health checks always on (`/q/health/live`, `/health/ready`), probes cada 10s, failureThreshold 3.
- Baseline updates after failures; add constraints for auth/session and UI consistency.

## Evidence loop (50/50)
- Build (50%): implement auth + speaker management + schedule + notifications with flags.
- Verify (50%): run tests, probes green, manual walkthrough flag ON/OFF, rollback path ready.
- Evidence: plan → prompt → commit/tests → baseline guardrail updates.

## Lessons
- Governing the gap beats knowing every API: validation + flags keep velocity safe.
- Frugal constraints (no heavy middleware, SSR) reduce coordination tax and make handoff easier.
- Experiments feed the pathfinder: successful patterns from EvenFlow hardened into HomeDir.
