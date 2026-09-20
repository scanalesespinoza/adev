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

## Evidence status
- Type: distilled operational narrative from HomeDir (author-attributed); not a linked incident report.
- Related artifacts: [`.agent/workflows/full_release_cycle.md`](https://github.com/scanalesespinoza/homedir/blob/1853d66110629541e8f7b7b8f1dfae05c3fece07/.agent/workflows/full_release_cycle.md), [`.agent/workflows/production_verification.md`](https://github.com/scanalesespinoza/homedir/blob/1853d66110629541e8f7b7b8f1dfae05c3fece07/.agent/workflows/production_verification.md), [`.github/workflows/pr-check.yml`](https://github.com/scanalesespinoza/homedir/blob/1853d66110629541e8f7b7b8f1dfae05c3fece07/.github/workflows/pr-check.yml), [`RELEASE_GATES.md`](https://github.com/scanalesespinoza/homedir/blob/a2baac07fc60f025ebcb9aab7c5f794928cbd831/config/docs/governance/RELEASE_GATES.md).
- Gap: the specific failing runs and fixing commits are not linked; treat the narrative as attributed history until artifact-level links are added.
