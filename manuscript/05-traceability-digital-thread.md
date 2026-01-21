# The digital thread

At the start of EvenFlow, every change could have been lost in the AI flood: prompts spitting files, behaviors drifting, and no proof of how we got there. Traceability turned that chaos into an audit trail the architect could trust. Day 1, the chain was explicit: feature → plan → prompt → commit/tests → baseline update. Day 45, the chain was muscle memory and the reason HomeDir could harden without fear.

When a prompt tried to “help” by adding hidden complexity, the trail caught it. The plan and persona were linked; the commit carried the evidence; the baseline logged the new guardrail. Flags kept risky flows off by default, and health checks stayed on to confirm reality, not guesses. Traceability was the contract that kept the AI honest and the architect in control.

The payoff: when the platform went live behind flags, there was a clear path to roll back, prove intent, and show value. No “just trust me” — the digital thread was the proof of contribution.

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

## Decision history (template + examples)
- **Template:** Date → Decision → Options considered → Rationale (persona + baseline) → Evidence (commit/CI/flag) → Follow-up guardrail.
- **Example 1:** Live Alpha for OAuth behind a feature flag instead of staging. *Rationale:* avoid drift and keep GitHub login stable. *Evidence:* plan → prompt → commit with flag + probes; baseline updated. *Follow-up:* add UI walkthrough to the 50/50 when touching `/login`.
- **Example 2:** Health checks baked into every deploy (liveness `/q/health/live`, readiness `/health/ready`). *Rationale:* Simple Machine standards and “no dark launches.” *Evidence:* probes enabled with 10s interval, failureThreshold 3 in manifests; baseline rule added. *Follow-up:* keep probes on during rollbacks to confirm service health.

## Breadcrumbs / Pathfinder layout
- **Governance (baseline):** the DNA—non-negotiables and constraints (e.g., no heavy middleware, SSR-first).
- **Roadmap:** where the product is going and why (personas, features, success behaviors).
- **Constraints:** frugal guardrails and tech choices that keep the project viable.
- **Decision log:** short entries that capture the “why” with links to commits/flags/CI.
Organize these folders so any orchestrator can understand the constraints within minutes and continue the work without “seniority tax.”

**Key takeaway:** Traceability is built-in, not bolted-on; the plan → prompt → commit/tests chain is your portable audit trail.

**Apply in 20 minutes:** Create a simple timeline for your last change with timestamps and links; add it to your Sprint Log template.
