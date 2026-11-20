# Performance Work Must Start With Comparable Evidence

## Context
- Homedir performance concerns around Community content and featured snapshots created pressure for broad redesign.
- Later measurement showed the dominant risk was narrower: shared-origin rate limiting and request patterns, not a universal platform regression.

## Failure pattern
Observed signals included:
- concentrated 429 responses on `/api/community/content`,
- higher p95 under shared-origin scenarios,
- weak evidence that the originally suspected subsystem was the real dominant cause.

## Decision
- Compare scenarios that are actually comparable.
- Rank fixes by measured impact before redesigning architecture.
- State uncertainty when fixtures or production-like runtime are incomplete.

## Evidence-derived guardrails
- Always compare against a concrete baseline scenario or commit.
- Measure latency, error rate, and request pattern before declaring the root cause.
- Prioritize the highest-leverage proven fix first.
- A pretty theory does not outrank direct evidence.

## Reusable lesson
A-Dev is pro-optimization only when optimization is evidence-backed. The framework becomes stronger when it resists dramatic redesign until the measurements justify it.
