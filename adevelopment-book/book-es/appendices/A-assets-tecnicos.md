# Apéndice A. Assets técnicos

## Del libro al repositorio

El libro explica por qué existe ADEV y cómo tomar decisiones dentro de la práctica. Los assets técnicos convierten esas ideas en comportamiento observable de un repositorio.

No son dos productos separados. Forman un sistema con responsabilidades distintas:

- el **manuscrito** enseña criterio, tensiones y límites;
- el **framework** conserva doctrina y contratos portables;
- el **starter kit** ofrece piezas adaptables para comenzar;
- la **evidencia** muestra de dónde provienen las afirmaciones;
- los **overlays del proyecto** registran la realidad particular en la que se ejecuta el trabajo.

Este apéndice es un mapa, no una copia de esos archivos. En caso de diferencia, utiliza siempre la fuente enlazada y su versión vigente.

## Jerarquía de autoridad

No todos los documentos tienen el mismo peso. Antes de aplicar una instrucción, identifica su categoría:

| Superficie | Función | Autoridad |
| --- | --- | --- |
| Doctrina | Principios durables y reglas no negociables | Normativa dentro de su alcance |
| Política | Obligación con autoridad, prioridad, evidencia y excepciones | Normativa en el alcance declarado |
| Overlay | Especialización para un repositorio, entorno o equipo | Normativa local; no puede debilitar una regla superior |
| Skill | Contrato de una capacidad acotada | Operativa; actúa solo dentro de la autoridad recibida |
| Práctica y checklist | Guía repetible para aplicar doctrina | Recomendación salvo promoción explícita a política |
| Evidencia y caso | Artefacto que respalda una observación | Descriptiva; no crea una regla por sí sola |
| Libro | Explicación, enseñanza y narrativa | Interpretativa; remite al canon técnico |

La entrada canónica es [`ADEV.md`](../../../ADEV.md). Desde allí el agente debe localizar las fuentes aplicables. Un archivo más cercano a una tarea puede especializar el comportamiento, pero no debería contradecir silenciosamente una restricción de mayor autoridad.

Cuando dos reglas parecen incompatibles, utiliza el [modelo de política y precedencia](../../../framework/hardness/01-policy-and-precedence.md). Si el conflicto material permanece, detén la acción afectada y solicita una decisión.

## Mapa del framework

El directorio [`framework/`](../../../framework/) organiza la práctica en estantes canónicos.

### Doctrina

La [doctrina](../../../framework/doctrine/README.md) responde qué principios gobiernan ADEV. Su fuente principal es `ADEV.md`.

Úsala para:

- orientar una nueva baseline;
- resolver si una práctica local es compatible con ADEV;
- identificar reglas no negociables de entrega y evidencia;
- extraer lecciones transferibles desde un proyecto.

No agregues a la doctrina cada preferencia de stack, comando o entorno. Si una regla solo tiene sentido en un proyecto, pertenece a un overlay.

### Definiciones

Las [definiciones](../../../framework/definitions/README.md) mantienen distinciones compartidas: doctrina, política, práctica, skill, evidencia y overlay.

Consúltalas cuando una discusión utiliza una misma palabra para objetos diferentes. La precisión evita que una recomendación se aplique como obligación o que un caso particular se convierta en principio.

### Prácticas

Las [prácticas](../../../framework/practices/README.md) son patrones repetibles. Incluyen el ciclo de calidad, rituales de operación y el primer recorrido de adopción.

Úsalas como punto de partida y adáptalas al riesgo. Una práctica se vuelve obligatoria únicamente cuando una política o baseline local lo declara y define cómo comprobarla.

### Evidencia

El [estante de evidencia](../../../framework/evidence/README.md) relaciona expectativas, decisiones, acciones, validación y aprendizaje reutilizable.

Úsalo para:

- comprobar de dónde proviene una afirmación;
- distinguir artefacto público de recuerdo del autor;
- registrar la frontera temporal de una métrica;
- decidir si una observación está lista para convertirse en doctrina.

La evidencia específica de Homedir o EventFlow puede enseñar un patrón. No obliga a copiar su implementación.

### Hardness

[`framework/hardness/`](../../../framework/hardness/) gobierna la parte de ADEV orientada a los agentes. Su pregunta principal es: ¿puede una persona anticipar y auditar qué hará el agente, bajo qué autoridad y con qué evidencia?

El recorrido recomendado es:

1. [Definición y alcance](../../../framework/hardness/00-definition-and-scope.md).
2. [Política y precedencia](../../../framework/hardness/01-policy-and-precedence.md).
3. [Contrato de skill](../../../framework/hardness/02-skill-contract-template.md).
4. [Contrato de expectativas humanas](../../../framework/hardness/03-human-expectations-contract.md).
5. [Modelo de riesgo y autoridad](../../../framework/hardness/04-action-risk-authority-model.md).
6. [Schema y fixtures de política](../../../framework/hardness/05-policy-schema-and-fixtures.md).
7. [Guía de consumo para agentes](../../../framework/hardness/06-agent-consumption-guide.md).
8. [Capa de compatibilidad](../../../framework/hardness/07-compatibility-layer.md).

Hardness es una base emergente, no una certificación ni una garantía de comportamiento determinista.

## Qué asset usar según la necesidad

| Necesidad | Asset de entrada | Resultado esperado |
| --- | --- | --- |
| Comenzar ADEV en un repositorio | [`starter-kit/DAY_0.md`](../../../starter-kit/DAY_0.md) | Esqueleto de contexto, trabajo y evidencia |
| Sembrar una baseline legible por máquinas | [`starter-kit/BASELINE_template.json`](../../../starter-kit/BASELINE_template.json) | Fuentes, no negociables, autoridad y validación adaptadas |
| Definir una petición ambigua | [Contrato de expectativas](../../../framework/hardness/03-human-expectations-contract.md) | Intención, alcance, aceptación, incertidumbre y stop conditions |
| Decidir si el agente puede actuar | [Modelo de autoridad](../../../framework/hardness/04-action-risk-authority-model.md) | Clase de efecto, aprobación, evidencia y escalamiento |
| Crear una capacidad reutilizable | [Template de skill](../../../framework/hardness/02-skill-contract-template.md) | Trigger, permisos, efectos, invariantes y validación |
| Registrar una decisión | [`starter-kit/DECISION_LOG.md`](../../../starter-kit/DECISION_LOG.md) | Razón, alternativas, estado y revisión futura |
| Preparar y revisar una iteración | [`starter-kit/QUALITY_CYCLE_checklist.md`](../../../starter-kit/QUALITY_CYCLE_checklist.md) | Evidencia proporcional entre creación y verificación |
| Aprender de un fallo | [`starter-kit/OPERATING_RITUALS.md`](../../../starter-kit/OPERATING_RITUALS.md) | Clasificación, contención y mejora durable |
| Completar la primera semana | [`starter-kit/FIRST_WEEK.md`](../../../starter-kit/FIRST_WEEK.md) | Primer ciclo cerrado y baseline mejorada |
| Preparar la primera entrega | [`starter-kit/FIRST_RELEASE.md`](../../../starter-kit/FIRST_RELEASE.md) | Trazabilidad, verificación y recuperación |
| Evaluar madurez | [`docs/adoption-maturity-model.md`](../../../docs/adoption-maturity-model.md) | Próxima capacidad faltante, no una certificación |
| Sustentar una afirmación | [`docs/evidence-index.md`](../../../docs/evidence-index.md) | Enlace entre principio, prueba y asset |
| Registrar una pregunta no resuelta | [`docs/research-agenda.md`](../../../docs/research-agenda.md) | Hipótesis, evidencia requerida y guardrail provisional |

## Estructura mínima de un repositorio ADEV

Los nombres pueden variar. Lo importante son las responsabilidades y las fuentes reconocibles.

```text
repositorio/
├── ADEV.md                 # índice de principios y fuentes
├── docs/
│   ├── product/            # personas, problemas, comportamientos
│   ├── architecture/       # decisiones estructurales y contratos
│   ├── quality/            # definición de calidad y validaciones
│   ├── security/           # datos, amenazas, permisos y controles
│   └── decisions/          # decisiones y revisiones
├── .github/ o equivalente/
│   ├── issue templates/    # intención y aceptación
│   └── workflows/          # evidencia independiente
└── código y pruebas
```

No crees carpetas vacías para aparentar madurez. Si el repositorio ya contiene una fuente equivalente, enlázala. Si no existe una definición necesaria para el primer cambio, registra la brecha y resuélvela en el alcance más pequeño posible.

## Baseline upstream y overlay local

`ADEV.md` dentro de este repositorio es el canon upstream. Un proyecto que adopta ADEV necesita una copia, referencia o adaptación local que explique dos cosas:

1. qué principios upstream aplica;
2. qué restricciones particulares añade el proyecto.

El overlay puede incluir:

- stack y versiones aprobadas;
- comandos reales de build y pruebas;
- rutas arquitectónicas;
- requisitos regulatorios;
- entornos y gates;
- ownership y aprobaciones;
- comportamiento de rollback.

No debería convertir detalles locales en afirmaciones generales. Tampoco debe copiar cientos de líneas cuando un enlace estable y una especialización breve son suficientes.

Cuando el canon upstream cambia, revisa si el overlay sigue siendo compatible. La sincronización no debe sobrescribir decisiones locales sin evaluación.

## Contratos de skills

Una skill no es simplemente un prompt almacenado. Es un contrato de capacidad.

Antes de utilizar o crear una, comprueba:

- propósito y condiciones de activación;
- casos en los que no debe activarse;
- entradas y salidas;
- archivos, herramientas y entornos permitidos;
- efectos locales o externos;
- invariantes de seguridad y calidad;
- políticas aplicables;
- incertidumbre aceptable;
- condiciones de detención y escalamiento;
- evidencia y validación.

Una skill no puede ampliar la autoridad entregada por la persona ni debilitar una política superior. Si puede realizar una operación pero el objetivo no la autoriza, debe abstenerse.

El repositorio incluye una [skill de inspección de solo lectura](../../../framework/hardness/skills/adev-read-only-inspection/SKILL.md) como referencia inicial. Es un ejemplo revisable, no prueba de que todo runtime se comportará igual ni un contrato suficiente para efectos de escritura o publicación.

## Políticas y validación estructural

El [schema de política](../../../framework/hardness/policy-schema.json) comprueba que un registro contenga campos como autoridad, alcance, precedencia, evidencia, owner y revisión.

La validación estructural responde: “¿el registro tiene la forma esperada?”. No responde:

- si la política es correcta;
- si el runtime la hará cumplir;
- si el agente se comportará como esperamos;
- si la evidencia operativa existe.

Los fixtures y scripts locales permiten detectar contratos incompletos. Las evaluaciones conductuales y la observación real deben aportar las capas restantes.

## Evidencia sin datos sensibles

Conservar trazabilidad no significa almacenar todo.

Una evidencia útil registra:

- objetivo y frontera;
- fuentes consultadas;
- decisión y acción;
- diff, commit o resultado relevante;
- validación ejecutada;
- incertidumbre y fallo;
- entrega o contención;
- aprendizaje reutilizable.

No debe conservar secretos, credenciales, información personal, datos de clientes ni salidas sin procesar que contengan información sensible. Generaliza personas, organizaciones y entornos cuando el detalle no sea necesario para reproducir el patrón.

Un enlace a un repositorio mutable necesita commit, tag o fecha cuando sostiene una afirmación importante.

## Copiar, adaptar o enlazar

Utiliza esta regla práctica:

- **Copia** cuando el asset debe ejecutarse o editarse dentro del repositorio consumidor.
- **Adapta** cuando el patrón es correcto, pero requiere valores, roles o controles locales.
- **Enlaza** cuando existe una fuente canónica y duplicarla aumentaría deriva.

Por ejemplo, copia y adapta una baseline semilla; enlaza una definición upstream; implementa localmente los checks; y conserva la evidencia cerca del sistema que la produjo.

Todo asset copiado adquiere una responsabilidad de mantenimiento. Registra su origen o versión cuando la sincronización futura sea relevante.

## Mantener la dualidad

Cuando el libro introduce una práctica nueva, debería apuntar a un asset que permita aplicarla o declarar que ese asset todavía falta. Cuando un asset técnico cambia una idea sustancial, el manuscrito, glosario o evidencia deben revisarse para evitar dos versiones de ADEV.

La dualidad se conserva mediante referencias, no duplicación:

> **El libro enseña. El framework gobierna. El kit inicia. El proyecto especializa. La evidencia demuestra.**

## Recorrido recomendado

Si acabas de terminar el libro:

1. Recorre [`starter-kit/DAY_0.md`](../../../starter-kit/DAY_0.md).
2. Copia y adapta [`starter-kit/BASELINE_template.json`](../../../starter-kit/BASELINE_template.json).
3. Compara tu estructura con el [ejemplo mínimo](../../../starter-kit/examples/minimal-adev-loop/).
4. Define una petición mediante el [contrato de expectativas](../../../framework/hardness/03-human-expectations-contract.md).
5. Clasifica su efecto con el [modelo de autoridad](../../../framework/hardness/04-action-risk-authority-model.md).
6. Ejecuta el [ciclo de calidad](../../../starter-kit/QUALITY_CYCLE_checklist.md).
7. Cierra la primera entrega con [`FIRST_RELEASE.md`](../../../starter-kit/FIRST_RELEASE.md).
8. Registra el aprendizaje en el estante correcto.

No intentes instalar todos los assets el primer día. Utiliza la pieza mínima que reduzca una incertidumbre real y añade estructura cuando la ejecución demuestre su necesidad.
