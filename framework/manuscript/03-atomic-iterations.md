# Atomic Iterations (1–2 hours)

EvenFlow was built as chained atomic iterations. Day 1 started with nothing but a roadmap node, a persona, and a three-line definition. Each 1–2 hour loop forced discipline: tight scope, SSR-first, flags default OFF, probes ON. The AI could generate a lot; the architect insisted on evidence before moving on.

In practice, every micro-cycle followed the same rhythm: define, orchestrate, verify, integrate. The prompt was precise, the baseline was non-negotiable, and the 50/50 rule kept creation and verification balanced. When something broke, the line stopped and the baseline gained a new guardrail before the next loop started.

By the end of a weekend, this cadence turned into a marathon of high-density contribution: multiple increments live behind flags, tests green, rollback trivial. Even with one architect, the system behaved like a disciplined team because each iteration closed with proof, not hope.

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

## 24-hour A-Dev marathon blueprint
- **Definition (15 min):** Translate the product feature into a precise prompt. Keep context tight to avoid bloat.
- **Orchestration (30–45 min):** Direct AI assistants with your baseline (security, coding standards, quality gates).
- **Verification (10–15 min):** Run tests and security checks immediately; never pass a failed iteration.
- **Integration (5 min):** Update the baseline with the lesson learned and merge the commit.
Key takeaway for audiences: disciplined micro-cycles turn a weekend into high-density contribution.

## Two-level command structure
- **High-level plan (roadmap & strategy):** Ties to personas and product goals; keeps micro-iterations aligned.
- **Middle-level command (iteration & action):** Breaks the roadmap into atomic sprints with explicit quality gates.
This hierarchy preserves traceability from roadmap to task to verification.

**Key takeaway:** Tight loops reduce drift; every failure is fixed and converted into a baseline rule before moving on.

**Apply in 20 minutes:** Plan your next 1–2 hour sprint: write a three-line Definition, list the test you’ll run, and note where you’ll record the Evidence (commit + CI link).
