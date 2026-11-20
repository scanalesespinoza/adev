# Quest Board Login (Live Alpha)

## Context
- Persona needs a secure sign-in to join quests and link identity.
- HomeDir runs with “Plan A only”: no staging detours, ship behind flags and verify fast.

## Decision
- Build Google OAuth flow behind a feature flag while keeping GitHub link intact.
- Reuse the Simple Machine stack already in place (session/cache) and apply the living baseline (security + testing).

## Guardrails
- 50/50 Broad Quality Cycle: ~50% build, ~50% verification (tests + walkthrough).
- Live Alpha: feature flag defaults OFF; toggle only for controlled verification.
- Security: reuse baseline (non-root, drop ALL caps, read-only FS), no secrets in prompts.
- Health checks: `/q/health/live` and `/health/ready` probed every 10s with failureThreshold 3.

## Outcome
- Login path works with Google OAuth when the flag is on; GitHub path remains stable.
- Health probes stay green under the new flow; baseline updated with the OAuth guardrail.
- Evidence captured as plan → prompt → commit/tests for auditability.

## Lessons
- Live Alpha with flags is faster and safer than a staging fork.
- Reusing Simple Machines keeps UI/auth changes lean and testable.
- Every new flow updates the baseline so the team cannot repeat the same failure.
