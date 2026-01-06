# Atomic Iterations (1–2 hours)

## Golden rule

The shorter the loop, the higher the quality. Working in 1–2 hour cycles keeps focus and reduces risk.

## Avoid context bloat

Huge definitions create drift and inconsistencies. Keep objectives small, verifiable, and well bounded.

## Typical structure

1. **Definition** → what you will do in this iteration.
2. **Implementation** → execute with discipline.
3. **Verification** → fast tests and reviews.
4. **Evidence** → commit + tests to close the loop.

## When things break
- Stop the line inside the same hour; there is no Plan B.
- Solve, then ask why it failed: unclear prompt, missing baseline rule, or tooling gap.
- Update the baseline immediately so the system cannot repeat the mistake.

---
**Key takeaway:** Tight loops reduce drift; every failure is fixed and converted into a baseline rule before moving on.

**Apply in 20 minutes:** Plan your next 1–2 hour sprint: write a three-line Definition, list the test you’ll run, and note where you’ll record the Evidence (commit + CI link).
