# 9. Equipos y agentes

## De una práctica personal a un sistema compartido

ADEV nació observando el trabajo de una persona con agentes, pero su valor no termina allí. Cuando varias personas trabajan sobre el mismo producto, la pregunta deja de ser únicamente cómo obtener un buen resultado de un agente. El desafío es lograr que distintas personas, usando agentes diferentes y en momentos distintos, produzcan cambios compatibles con una misma intención.

La dificultad no aparece porque los agentes sean especiales. Los equipos de software siempre han necesitado coordinar alcance, decisiones, interfaces, ramas y entregas. Los agentes aumentan la velocidad con la que una falta de coordinación puede materializarse. Dos personas pueden tardar horas en desarrollar interpretaciones incompatibles; dos agentes pueden hacerlo en minutos.

Por eso, escalar ADEV no significa multiplicar sesiones. Significa convertir expectativas privadas en un contrato compartido.

> **El paralelismo produce actividad. La coordinación produce un producto coherente.**

## La baseline como lenguaje común

Cuando cada integrante conserva sus mejores instrucciones dentro de prompts privados, el equipo no tiene una práctica: tiene varias prácticas personales que coinciden parcialmente.

Una persona puede pedir pruebas antes de cada commit. Otra puede confiar en CI. Un agente puede preservar una arquitectura por capas y otro crear un atajo porque nunca recibió esa definición. La inconsistencia no necesariamente proviene de una mala ejecución. Cada agente puede estar cumpliendo correctamente un contexto diferente.

La baseline versionada resuelve una parte de este problema. Todas las personas y agentes deben comenzar desde las mismas fuentes:

- intención y comportamiento del producto;
- decisiones estructurales de arquitectura;
- requisitos de calidad y seguridad;
- forma de proponer, revisar e integrar cambios;
- acciones que requieren aprobación;
- criterios que demuestran que una entrega terminó.

`ADEV.md` funciona como entrada a estas fuentes. No reemplaza la conversación del equipo ni contiene todos los detalles. Hace visible dónde está la definición autorizada y qué comportamiento se espera al trabajar en el repositorio.

El contrato común no pretende que todos piensen igual. Permite que las diferencias aparezcan como propuestas revisables, en lugar de quedar escondidas dentro de una sesión.

## El issue es una reserva de intención

En trabajo paralelo, un issue no es solo una lista de tareas. Reserva una porción de la intención del producto y la entrega a una persona o agente bajo un alcance reconocible.

Antes de comenzar debería poder responder:

- ¿Qué problema o comportamiento cambia?
- ¿Qué resultado observable se espera?
- ¿Qué queda fuera?
- ¿Qué contratos y decisiones aplican?
- ¿Qué archivos, componentes o interfaces probablemente se verán afectados?
- ¿Cómo se validará?
- ¿Quién conduce la iteración?

Una tarea sin propietario claro puede ser ejecutada dos veces. Una tarea sin límites puede invadir otra iteración. Una tarea sin evidencia de cierre puede parecer disponible cuando ya existe trabajo no integrado.

Asignar un issue no impide colaboración. Define quién mantiene su coherencia y quién debe comunicar un cambio de alcance. Si durante la implementación aparece una necesidad distinta, se registra y se separa. Expandir silenciosamente la rama transforma la coordinación en una conjetura.

## Una rama breve como espacio de trabajo

En la experiencia que dio origen a ADEV, *trunk-based development* con ramas de corta vida ha ofrecido una estructura adecuada para personas y agentes: una rama principal integrable y una rama breve por cambio atómico.

No es una ley universal. La topología del equipo, las obligaciones regulatorias, el tipo de producto o su estrategia de release pueden requerir otra forma de trabajo. El principio transferible es más pequeño:

> **Cada iteración necesita un alcance, un propietario, un punto de partida y un camino de integración identificables.**

Las ramas breves reducen divergencia. Si una iteración dura minutos u horas, es más sencillo comprender su diff, actualizarla respecto al estado compartido y descartarla cuando pierde confiabilidad. Una rama que acumula varias funcionalidades durante días crea más combinaciones, conflictos y decisiones difíciles de separar.

El PR se convierte en la frontera donde la interpretación privada vuelve al sistema común. Allí se relacionan necesidad, cambios, decisiones, pruebas, riesgos y conversación de revisión.

## Coordinar antes de colisionar

Git puede combinar líneas distintas, pero no sabe si dos cambios expresan decisiones incompatibles. Un merge sin conflictos sintácticos puede introducir un conflicto conceptual.

Antes de ejecutar trabajo en paralelo conviene identificar superficies compartidas:

- archivos o módulos que varias iteraciones modificarán;
- contratos públicos, esquemas o interfaces;
- migraciones y estado persistente;
- configuración de build, seguridad o despliegue;
- documentación canónica y assets de baseline;
- recursos externos o entornos exclusivos.

Si dos tareas necesitan modificar la misma decisión estructural, paralelizarlas puede costar más que ordenarlas. El equipo puede secuenciarlas, definir primero el contrato común o asignar una sola iteración integradora.

La coordinación no tiene que convertirse en una reunión permanente. Un registro corto de propietario, alcance, archivos previstos, dependencia y estado suele ser suficiente para trabajo pequeño. Lo importante es actualizarlo cuando la realidad cambia.

## Personas y agentes como una misma unidad de entrega

Un agente no constituye por sí solo un nuevo equipo. Opera dentro de la responsabilidad de la persona y del flujo que lo gobiernan. Para coordinar correctamente conviene pensar en unidades de entrega: una persona responsable puede conducir uno o más agentes, pero conserva la obligación de explicar y demostrar el resultado.

Dentro de una iteración pueden existir roles distintos:

1. **Conductor:** mantiene la relación con el issue, decide el alcance y responde por el cierre.
2. **Implementador:** modifica el sistema y produce evidencia del inner loop.
3. **Revisor:** contrasta el diff con intención, baseline y riesgos.
4. **Validador operacional:** comprueba integración, despliegue y comportamiento relevante.

Estos roles pueden ser ejercidos por personas, agentes o automatizaciones según el riesgo. Lo que no debería desaparecer es la responsabilidad humana por las decisiones y efectos.

Utilizar sesiones separadas para implementar y revisar puede ampliar la cobertura. Sin embargo, dos agentes no son automáticamente independientes: pueden compartir modelo, contexto, entrenamiento o supuestos. La revisión cruzada es una capa adicional, no sustituto de pruebas ejecutables, controles externos ni juicio responsable.

## El handoff es parte del trabajo

Una sesión puede terminar, cambiar de herramienta o pasar a otra persona. Si el estado vive únicamente en la memoria de quien trabajó, el siguiente participante reconstruirá decisiones mediante inferencias.

Un handoff útil es breve y verificable. Registra:

- objetivo e issue activo;
- rama y estado del workspace;
- cambios realizados;
- decisiones y fuentes consultadas;
- validaciones ejecutadas y resultados;
- incertidumbres o fallos pendientes;
- próximo paso y acciones que requieren aprobación.

El handoff no debe copiar una conversación completa. Debe permitir retomar desde hechos observables. La rama, el diff, los checks y los documentos canónicos siguen siendo fuentes más confiables que un relato sin evidencia.

Cambiar de agente no reinicia la tarea. Es un relevo. Antes de actuar, el nuevo participante inspecciona el repositorio y reconcilia ese estado con el handoff.

## Integrar con frecuencia, no al final

El trabajo paralelo acumula deriva mientras permanece separado. Por eso cada unidad debería actualizar su visión del estado compartido en puntos relevantes: antes de comenzar, antes de publicar, cuando cambia una dependencia y antes de integrar.

Actualizar no significa aplicar mecánicamente un merge o rebase sobre un workspace incierto. Primero se inspeccionan cambios locales, commits y trabajo ajeno. Después se elige una forma segura de reconciliación.

La integración frecuente permite detectar temprano:

- contratos que evolucionaron;
- archivos reclamados por otra iteración;
- pruebas que ahora expresan una expectativa nueva;
- decisiones de arquitectura incompatibles;
- ramas que ya fueron reemplazadas o cerradas.

La rama principal debe representar el estado compartido confiable. Si integrar requiere resolver una gran arqueología de cambios, las iteraciones probablemente crecieron demasiado o el equipo dejó de comunicar dependencias.

## La velocidad del equipo se mide en cierres

Abrir diez agentes no garantiza entregar diez veces más. Cada flujo adicional consume atención para definir, revisar, integrar y recuperar. El cuello de botella puede moverse desde la implementación hacia la decisión o la validación.

Una organización madura controla trabajo en curso según su capacidad real de cierre. Observa, entre otras señales:

- tiempo desde issue hasta comportamiento verificado;
- PR abiertos y edad de las ramas;
- conflictos y retrabajo entre iteraciones;
- fallos encontrados después de integrar;
- tiempo de revisión y recuperación;
- proporción de trabajo iniciado que llega a entrega.

Estas métricas no deben convertirse en cuotas universales ni en evaluación simplista de personas. Sirven para localizar fricción. Si los agentes producen cambios más rápido de lo que el equipo puede comprenderlos, el sistema no ganó capacidad: acumuló inventario técnico.

El objetivo es aumentar flujo confiable, no actividad visible.

## Onboarding mediante una entrega completa

La baseline también sirve para incorporar nuevas personas. Leer documentación ayuda, pero la práctica se comprende recorriendo el ciclo.

Un onboarding ADEV puede comenzar con un cambio real y pequeño:

1. localizar `ADEV.md` y las fuentes que referencia;
2. seleccionar un issue acotado;
3. explicar el resultado y su validación;
4. crear una rama breve;
5. implementar con un agente dentro del alcance;
6. revisar el diff y la evidencia;
7. integrar mediante PR;
8. comprobar el comportamiento en el entorno relevante;
9. registrar cualquier aprendizaje reusable.

El resultado no es solo una funcionalidad. La nueva persona demuestra que puede usar el lenguaje operativo del equipo y cerrar un ciclo sin depender de instrucciones privadas.

## Antipatrones de coordinación agéntica

Algunas señales revelan que el equipo multiplicó agentes antes de construir el sistema compartido:

- cada persona conserva un prompt maestro distinto;
- varios agentes trabajan sobre el mismo objetivo sin propietario;
- se asignan tareas por volumen y no por independencia;
- las ramas permanecen abiertas mientras siguen acumulando funciones;
- los handoffs describen intención, pero no estado ni evidencia;
- se integra porque los archivos no tienen conflictos, sin revisar contratos;
- una revisión de agente se considera aprobación suficiente;
- los problemas se resuelven en conversaciones y no fortalecen la baseline.

La solución no es centralizar cada decisión ni eliminar el paralelismo. Es hacer visible el contrato que permite actuar con autonomía coordinada.

## Práctica: ejecuta dos iteraciones coordinadas

Selecciona dos cambios pequeños del mismo producto. Antes de iniciarlos, registra propietario, alcance, archivos previstos, dependencias y evidencia de cierre.

Decide si son realmente independientes. Si comparten una interfaz, define primero el contrato o secuencia el trabajo. Asigna una rama a cada iteración y utiliza la misma baseline para ambos agentes.

En cada punto de integración, compara:

- qué supuestos compartieron;
- dónde interpretaron las reglas de manera distinta;
- qué conflicto pudo anticiparse;
- qué información faltó en el handoff;
- qué aprendizaje merece incorporarse al contexto durable.

No evalúes el ejercicio por la cantidad de código producido. Evalúalo por la capacidad de cerrar ambos cambios con un producto coherente y una baseline más clara.

## Resultado del capítulo

Al terminar este capítulo, el lector puede convertir ADEV en un contrato compartido; reservar intención mediante issues; coordinar ramas, archivos y dependencias; distinguir roles de implementación y revisión; realizar handoffs verificables; limitar trabajo en curso; e introducir nuevas personas mediante una entrega completa.

## Puente a la práctica

- [`ADEV.md`](../../ADEV.md) contiene las reglas canónicas de ramas, coordinación, validación y limpieza.
- [`starter-kit/OPERATING_RITUALS.md`](../../starter-kit/OPERATING_RITUALS.md) resume rituales antes de iterar y después de fallar.
- [`starter-kit/FIRST_WEEK.md`](../../starter-kit/FIRST_WEEK.md) propone el primer ciclo de trabajo compartido.
- [`starter-kit/QUALITY_CYCLE_checklist.md`](../../starter-kit/QUALITY_CYCLE_checklist.md) ayuda a revisar una iteración antes de integrarla.
- [`docs/adoption-maturity-model.md`](../../docs/adoption-maturity-model.md) permite identificar la siguiente capacidad faltante sin convertir la madurez en una etiqueta.
