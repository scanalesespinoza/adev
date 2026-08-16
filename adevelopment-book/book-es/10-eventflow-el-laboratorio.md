# 10. EventFlow: el laboratorio

## Un experimento antes que una metodología

EventFlow no comenzó como una demostración científica de ADEV. Comenzó como una necesidad concreta: construir una plataforma para gestionar eventos, espacios, actividades, expositores, asistentes y planificación personalizada.

El proyecto debía avanzar con recursos limitados y una persona como conductor principal. Esa condición produjo el espacio ideal para experimentar con agentes: suficiente complejidad para enfrentar decisiones reales, pero libertad suficiente para cambiar la manera de trabajar sin coordinar una transformación organizacional.

Durante aproximadamente ocho semanas de historial —del 15 de julio al 9 de septiembre de 2025— el repositorio creció con una intensidad inusual. En ese momento todavía no existía ADEV como un cuerpo maduro de principios. Muchas de sus ideas estaban apareciendo en la ejecución: trabajar en incrementos pequeños, restringir decisiones tecnológicas, verificar continuamente y convertir los fallos en nuevas condiciones de trabajo.

Por eso EventFlow es el laboratorio de ADEV, no su validación definitiva.

## El producto que había que entregar

El repositorio público describe una plataforma de gestión de eventos con capacidades como:

- administración de eventos, espacios, charlas y expositores;
- autenticación y área administrativa;
- importación de información estructurada;
- notificaciones asociadas al estado de actividades;
- controles de integración, calidad y cadena de suministro.

Las versiones etiquetadas muestran una progresión desde `v1.0.0`, el 20 de julio, hasta `v2.2.0`, el 26 de agosto de 2025. Después de la ventana principal apareció una versión `v2.2.1`.

Estas evidencias permiten afirmar que el experimento produjo un sistema versionado con alcance funcional reconocible. No prueban por sí solas cuántas personas lo utilizaron, qué valor obtuvieron, cuánto tiempo humano consumió ni qué calidad experimentaron en producción. Esas preguntas necesitan otras fuentes.

La primera lección metodológica aparece aquí: **un repositorio demuestra artefactos y actividad; el resultado del producto requiere evidencia del usuario y del entorno.**

## La restricción como acto de arquitectura

Al comenzar, el agente podía recomendar soluciones técnicamente aceptadas: una base de datos conocida, middleware de mercado o componentes habituales en aplicaciones empresariales. El problema era que una recomendación general no necesariamente respondía al contexto económico y operativo de EventFlow.

El criterio humano cambió la pregunta. No se trataba de escoger la herramienta con mayor reconocimiento, sino de resolver persistencia, comunicación y experiencia con la menor complejidad adecuada para el producto.

El diseño favoreció una interfaz renderizada en servidor, componentes simples y una aproximación frugal a persistencia y mensajería. Algunas decisiones evolucionaron después, como muestra la documentación arquitectónica del repositorio. Eso no contradice el criterio inicial: una restricción es válida según el momento, la evidencia y las necesidades; debe revisarse cuando estos cambian.

El valor del arquitecto no estuvo en escribir cada línea. Estuvo en impedir que una solución genérica definiera el producto por accidente.

Esta experiencia se convirtió más tarde en un principio de ADEV: el agente puede proponer tecnologías, pero las decisiones estructurales necesitan relacionar producto, restricciones, operación, seguridad y costo. La popularidad de una solución es evidencia contextual, no autoridad arquitectónica.

## El volumen observado

El whitepaper publicado el 10 de septiembre de 2025 presentó cifras llamativas. Una reproducción posterior sobre el historial público confirmó, hasta el commit `b9c275d`, los siguientes datos:

| Observación | Resultado reproducido |
| --- | ---: |
| Ventana de autoría | 15 de julio–9 de septiembre de 2025 |
| Commits alcanzables | 696 |
| Commits atribuidos al autor, agrupando una variante tipográfica de su correo | 680 |
| Commits automatizados | 16 |
| Días calendario con al menos un commit | 42 |
| Tags dentro de la ventana | 8 |

El whitepaper también informó 37.895 líneas añadidas, 14.587 eliminadas y un saldo de 23.308 líneas. Esta edición conserva esas cifras únicamente como **datos reportados por la publicación original**: la auditoría editorial actual no completó una reproducción independiente del cálculo de líneas sobre todos los blobs históricos.

La distinción importa. El commit de frontera y el método de conteo quedan identificados para que otra persona pueda repetirlos. Una cifra sin esa frontera cambia cuando el repositorio continúa evolucionando: la rama principal hoy muestra 698 commits, pero esos dos commits posteriores no pertenecen al conjunto descrito por el artículo.

## Lo que 696 commits no demuestran

Un commit es una unidad de historial, no una unidad de valor. Su cantidad depende de cómo la persona divide, corrige, fusiona y automatiza el trabajo.

Los 696 commits demuestran que hubo una actividad intensa y granular. Junto con los tags y el alcance del repositorio, muestran que una persona apoyada por agentes fue capaz de construir y versionar muchas partes de un producto en una ventana breve. No demuestran que cada commit haya sido útil, que el código equivalga al trabajo de un equipo ni que la velocidad sea reproducible por cualquier profesional.

Las líneas de código tienen una limitación similar. Pueden representar funcionalidad, pruebas, configuración, documentación, código generado o retrabajo. Eliminar líneas puede ser una mejora o la corrección de una mala dirección. Un saldo positivo no mide calidad.

La distribución de actividad tampoco equivale a horas trabajadas. Dos commits separados por una hora no prueban una hora continua de dedicación. Por eso el cálculo de unas 568 horas activas y el promedio diario presentado en el whitepaper no se utilizan como tiempo humano medido en esta edición.

EventFlow enseña que la telemetría del repositorio es valiosa cuando responde una pregunta acotada. Se vuelve engañosa cuando se le pide demostrar causalidad, esfuerzo o impacto que no registró.

## El contrafactual que no existe

El whitepaper comparó EventFlow con un proyecto comunitario mayor y propuso un escenario tradicional de tres desarrolladores, horas y costos estimados. De allí surgieron afirmaciones de ahorro, retorno de inversión y productividad por persona.

Esas cifras fueron útiles como una hipótesis inicial: intentaban dimensionar el potencial percibido de trabajar con agentes. No constituyen una medición causal.

Para afirmar que ADEV redujo costos habría sido necesario, como mínimo:

- definir un producto y calidad equivalentes;
- medir el tiempo humano real;
- registrar costos de herramientas e infraestructura;
- comparar equipos con experiencia y condiciones relevantes;
- observar mantenimiento, defectos y operación durante un periodo suficiente;
- controlar diferencias de alcance y forma de hacer commits.

Nada de eso puede reconstruirse únicamente desde el repositorio. Tampoco existe una ejecución paralela del mismo producto, en las mismas condiciones, sin agentes.

Por esa razón esta edición no repite como resultados el 83 % de ahorro, el retorno de 500 % ni una productividad 53 veces mayor. Permanecen como estimaciones históricas, no como promesas de ADEV.

Corregir una afirmación propia no debilita el caso. Muestra que la práctica también debe aplicar 50/50 a su narrativa: proponer, medir, contrastar y refinar.

## Lo que sí aprendimos

EventFlow permitió observar varios patrones que después maduraron en ADEV.

### 1. La velocidad amplifica el criterio

Los agentes hicieron posible producir alternativas y cambios con rapidez. Esa velocidad volvió más importante decidir qué no construir, qué dependencia evitar y qué resultado validar. La herramienta amplificó tanto una buena definición como una decisión vaga.

### 2. Las restricciones reducen el espacio de búsqueda

Definir una aproximación frugal, una experiencia consistente y límites arquitectónicos evitó evaluar una cantidad ilimitada de opciones en cada iteración. La restricción bien justificada no frenó la creatividad: concentró la ejecución.

### 3. El producto obliga a integrar disciplinas

Autenticación, interfaz, persistencia, despliegue y seguridad no podían resolverse como ejercicios aislados. El proyecto exigió la amplitud profesional del conductor para revisar consecuencias entre capas. Esa experiencia influyó en la idea de que el arquitecto gobierna el hábitat completo mientras el agente ejecuta partes.

### 4. La actividad necesita evidencia proporcional

Producir mucho código generó la necesidad de fortalecer compilación, pruebas, checks, decisiones y release. La verificación no apareció como etapa final, sino como contrapeso de la capacidad de crear.

### 5. El laboratorio debe dejar activos reutilizables

El resultado más importante no fue una cifra de productividad. Fue reconocer que decisiones y fallos podían convertirse en una baseline transportable. EventFlow generó patrones iniciales; Homedir los enfrentaría después a una operación más extensa y a incidentes más variados.

## Los límites del caso

EventFlow es un estudio de caso de un solo producto y un conductor principal con experiencia amplia en desarrollo, infraestructura, arquitectura, seguridad y entrega. El repositorio público permite inspeccionar su resultado técnico, pero no representa un experimento controlado.

Existen sesgos evidentes:

- el autor de la práctica es también quien construyó y evaluó el proyecto;
- no hubo grupo de control;
- el alcance evolucionó durante la ejecución;
- las métricas de Git reflejan hábitos de commit;
- la experiencia previa del conductor es difícil de separar del efecto de los agentes;
- no contamos con una medición independiente de usuarios, calidad percibida o costo total.

Por eso el caso no permite afirmar que cualquier persona pueda repetir el resultado en seis u ocho semanas. Sí permite estudiar cómo un profesional utilizó agentes bajo restricciones reales y qué principios extrajo de esa experiencia.

## Práctica: audita tu propia historia

Elige una entrega asistida por agentes y define primero su frontera: commit inicial, commit final, fechas, alcance y entorno.

Separa tus observaciones en tres columnas:

1. **Reproducido:** otra persona puede ejecutar el método y obtener el mismo dato.
2. **Reportado:** existe una fuente, pero todavía no reprodujiste su método.
3. **Estimado o interpretado:** depende de supuestos, experiencia o un contrafactual no observado.

Después pregunta qué evidencia falta para conectar actividad con resultado. Tal vez necesites tiempos registrados, defectos, verificaciones de producción, experiencia de usuarios o costos reales.

No descartes una historia porque tenga límites. Haz visibles esos límites para que la historia pueda enseñar sin convertirse en publicidad.

## Resultado del capítulo

Al terminar este capítulo, el lector puede interpretar EventFlow como un laboratorio; distinguir actividad, capacidad y valor; reproducir métricas con una frontera explícita; reconocer estimaciones económicas como hipótesis; y extraer principios transferibles sin convertir un caso individual en causalidad universal.

## Puente a la práctica

- [`docs/evidence/eventflow-metrics-reproduction.md`](../../docs/evidence/eventflow-metrics-reproduction.md) registra la frontera, comandos y resultados de la auditoría editorial.
- [`docs/case-studies/evenflow.md`](../../docs/case-studies/evenflow.md) conserva el resumen histórico del experimento y su transición hacia Homedir.
- [`starter-kit/DECISION_LOG.md`](../../starter-kit/DECISION_LOG.md) ayuda a registrar decisiones y razones durante una entrega.
- [Repositorio público de EventFlow](https://github.com/scanalesespinoza/eventflow).
- [Whitepaper original de septiembre de 2025](https://www.linkedin.com/pulse/whitepaper-measuring-impact-augmented-development-canales-espinoza-4kw8e).
