# Broad Quality Cycle (50/50)

La mitad del tiempo es construcción y la otra mitad verificación. Es la defensa contra la deuda técnica y los rollbacks de días enteros.

## Ritual (Build → Run → Walkthrough)
- **Build:** compila/local, sin depender de staging pesados; feature toggles para Live Alpha.
- **Run:** pruebas automáticas + seguridad; liveness `/q/health/live`, readiness `/health/ready` cuando aplique.
- **Walkthrough:** validación con la persona en mente (¿resuelve su necesidad?), UI/UX breve aunque las herramientas visuales sean inmaduras.
- **Evidence:** commit + CI + baseline actualizado con la lección (living baseline, sin Plan B).

## Por qué reemplaza el “staging eterno”
- IA acelera pero también propaga errores; controles pequeños e inconsistentes crean rollbacks grandes.
- Live Alpha detrás de flags mantiene la velocidad y evita la “abstraction tax”.

## Qué medir
- % de iteraciones cerradas en 1–2h con tests + CI.
- Reducción de rework después de aplicar 50/50.
- Tiempo total del ciclo (objetivo: 5–10 minutos por iteración de QA completo).
