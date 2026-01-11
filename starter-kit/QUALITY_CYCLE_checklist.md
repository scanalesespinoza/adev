# 50/50 Broad Quality Cycle Checklist

Use ~50% build, ~50% verification in 1–2h iterations.

- [ ] Definition written (scope in/out, persona, success behavior)
- [ ] Baseline guardrails linked (security, frugality, UI consistency)
- [ ] Prompt ready with context + constraints + quality gates
- [ ] Feature flag created/default OFF (if applicable)
- [ ] Build + tests executed (include health checks)
- [ ] Manual walkthrough (flag ON and OFF paths) done
- [ ] Evidence captured (commit/CI links, decision log entry)
- [ ] Baseline updated if anything failed or changed
- [ ] Rollback/flag-off path verified
