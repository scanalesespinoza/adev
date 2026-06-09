# The digital thread

Traceability keeps the practitioner in control when AI output multiplies. From the first iteration, the chain must be explicit: feature → plan → prompt → commit/tests → baseline update. With that in place, drift is caught early, risky changes stay behind flags, and health checks confirm reality instead of guesses.

When a prompt tries to “help” by adding hidden complexity, the trail surfaces it. The plan and persona are linked; the commit carries the evidence; the baseline logs the new guardrail. Traceability is the contract that keeps the AI honest and the practitioner accountable.

The payoff: when work goes live behind flags, there is a clear path to roll back, prove intent, and show value. No “just trust me” — the digital thread is the proof of contribution.

## Traceability chain
Product Feature → Atomic Plan → Prompt → Commit/Test Evidence.

## Why it matters
It is not extra documentation: it is the **audit trail** produced by disciplined work. It proves decisions, quality, and security without artificial bureaucracy.

## How to display it
A simple timeline works: `[10:00] Define feature → [10:15] Prompt with baseline → [10:45] Generated files + tests → [11:00] CI pass → Commit ID linked to the feature`. This is the proof of contribution.

## Keep roadmap and iteration connected
- Maintain two levels: roadmap/strategy (personas, features) and iteration/action (atomic sprint tasks).
- Every iteration references its roadmap node, expected behavior, and test/verification plan.
- This prevents late-stage conflicts and protects previously fixed behaviors when new prompts run.
- Include persona links in each plan and prompt to keep the "why" explicit, not just the "what."

## Breadcrumbs / Pathfinder layout
- **Governance (baseline):** the DNA—non-negotiables and constraints (e.g., no heavy middleware, SSR-first).
- **Roadmap:** where the product is going and why (personas, features, success behaviors).
- **Constraints:** frugal guardrails and tech choices that keep the project viable.
- **Decision log:** short entries that capture the “why” with links to commits/flags/CI.

## Decision History: The Missing Link
Most projects only have the code. A-Dev adds the "Decision History": a simple log or folder where you record *why* you chose a path.
*Example*: `[2024-10-15] Refused Redis -> using in-memory with file backup. Why? Project is <1000 users, Redis adds $20/mo and maintenance. Evidence: Commit 8a7b9c.`
This stops the "why did we do this?" loop that kills momentum six months later.
Organize these folders so any orchestrator can understand the constraints within minutes and continue the work without “seniority tax.”

**Key takeaway:** Traceability is built-in, not bolted-on; the plan → prompt → commit/tests chain is your portable audit trail.

**Apply in 20 minutes:** Create a simple timeline for your last change with timestamps and links; add it to your Sprint Log template.
