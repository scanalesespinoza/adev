# Case Studies (HomeDir)

## Google OAuth with 50/50
- **Context (Why):** Persona necesita sign-in seguro para unirse a quests y enlazar identidad (HomeDir OAuth).
- **Plan (What):** Google OAuth detrás de flag, sin romper GitHub; sin staging, Live Alpha con toggles.
- **Execution (How):** Reusar Simple Machine stack (session/cache), health checks `/q/health/live` y `/health/ready`, baseline de seguridad aplicada.
- **50/50:** 30–45m construir, 30–45m probar (build/tests, seguridad, UI en `/login` con flag, sin regresiones de GitHub).
- **Evidence:** Commit + CI + probes activas; baseline actualizado con el guardrail.

## Health checks & Simple Machine
- **Context:** VPS/k8s despliegue minimalista.
- **Checks:** Liveness `/q/health/live`, readiness `/health/ready`, probes cada 10s, failureThreshold 3.
- **Security:** runAsNonRoot, drop ALL caps, filesystem read-only.
- **Recursos:** requests pequeños (50m CPU/52Mi RAM) con burst (4 CPU/1Gi) para soportar rampage → steady state.

## Lecciones (pain → baseline)
- Rollbacks largos se evitan con baseline vivo y controles amplios (50/50).
- UI: mantener simplificación y consistencia; evitar scripts dispersos que rompan look & feel.
