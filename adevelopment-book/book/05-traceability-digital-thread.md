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

## Worked example (from HomeDir)
- **Roadmap node (Why):** Persona wants a secure Google sign-in to join quests and link identity (see HomeDir docs → OAuth).
- **Plan (What):** Build Google OAuth flow with feature flag, keep GitHub link intact, no staging detour (Live Alpha behind flag).
- **Prompt (How):** "Add Google OAuth login using existing Simple Machine stack; reuse session/cache layer; add health check; respect baseline security."
- **Quality gates:** Build & tests on quarkus-app, security checks, manual UI check on `/login` with flag on, no regression on GitHub link.
- **Evidence:** Commit + CI run showing OAuth endpoints, flag configuration, and passing tests; baseline updated with the new guardrail.
- **Health checks:** Liveness `/q/health/live` and readiness `/health/ready` (10s probes, failureThreshold 3) included in the same change to align with Simple Machine standards.

**Key takeaway:** Traceability is built-in, not bolted-on; the plan → prompt → commit/tests chain is your portable audit trail.

**Apply in 20 minutes:** Create a simple timeline for your last change with timestamps and links; add it to your Sprint Log template.
