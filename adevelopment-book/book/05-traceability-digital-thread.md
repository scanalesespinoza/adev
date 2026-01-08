# The digital thread

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

**Key takeaway:** Traceability is built-in, not bolted-on; the plan → prompt → commit/tests chain is your portable audit trail.

**Apply in 20 minutes:** Create a simple timeline for your last change with timestamps and links; add it to your Sprint Log template.
