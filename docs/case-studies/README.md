# Case Studies (HomeDir)

Use these case studies as proof points and patterns for new prompts.

- [Quest Board Login (Live Alpha)](quest-board.md) — Google OAuth behind a feature flag to let personas join quests without breaking GitHub login.
- [Rollback Contained in the Same Hour](rollback.md) — How “stop the line” + flags prevented a long rollback.
- [Live Alpha with Feature Flags](live-alpha-flags.md) — Why flags beat staging and how to guardrail them.
- [EvenFlow to HomeDir](evenflow.md) — 6-week event platform experiment (auth, speakers, schedule, notifications) that seeded the HomeDir standards.

## Quick reference
- **Health checks:** `/q/health/live`, `/health/ready`, probes cada 10s, failureThreshold 3.
- **Security:** runAsNonRoot, drop ALL caps, filesystem read-only.
- **Recursos:** requests pequeños (50m CPU/52Mi RAM) con burst (4 CPU/1Gi) para soportar rampage → steady state.

## Lecciones (pain → baseline)
- Rollbacks largos se evitan con baseline vivo y controles amplios (50/50).
- UI: mantener simplificación y consistencia; evitar scripts dispersos que rompan look & feel.
