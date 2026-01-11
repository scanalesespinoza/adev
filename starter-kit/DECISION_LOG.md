# Decision Log

Use one entry per decision. Keep it short and link to evidence.

## Template
- Date:
- Decision:
- Options considered:
- Rationale (persona + baseline/constraint):
- Evidence (commit/CI/flag link):
- Follow-up guardrail/baseline update:

## Example
- Date: 2026-01-11
- Decision: Keep EvenFlow UI server-rendered; no heavy SPA framework.
- Options: SPA with complex JS vs SSR with simple components.
- Rationale: Frugality + consistency; avoid bloat and speed up verification.
- Evidence: Commit XYZ with SSR templates + health checks green; flag controls applied.
- Follow-up: Added “SSR-first, no heavy middleware” to baseline.
