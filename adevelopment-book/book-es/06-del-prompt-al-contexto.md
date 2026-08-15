# 6. Del prompt al contexto durable

## El prompt no debería cargar todo el sistema

Al comenzar a trabajar con agentes, parece razonable concentrar toda expectativa en el prompt. Explicamos el problema, la arquitectura, el estilo de código, las pruebas, la seguridad, el flujo Git y la forma de entregar. Cuanto más detallada es la instrucción, mayor parece ser nuestra posibilidad de obtener un buen resultado.

Ese enfoque puede funcionar en una primera interacción. No escala como práctica.

Escribir nuevamente un prompt extenso para cada cambio consume tiempo, facilita omisiones y produce variaciones entre personas. Una regla aparece en una solicitud y desaparece en la siguiente. Dos integrantes describen el mismo proceso de maneras diferentes. El comportamiento del agente termina dependiendo de la memoria y dedicación de quien redactó la instrucción del día.

ADEV busca que el prompt se vuelva más pequeño a medida que el sistema de trabajo madura.

La instrucción específica debe expresar qué necesitamos ahora. Las expectativas recurrentes deben vivir en contexto durable, versionado y compartido.

## La repetición revela deuda de contexto

Cada vez que copiamos una instrucción entre prompts aparece una pregunta: ¿esto pertenece realmente a la iteración o debería ser parte del repositorio?

Frases como estas suelen repetirse:

- Lee la documentación de arquitectura antes de cambiar componentes.
- No modifiques la rama principal directamente.
- Ejecuta compilación y pruebas antes de publicar.
- No registres secretos ni datos sensibles.
- Mantén el cambio dentro del issue.
- Documenta una decisión estructural antes de implementarla.

Si son expectativas estables, volver a escribirlas es deuda de contexto. Deben trasladarse a `ADEV.md`, una política, un template, una skill, un checklist o un control automatizado según su naturaleza.

Esta promoción tiene dos beneficios. Reduce el esfuerzo de formular solicitudes y vuelve las reglas inspeccionables por todo el equipo. El comportamiento deja de depender de prompts privados.

> Lo que se repite de manera consistente en los prompts es candidato a convertirse en infraestructura de trabajo.

No toda repetición merece institucionalizarse. Puede tratarse de una coincidencia temporal o una preferencia personal. La baseline viva exige observar, clasificar y validar antes de convertirla en doctrina.

## El prompt como instrucción temporal

Después de extraer el comportamiento recurrente, el prompt queda reservado para lo particular:

- El problema actual.
- La acción de producto esperada.
- El issue o fuente de alcance.
- Las restricciones excepcionales de esta iteración.
- La evidencia específica que se necesita.

Una instrucción madura podría ser breve:

> Analiza el issue 123, confirma que puede resolverse como un cambio atómico y procede mediante un pull request siguiendo la baseline del repositorio.

La frase es corta, pero no es vaga si el sistema comparte el significado de sus términos.

*Issue* representa un contrato de problema, alcance y aceptación. *Cambio atómico* activa reglas de tamaño, reversibilidad y evidencia. *Pull request* implica rama breve, validación local, revisión, checks, integración y seguimiento hasta el entorno relevante. *Baseline* conduce hacia producto, arquitectura, calidad, seguridad y operación.

El prompt no contiene todo el contrato. Lo activa.

## Compresión semántica

Cuando una palabra o frase breve conecta con un contrato compartido, obtenemos compresión semántica. Reducimos la instrucción sin reducir su significado.

Esta compresión solo funciona cuando:

- El término está definido de manera estable.
- Personas y agentes pueden encontrar su fuente canónica.
- El contrato contiene criterios aplicables y no solamente aspiraciones.
- Las contradicciones tienen precedencia conocida.
- La ejecución produce evidencia observable.

Sin esas condiciones, una frase breve oculta ambigüedad. Decir “haz un PR de calidad” no ayuda si nadie sabe qué controles definen calidad, qué alcance admite el PR o quién puede aprobarlo.

La madurez no se observa por tener prompts cortos. Se observa por cuánto significado confiable puede activar una instrucción corta.

## Capas de contexto

El conocimiento durable no debería vivir en un único archivo. Una estructura por capas permite cargar lo necesario según el cambio.

### Entrada

`ADEV.md` declara principios, autoridad, precedencia y rutas hacia otras fuentes. Debe ser pequeño para leerse con frecuencia.

### Dominio

Producto, arquitectura, seguridad, calidad y operación contienen conocimiento especializado. El agente consulta la capa relacionada con el alcance actual.

### Flujo

Templates de issue y PR, checklists, políticas y skills explican cómo ejecutar tareas recurrentes.

### Iteración

El issue, el prompt y los criterios de aceptación expresan la necesidad temporal.

### Evidencia

Pruebas, checks, commits, revisiones, despliegues y verificaciones demuestran qué ocurrió.

Estas capas forman una ruta:

> Instrucción específica → principios aplicables → conocimiento de dominio → flujo operativo → evidencia.

La ruta evita cargar todo indiscriminadamente y mantiene trazabilidad sobre qué información gobernó el cambio.

## Recuperar contexto, no inundar la conversación

Una baseline puede crecer hasta superar lo razonable para la memoria activa de una interacción. La respuesta no es necesariamente copiar más texto en el prompt ni convertir todo el repositorio en conocimiento permanente del modelo.

Primero debemos mejorar organización y recuperación:

- Mantener un índice pequeño con rutas claras.
- Dividir conocimiento por dominio y autoridad.
- Consultar únicamente fuentes relacionadas con el cambio.
- Utilizar skills para procesos repetibles.
- Incorporar herramientas que recuperen archivos o decisiones cuando sean necesarios.
- Resumir sin eliminar restricciones críticas.
- Validar que el agente identificó las fuentes correctas antes de actuar.

Entrenar o ajustar un modelo puede ser útil en ciertos productos, pero es una decisión diferente. Tiene costos, requisitos de datos, mantenimiento y evaluación propios. No debe utilizarse como solución automática a una documentación desordenada.

ADEV mantiene el conocimiento operativo cerca del repositorio porque allí puede revisarse, versionarse y relacionarse con el sistema que gobierna.

## Una skill no es un prompt guardado

Guardar un prompt repetido es un primer paso, pero una práctica reusable necesita más estructura.

Una skill puede definir:

- Cuándo debe utilizarse.
- Qué contexto necesita.
- Qué pasos y decisiones contiene.
- Qué acciones puede ejecutar.
- Cuándo debe detenerse.
- Qué evidencia debe devolver.
- Cómo se evalúa su resultado.

Esto transforma una instrucción informal en un contrato portable. La skill todavía necesita adaptarse al runtime que la consume, pero su intención puede permanecer neutral respecto del proveedor.

El mismo principio se aplica a templates y checklists. No almacenamos texto solo para ahorrar escritura. Lo convertimos en un mecanismo que guía comportamiento y produce resultados comparables.

## Verificar que el contexto fue comprendido

Que un archivo exista no significa que el agente lo haya aplicado. Antes de una acción importante podemos pedirle que explique:

- Qué fuentes consultó.
- Qué restricciones identificó.
- Qué decisiones considera estructurales.
- Qué autoridad tiene para proceder.
- Qué puntos requieren aclaración.
- Cómo comprobará el resultado.

Esta devolución no necesita convertirse en un documento extenso. Funciona como preflight: permite detectar si la ruta de contexto fue incorrecta antes de modificar el sistema.

También debemos observar el comportamiento. Si el agente declara haber entendido una regla y la incumple repetidamente, la solución puede necesitar un check ejecutable, una redacción más clara o un cambio de herramienta. Repetir el mismo prompt con mayor énfasis rara vez es una estrategia durable.

## Mantener el contexto vigente

El contexto versionado puede quedar obsoleto. Una arquitectura cambia, un comando desaparece, una política se reemplaza y un template continúa indicando el flujo anterior.

Para evitarlo:

- Cada fuente debe tener una autoridad identificable.
- Las decisiones deben enlazar los assets que afectan.
- Los cambios de proceso deben actualizar instrucciones y controles en la misma iteración.
- Las referencias duplicadas deben consolidarse.
- Los ejemplos deben distinguirse de las reglas vigentes.
- La curaduría periódica debe revisar rutas rotas y conocimiento superado.

Un prompt corto sobre contexto obsoleto produce errores con gran eficiencia. La compresión semántica amplifica tanto la coherencia como la deriva.

## El prompt inicial y el prompt maduro

Al iniciar un repositorio, el prompt puede necesitar explicar análisis, diseño e implementación con bastante detalle. Esa etapa es válida. Permite descubrir qué contratos todavía no existen.

Después de cada iteración debemos preguntar qué parte de la instrucción:

- Era exclusiva del problema y debe desaparecer con él.
- Volverá a utilizarse y necesita promoción.
- Contradijo una regla existente.
- Podría convertirse en template o skill.
- Puede verificarse mediante automatización.
- Requiere permanecer como juicio humano.

Con el tiempo, el prompt deja de enseñar todo el método y comienza a señalar la necesidad actual dentro de un método compartido.

## Práctica: reduce un prompt sin perder significado

Selecciona un prompt reciente y marca cada párrafo con una categoría:

1. Necesidad específica.
2. Principio transversal.
3. Conocimiento de producto o arquitectura.
4. Procedimiento repetible.
5. Control verificable.
6. Preferencia sin evidencia.

Conserva la primera categoría en la instrucción. Traslada las categorías dos a cinco a la fuente durable apropiada después de revisar que sean correctas. Elimina o investiga la sexta.

Luego vuelve a escribir el prompt y pide al agente que enumere los contratos que activó. Si el significado se conserva con menos repetición, el sistema ganó madurez.

## Resultado del capítulo

Al terminar este capítulo, el lector puede reconocer deuda de contexto; separar la instrucción temporal de los contratos durables; organizar conocimiento en capas; utilizar compresión semántica sin ocultar ambigüedad; y promover patrones repetidos hacia baselines, templates, skills o controles.

## Puente a la práctica

- [`framework/hardness/06-agent-consumption-guide.md`](../../framework/hardness/06-agent-consumption-guide.md) describe cómo un agente descubre y consume contratos del repositorio.
- [`framework/hardness/02-skill-contract-template.md`](../../framework/hardness/02-skill-contract-template.md) ofrece una estructura neutral para capacidades reutilizables.
- [`starter-kit/examples/minimal-adev-loop/prompts/iteration-01.md`](../../starter-kit/examples/minimal-adev-loop/prompts/iteration-01.md) muestra una instrucción pequeña conectada con una baseline y un roadmap.
