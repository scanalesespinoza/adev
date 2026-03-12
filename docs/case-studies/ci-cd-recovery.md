# CI/CD Recovery Is Part of Delivery

## Context
- Homedir work repeatedly hit failures in the transition between local changes, PR validation, image publication, and production deployment.
- These failures were not side quests. They were part of the real delivery path.

## Failure pattern
Typical failure signals included:
- failing GitHub checks,
- deploy workflows missing or misrouting image references,
- container/runtime mismatch after a seemingly successful build,
- nginx or runtime configuration drift masking the real application state.

## Decision
- Treat CI/CD breakage as first-class product work.
- Stop new feature iteration until the delivery path is trustworthy again.
- Capture the fix as a reusable rule, not as a one-time rescue.

## Evidence-derived guardrails
- A change is not done if the build passes but the deployment path is ambiguous.
- Image provenance must be explicit from build to runtime.
- Production verification must confirm the expected user surface, not just process liveness.
- Delivery documentation must match the actual repo flow; guessed deploy stories create repeat failures.

## Reusable lesson
A-Dev is not only about producing code faster. It is about preserving a trustworthy path from change to running system. If CI/CD is brittle, the framework has not finished the iteration.
