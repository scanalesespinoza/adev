# Checklists

## Before merging
- Do tests pass (locally and CI)?
- Is it simple enough to explain at 3 AM?
- Does it follow the baseline structure and naming?
- Does it meet minimum security expectations?
- Is traceability in place (plan → prompt → commit/tests)?
- If something broke, was the lesson added to the baseline?

## Starter kit in 10 minutes
- Create `BASELINE.md` with the five non-negotiables, frugality guardrails, and “no heavy middleware/SSR-first” note.
- Create `ROADMAP.md` with personas, two-level plan (roadmap → iteration), and success behaviors.
- Create `prompts/` with a prompt skeleton referencing baseline + roadmap node + quality gates.
- Add `decision-log.md` with one example entry (date, decision, rationale, evidence link, baseline update).
- Add `health-checks.md` or config snippet with `/q/health/live` and `/health/ready`, probes 10s, failureThreshold 3.
- Add a feature flag plan: default OFF, describe ON/OFF behavior and rollback path.
- Run one 50/50 iteration: scope in/out, prompt, build, run tests, walkthrough, evidence (commit/CI), update baseline.
