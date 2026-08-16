# Apéndice B. Glosario

## Uso del glosario

Este glosario define el vocabulario de la primera edición española. Las definiciones resumen el uso dentro de ADEV; no pretenden sustituir estándares externos ni imponer traducciones universales a la industria.

Cuando un término técnico en inglés tiene uso extendido —*issue*, *pull request*, *inner loop*, *outer loop*, *skill*— el libro lo conserva y explica en español. Cuando existe una definición normativa o contractual, se enlaza la fuente técnica correspondiente.

## A

### Acción observable

Comportamiento que una persona o un sistema consumidor puede ejecutar o percibir. Conecta una necesidad de producto con criterios de aceptación y permite comprobar si la entrega cumplió su promesa.

### ADEV

Sigla de **AI Agentic Development**. Práctica para dirigir la entrega de software con agentes mediante responsabilidad humana, contexto explícito, autonomía acotada, verificación continua y evidencia. ADEV no es un modelo, proveedor, herramienta ni colección de prompts.

### `ADEV.md`

Archivo de entrada al contexto operativo de un repositorio. Resume principios y dirige al agente hacia fuentes de producto, arquitectura, calidad, seguridad y operación. Debe permanecer pequeño y navegable; no es sinónimo de toda la práctica ADEV.

### Agente

Sistema de inteligencia artificial capaz de perseguir un objetivo mediante varios pasos y utilizar herramientas para observar o modificar un entorno. Su autonomía técnica no le transfiere responsabilidad moral, legal u organizacional.

### Agéntico (*agentic*)

Relativo a sistemas que pueden planificar, seleccionar acciones, utilizar herramientas y ajustar su ejecución durante una tarea. No significa que posean intención humana, conciencia o autoridad propia.

### Arquitecto

Rol responsable de comprender la necesidad, preservar la intención, definir decisiones estructurales y evaluar consecuencias entre producto, tecnología y operación. Puede delegar ejecución, pero conserva juicio y responsabilidad dentro de su autoridad.

### Asset técnico

Artefacto reutilizable que lleva la práctica al repositorio: baseline, template, skill, política, checklist, prueba, script, runbook o ejemplo. El término *asset* se conserva por su uso habitual en el proyecto.

### Atomicidad

Propiedad de una iteración cuyo objetivo, contexto, efectos y evidencia pueden comprenderse, revisarse y recuperarse como una unidad. No depende de una cantidad fija de líneas, archivos u horas.

### Autoridad

Derecho concedido para ordenar, aprobar o ejecutar un efecto dentro de un alcance. Es diferente de la capacidad técnica: que un agente pueda hacer algo no significa que esté autorizado.

### Autonomía

Libertad del agente para decidir y ejecutar pasos dentro de límites diseñados. En ADEV depende de alcance, riesgo, reversibilidad, permisos, evidencia y condiciones de escalamiento.

## B

### Baseline

Conjunto versionado de principios, fuentes y guardrails que gobierna cómo se trabaja en un repositorio. La palabra inglesa se conserva porque representa más que una “línea base” métrica: es memoria operacional y contrato compartido.

### Baseline viva

Baseline que cambia cuando la ejecución aporta evidencia relevante y que también se consolida, revisa o retira para evitar crecimiento sin control. Mejora su precisión, no solo su longitud.

## C

### Cadena de evidencia

Relación trazable entre necesidad, decisión, política o skill, acción, validación, entrega y aprendizaje. Su extensión depende de la afirmación: un commit demuestra una modificación, no necesariamente un resultado productivo.

### Capacidad

Operación que una herramienta o skill puede realizar. Debe evaluarse por separado de la autoridad, la intención y el permiso con que se utiliza.

### Check

Control manual o automatizado que responde una pregunta específica sobre el cambio, como compilación, pruebas, arquitectura o seguridad. El número de checks no es una medida de madurez; importan su cobertura, confiabilidad y propósito.

### CI/CD

Integración continua y entrega o despliegue continuo. En ADEV, CI, delivery y deployment son etapas relacionadas, pero no equivalentes. Un pipeline exitoso no sustituye la comprobación del comportamiento entregado.

### Contexto durable

Información versionada y compartida que permanece más allá de una conversación: decisiones de producto, arquitectura, políticas, templates, pruebas y registros. Reduce la necesidad de repetir instrucciones en cada prompt.

### Contrato de expectativas humanas

Estructura que expresa intención, autoridad, restricciones, no objetivos, criterios de aceptación, incertidumbre y condiciones de detención. Convierte una petición humana en una base revisable para el trabajo del agente.

### Contrafactual

Escenario alternativo utilizado para comparar qué habría ocurrido sin una intervención. Los repositorios de EventFlow y Homedir no contienen por sí solos un contrafactual válido para calcular causalmente productividad, ahorro o retorno.

## D

### Decisión estructural

Elección que condiciona varias partes del producto o resulta costosa de revertir: límites de componentes, modelo de datos, identidad, interfaces o estrategia operacional. Requiere autoridad y revisión mayores que una decisión local reversible.

### Definición de cierre (*definition of done*)

Condiciones que deben cumplirse para considerar terminada una iteración. Incluye evidencia técnica y, cuando aplica, comprobación del comportamiento en el entorno relevante.

### Delivery

Proceso de llevar un cambio validado hacia un estado disponible para su consumidor. El libro conserva el término inglés cuando ayuda a distinguirlo de deployment.

### Deployment

Instalación o promoción de un artefacto a un entorno. Un deployment correcto demuestra que el artefacto llegó y se ejecuta; no demuestra por sí solo que la persona pueda completar la acción prometida.

### Doctrina

Principios durables que gobiernan ADEV. Tiene mayor autoridad que las prácticas explicativas y los ejemplos dentro de su alcance. La doctrina debe ser portable y no depender silenciosamente de un stack o proyecto.

## E

### Efecto externo

Acción que modifica un sistema fuera del workspace o afecta a terceros: publicar, desplegar, enviar, comprar o cambiar estado remoto. Requiere autorización específica salvo que un contrato ya conceda exactamente ese efecto.

### Entorno relevante

Lugar donde debe comprobarse una afirmación: local, integración, sandbox, audiencia controlada o producción. Se selecciona según el riesgo y la etapa; no siempre significa producción pública.

### Escalamiento

Transferencia de una decisión a una persona o rol con autoridad y competencia cuando existe ambigüedad, riesgo, conflicto de políticas o falta de evidencia.

### Evidencia

Artefacto observable que muestra qué se pretendía, qué ocurrió y qué se verificó. Puede ser un diff, prueba, check, revisión, despliegue o recorrido de usuario. Su fuerza está limitada a la propiedad que realmente demuestra.

## G

### Gate

Puerta de control que impide avanzar hasta satisfacer condiciones definidas. Puede gobernar integración, promoción o despliegue. Un gate debe explicar qué riesgo cubre y qué evidencia acepta.

### Guardrail

Límite que reduce opciones o contiene efectos para mantener el trabajo dentro de condiciones aceptables. Puede expresarse como política, permiso, prueba, check, aislamiento o aprobación.

## H

### Hardness

Grado en que el comportamiento de un agente está acotado por expectativas explícitas, autoridad, políticas, capacidades limitadas y verificación observable. No significa infalibilidad ni determinismo total. Véase la [definición técnica](../../../framework/hardness/00-definition-and-scope.md).

### Hábitat de software

Metáfora para comprender el software como un espacio que personas y sistemas habitan mediante acciones repetidas. Obliga a relacionar arquitectura con experiencia y necesidades, no solo con componentes técnicos.

### Handoff

Relevo de trabajo entre personas, agentes o sesiones. Registra objetivo, estado observable, decisiones, validación, incertidumbre y siguiente paso sin sustituir al repositorio como fuente de verdad.

## I

### Inner loop

Ciclo de retroalimentación cercano a quien implementa, antes de publicar el cambio. Incluye las comprobaciones rápidas y focalizadas que eliminan incertidumbre mientras corregir todavía es barato.

### Issue

Registro de una necesidad o problema con comportamiento esperado, alcance, restricciones y aceptación. En trabajo paralelo también reserva intención para un propietario reconocible.

### Iteración atómica

Ciclo pequeño que define, implementa, verifica y registra un objetivo coherente. Su tamaño se ajusta a la madurez y complejidad; la heurística de narrarlo en dos a cinco minutos es un punto de partida, no una regla universal.

## L

### Least privilege / mínimo privilegio

Principio de conceder únicamente herramientas, funciones, datos y permisos necesarios para el objetivo y el periodo correspondientes. Reduce el impacto de errores, manipulación o uso indebido.

### Living baseline

Forma inglesa de baseline viva. En el manuscrito español se prefiere **baseline viva**.

## M

### Microiteración

Paso de implementación y validación lo bastante pequeño para producir retroalimentación rápida. Varias microiteraciones pueden formar una iteración atómica sin perder su objetivo común.

## O

### Outer loop

Ciclo independiente que comienza cuando el cambio abandona la sesión local. Incluye CI, revisiones, políticas, integración y controles de entorno. Refleja o amplía los contratos importantes del inner loop.

### Overlay

Especialización local de la doctrina para un repositorio, equipo, herramienta o entorno. Puede definir stack, comandos, gates y ownership, pero no debe debilitar silenciosamente una regla superior.

## P

### Planos

Nombre narrativo para las fuentes de producto, arquitectura, calidad y seguridad que permiten distinguir decisiones estructurales de ajustes locales.

### Política

Regla acotada y revisable con autoridad, prioridad, razón, excepciones, evidencia y owner. Una recomendación no se convierte en política solo por estar escrita en mayúsculas.

### Práctica

Patrón repetible para aplicar doctrina en contexto. Es guía salvo que una política local la promueva explícitamente a obligación.

### Prompt

Instrucción temporal entregada al agente. En ADEV debería concentrarse progresivamente en la necesidad particular mientras los patrones recurrentes migran al contexto durable.

### Pull request (PR)

Propuesta revisable para integrar un cambio a una rama compartida. Conecta issue, diff, decisiones, evidencia, conversación y controles. Que un PR esté verde no demuestra por sí solo el resultado productivo.

## R

### Rollback

Retorno a un estado anterior confiable después de un cambio. No es sinónimo de borrar una rama: según el efecto puede requerir revertir código, desactivar una función, restaurar datos o contener un sistema externo.

### Runbook

Guía operacional para responder a una condición conocida, como incidente, recuperación o promoción. Define señales, acciones, roles, evidencia y escalamiento.

## S

### Skill

Contrato de una capacidad reutilizable que define propósito, triggers, entradas, permisos, efectos, invariantes, stop conditions, evidencia y validación. No es solamente un prompt almacenado y no puede ampliar la autoridad del usuario.

### Stop the line

Principio de detener nuevo alcance cuando desaparece la confianza en el sistema o en el camino de entrega. Primero se contiene, comprende y recupera; después se reanuda. No implica que todo incidente deba resolverse en una duración universal.

### Stop condition

Evento definido que obliga al agente a detener la acción, negarse o solicitar una decisión: autoridad incierta, objetivo conflictivo, efecto destructivo no aprobado o validación insuficiente.

## T

### Thread digital / hilo de trazabilidad

Cadena que conecta intención, decisiones, prompts, cambios, pruebas, integración, despliegue y verificación. La versión madura de ADEV se extiende hasta el comportamiento entregado; no termina necesariamente en el commit.

### Trazabilidad

Capacidad de reconstruir por qué se hizo un cambio, bajo qué autoridad, con qué fuentes, qué efectos produjo y qué evidencia permitió aceptarlo.

### Trunk-based development

Modelo donde el trabajo converge frecuentemente sobre una rama principal mediante ramas de corta vida u otros mecanismos equivalentes. Ha sido útil en los casos fundadores de ADEV, pero no es una topología universal.

## V

### Validación

Actividad que contrasta un cambio, control o artefacto con un requisito definido. En el uso cotidiano del libro puede incluir pruebas, checks e inspecciones. Cada validación debe declarar qué propiedad demuestra.

### Verificación de entrega

Comprobación de que el comportamiento prometido puede ejecutarse en el entorno relevante. Cierra la distancia entre artefacto técnico y resultado observable.

### 50/50

Símbolo de equilibrio entre creación y verificación. Significa avanzar con atención continua, no dividir matemáticamente el tiempo ni imponer una duración fija a las iteraciones.
