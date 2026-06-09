# The realistic "Weekend Marathon"

EvenFlow was a series of weekend marathons disguised as a six-week sprint. The trick was not heroics; it was chaining 1–2 hour micro-sprints with zero carry-over debt. Each block had a Definition, an Orchestration burst, a Verification slot, and a 5-minute integration—repeated until the feature was live behind a flag.

Friday night started with a narrow scope and baseline links ready. Saturday was three to four atomic iterations: build, run, walkthrough, commit, baseline update if anything broke. Sunday hardened the work: demo assets, evidence timeline (plan → prompt → commit/tests), and one last pass to ensure flags/off paths stayed stable. There was never a Plan B; failures became lessons inside the same loop.

The cadence worked because the quality split was baked in. Half the time was creation, half verification. Health checks stayed on, flags kept risk contained, and the initial build-out of AI/infra on day one gave way to a frugal steady state once quality was proven. By the end of each weekend, the platform moved forward without debt.

## Format
Not long phases; **micro-sprints of 1–2 hours** chained with discipline.

## Plan A only
If something fails, fix it immediately, document it, and update the baseline. There is no Plan B because the learning is captured in the same loop.

## Weekend flow
- Friday night: choose one production-ready feature, narrow the scope, and collect baseline links/prompts.
- Saturday: run 3–4 atomic iterations; each closes with tests, a commit, and a baseline update if anything broke.
- Sunday: harden, add demo assets, and publish the evidence timeline (plan → prompt → commit/tests).
- 24-hour pattern: Definition (15m) → Orchestration (30–45m) → Verification (10–15m) → Integration (5m) repeated until done.
- Resource lifecycle: allow an initial build-out of AI/infra to scale quickly, then shift to a frugal steady state once quality is proven.
- Broad Quality Cycle built-in: each micro-sprint includes build → run → walkthrough so quality remains 50% of the effort.

**Key takeaway:** A weekend marathon is just disciplined micro-sprints with fast recovery and visible evidence.

**Apply in 20 minutes:** Draft your Friday-Saturday-Sunday plan with 3 iteration slots and the test you expect to close each one.
