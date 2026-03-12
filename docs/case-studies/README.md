# Case Studies (HomeDir)

Use these case studies as proof points and patterns for new prompts.

- [Quest Board Login (Live Alpha)](quest-board.md) - Google OAuth behind a feature flag to let personas join quests without breaking GitHub login.
- [Rollback Contained in the Same Hour](rollback.md) - How "stop the line" + flags prevented a long rollback.
- [Live Alpha with Feature Flags](live-alpha-flags.md) - Why flags beat staging and how to guardrail them.
- [CI/CD Recovery Is Part of Delivery](ci-cd-recovery.md) - Delivery path failures became first-class framework lessons.
- [Multilingual Drift Is Product Debt](multilingual-drift.md) - Language inconsistency exposed product-discipline gaps, not just copy issues.
- [Performance Work Must Start With Comparable Evidence](performance-evidence.md) - Measurement prevented the wrong optimization story from taking over.
- [Backup Is Not Done Until Restore Works](disaster-recovery.md) - DR became trustworthy only after restore viability and retention behavior were treated as required evidence.
- [EvenFlow to HomeDir](evenflow.md) - 6-week event platform experiment (auth, speakers, schedule, notifications) that seeded the HomeDir standards.

## Quick reference
- **Health checks:** `/q/health/live`, `/health/ready`, probes every 10s, failureThreshold 3.
- **Security:** runAsNonRoot, drop ALL caps, filesystem read-only.
- **Resources:** small requests (50m CPU/52Mi RAM) with burst (4 CPU/1Gi) to support rampage -> steady state.

## Lessons (pain -> baseline)
- Long rollbacks are avoided with a living baseline and broad controls (50/50).
- UI: keep simplification and consistency; avoid scattered scripts that break look & feel.
- Evidence beats intuition when delivery pressure invites oversized redesign.
- Operational proof becomes framework value only after it is canonized into reusable assets.
