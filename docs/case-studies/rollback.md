# Rollback Contained in the Same Hour

## Context
- A change threatened a long rollback window (regression risk on auth/session).
- Baseline rule: “Stop the line; fix in the same hour; no Plan B.”

## Decision
- Pause new prompts, keep the change behind a flag, and diagnose inside the same iteration.
- Add the failing scenario to the baseline and tighten the prompt context before retrying.

## Guardrails
- Living baseline update is mandatory after any failure.
- Traceability chain stays intact: roadmap node → prompt → failing evidence → fixed commit/CI.
- Health checks stay enabled during investigation to ensure the service never goes dark.

## Outcome
- Regression was contained behind the flag; GitHub and existing flows stayed live.
- Baseline gained a new rule for auth/session changes (include health probes + UI walkthrough before merge).
- Recovery proof captured in the evidence timeline.

## Lessons
- Short loops (1–2h) turn rollbacks into quick, documented recoveries.
- Baseline-first thinking prevents the same regression from resurfacing.
- Feature flags are the safety net when prompts misbehave. 

## Evidence status
- Type: distilled operational narrative from HomeDir (author-attributed).
- Related artifacts: the codified "stop and fix" flow survives as [`.agent/workflows/production_fix_cycle.md`](https://github.com/scanalesespinoza/homedir/blob/1853d66110629541e8f7b7b8f1dfae05c3fece07/.agent/workflows/production_fix_cycle.md).
- Gap: the specific regression, flag, and fixing commit are not linked; the same-hour window claim is narrative.
