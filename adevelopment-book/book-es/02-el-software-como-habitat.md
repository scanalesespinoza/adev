# 2. El software como hábitat

## Antes de construir, alguien debe vivir allí

Cuando hablamos de arquitectura de software, es fácil comenzar por las piezas: servicios, interfaces, bases de datos, colas, contenedores y redes. Son componentes importantes, pero ninguno explica por sí mismo por qué vale la pena construir el sistema.

Una arquitectura existe para crear un lugar que alguien pueda habitar.

En un edificio, la estructura sostiene actividades humanas: descansar, trabajar, encontrarse, cuidar, aprender. En un producto digital ocurre algo semejante. Las personas entran para consultar información, completar un trámite, coordinarse con otras, tomar una decisión o resolver una necesidad. Durante ese tiempo viven dentro de las posibilidades y limitaciones que diseñamos.

Pensar el software como hábitat cambia el punto de partida. Ya no preguntamos primero qué tecnología queremos utilizar. Preguntamos quién llegará, qué intenta conseguir, qué necesita comprender y qué experiencia debería encontrar mientras lo hace.

La respuesta nunca es puramente estética. Una interfaz clara, una autorización correcta, un tiempo de respuesta aceptable y una recuperación comprensible forman parte de la misma experiencia. Para quien utiliza el sistema, producto, arquitectura, calidad y seguridad no son departamentos separados. Son propiedades del lugar que le entregamos.

## El usuario no habita nuestros componentes

Los equipos técnicos suelen describir el trabajo mediante objetos internos: crear un endpoint, agregar una tabla, actualizar un controlador, configurar un pipeline. Estas tareas pueden ser necesarias, pero el usuario no experimenta ninguna de ellas de manera aislada.

El usuario experimenta acciones.

Consulta la temperatura de una ciudad. Reserva una hora. Publica un evento. Recupera su acceso. Confirma que un pago fue recibido. Cada acción conecta una intención con un resultado observable.

Por eso una necesidad de producto debería poder expresarse antes de diseñar su implementación:

> Una persona necesita consultar la temperatura actual de una ciudad del país para decidir cómo prepararse antes de viajar.

Esta frase todavía no selecciona un framework, una API ni un mecanismo de persistencia. Define a una persona, una necesidad, una acción y una decisión que el resultado permitirá tomar.

Podemos convertirla en un primer contrato de comportamiento:

- La persona puede indicar una ciudad válida.
- El producto entrega una temperatura comprensible y su momento de actualización.
- Si la ciudad no existe o la información no está disponible, el producto explica qué ocurrió.
- La acción puede repetirse sin exigir conocimientos técnicos.

La implementación se puede dividir después en piezas pequeñas. El contrato permanece como referencia para saber si esas piezas construyen el hábitat correcto.

## La acción es la unidad de verdad del producto

En ADEV, una implementación técnica debe contribuir a una parte verificable de un proceso. Esto no significa que cada commit tenga que entregar una experiencia completa, pero sí que su propósito debe relacionarse con una acción observable.

Una acción puede crear, consultar, modificar, eliminar, mover, autorizar o comunicar algo. Quien la ejecuta puede ser una persona, otro sistema o una automatización. En todos los casos existe un consumidor que espera una respuesta.

Esta orientación protege al equipo de una trampa frecuente: completar tareas técnicas sin poder demostrar progreso de producto. Podemos crear capas, clases y configuraciones durante días y seguir sin saber si alguien está más cerca de resolver su problema.

El vínculo con una acción permite formular tres preguntas durante todo el desarrollo:

1. ¿Qué podrá hacer el consumidor después de este cambio?
2. ¿Cómo observaremos que esa acción produce el resultado esperado?
3. ¿Qué parte del comportamiento todavía no está disponible?

Si no podemos responderlas, probablemente estamos construyendo una pieza demasiado alejada de la experiencia o todavía no entendemos su propósito.

## El contrato de producto

Los agentes necesitan acceder a la intención del producto sin reconstruirla desde conversaciones privadas. Para eso, el repositorio debe contener una fuente canónica de conocimiento de producto.

No tiene que ser una especificación gigantesca. Su primera versión puede ser breve, siempre que responda con claridad:

- ¿A quién sirve el producto?
- ¿Qué problema intenta resolver?
- ¿Qué acciones principales debe permitir?
- ¿Qué resultado define el éxito para esas personas?
- ¿Qué comportamientos son obligatorios?
- ¿Qué está explícitamente fuera de alcance?
- ¿Qué términos del dominio tienen un significado preciso?
- ¿Qué supuestos todavía deben validarse?

Esta información puede vivir en una carpeta `product/`, `docs/product/` o en la convención que el repositorio adopte. El nombre importa menos que su autoridad: personas y agentes deben saber dónde encontrarla y qué hacer cuando una solicitud la contradice.

`ADEV.md` no debería copiar toda esa información. Su trabajo es indicar que la fuente existe, que debe consultarse antes de cambios relevantes y que una contradicción requiere detenerse o escalar la decisión.

El contrato tampoco permanece intacto para siempre. Las necesidades cambian, aparecen restricciones y algunas hipótesis resultan equivocadas. Debe poder evolucionar mediante decisiones visibles y trazables. Una baseline viva no protege únicamente el código; protege también la comprensión compartida de lo que estamos intentando construir.

## Comenzar por lo visible

Cuando un producto empieza desde cero, una representación visible puede ayudar a convertir una idea abstracta en una conversación concreta. Una página, un flujo simple o una interfaz inicial permiten discutir jerarquía, lenguaje, acciones y alcance antes de completar toda la implementación.

Este primer corte no tiene que fingir que el producto ya funciona. Puede ser un esqueleto de experiencia: una estructura coherente que muestre qué encontrará primero la persona y cómo se relacionarán las capacidades futuras.

Conviene distinguirlo de un producto mínimo viable. Un MVP debe entregar valor utilizable y permitir aprender de su uso. Una cáscara visual que todavía no ejecuta la acción principal puede orientar el diseño, pero no constituye por sí sola una entrega de producto.

El primer issue puede limitarse, por ejemplo, a establecer una estructura visual reutilizable y una apariencia consistente. Sus criterios de aceptación deben declarar con honestidad qué comportamiento existe y cuál todavía es ilustrativo. Esa claridad evita que una demostración visual se convierta accidentalmente en una promesa funcional.

Los agentes pueden ayudar a dividir el trabajo. Pueden detectar que un issue contiene múltiples acciones, proponer cortes menores o señalar criterios ausentes. La persona responsable decide si esa división conserva la intención original. Una tarea puede ser técnicamente atómica y, aun así, dejar de tener sentido para el producto.

## Calidad y seguridad también se habitan

Los requisitos llamados no funcionales suelen aparecer después de definir las capacidades: rendimiento, disponibilidad, privacidad, accesibilidad, recuperación y seguridad. La expresión puede sugerir que son secundarios. Para el usuario, no lo son.

Una consulta que entrega la respuesta correcta cuando ya dejó de ser útil no cumple realmente su propósito. Un formulario que funciona pero expone información privada no es una buena solución. Un proceso que falla sin explicar cómo continuar convierte una excepción técnica en frustración humana.

Estas propiedades nacen junto con la necesidad:

- La sensibilidad de los datos influye en quién puede acceder y qué debe registrarse.
- La urgencia de la acción influye en el rendimiento y la disponibilidad esperados.
- Las consecuencias del error influyen en la revisión, la recuperación y la supervisión necesarias.
- Las capacidades de las personas influyen en accesibilidad, lenguaje y claridad.
- El contexto operativo influye en conectividad, dispositivos y tolerancia a interrupciones.

Después, la arquitectura traduce esas necesidades en decisiones técnicas. Pero la razón de esas decisiones permanece en el contrato de producto. Sin ese vínculo, un control puede convertirse en ceremonia y una optimización puede perseguir una métrica que nadie necesita.

## Restricciones antes que preferencias

Una buena solución no nace de elegir las herramientas más populares o más poderosas. Nace de reconciliar la necesidad con condiciones reales.

Antes de seleccionar el stack, debemos conocer las capacidades del equipo, la infraestructura disponible, el presupuesto, el tiempo, las condiciones de operación y las tecnologías que la organización puede sostener. Una plataforma sofisticada puede ser técnicamente apropiada y económicamente inviable. Una solución mínima puede ser barata y no cumplir los atributos de seguridad o disponibilidad necesarios.

La arquitectura debe encontrar una combinación suficiente, mantenible y verificable. No existe una tecnología universalmente mejor fuera de su contexto.

Este principio es especialmente importante al trabajar con agentes. Un modelo puede recomendar patrones comunes porque aparecen con frecuencia en su conocimiento general. Esa frecuencia no demuestra que correspondan a nuestro producto. El agente aporta alternativas; el arquitecto debe relacionarlas con la realidad económica, técnica y humana del sistema.

## Una casa con planos consultables

Volvamos a la casa. El contrato de producto explica qué tipo de lugar estamos construyendo. ¿Es una vivienda, un restaurante, una escuela? ¿Cuántos espacios necesita y qué actividades deben ocurrir en ellos?

La arquitectura explica cómo puede sostenerse ese lugar. Identifica paredes estructurales, conexiones, límites y zonas donde existe libertad para hacer ajustes.

La calidad explica las propiedades que cada espacio debe conservar. Una pared junto a un baño enfrenta condiciones distintas a una división decorativa.

La seguridad establece protecciones para las personas y el entorno: instalaciones, accesos, materiales, rutas de salida y normas que no pueden ignorarse.

El agente que construye una parte necesita saber dónde encontrar esos planos y cuándo una decisión excede su autoridad. No necesita cargar cada documento completo en toda interacción. Necesita un mapa confiable que lo conduzca al conocimiento pertinente.

La carpeta de producto es el primer plano porque evita el error más costoso: construir correctamente el lugar equivocado.

## Qué significa terminar

Una tarea no termina cuando el agente deja de escribir ni cuando el código compila. Termina cuando existe evidencia proporcional al alcance comprometido.

Si el issue prometía una estructura visual, debemos poder recorrerla y comprobar sus estados relevantes. Si prometía consultar una temperatura, un consumidor debe realizar la consulta y observar la respuesta esperada. Si la iteración solo habilitaba una pieza interna, debemos demostrar su contrato técnico y conservar el vínculo con la acción futura que hace necesaria esa pieza.

La realidad puede mostrar que la especificación era incompleta o que el resultado necesita otra iteración. Eso no invalida el método. ADEV no espera perfección en un intento. Utiliza cambios pequeños para aprender sin esconder el fallo dentro de una entrega demasiado grande.

La inteligencia artificial no elimina la prueba y el error. Reduce el costo de recorrer ese ciclo cuando el trabajo está bien delimitado y la verificación acompaña cada paso.

## Práctica: escribe el primer contrato

Antes de pedirle a un agente que implemente una funcionalidad, escribe una página con estas frases:

1. Este producto ayuda a…
2. El problema que esa persona enfrenta es…
3. La primera acción que debe poder realizar es…
4. Sabremos que funciona cuando…
5. Sería inaceptable que…
6. En esta primera entrega no construiremos…
7. Todavía asumimos, pero no hemos comprobado, que…

Pide después al agente que identifique ambigüedades, comportamientos múltiples y decisiones ausentes. Utiliza sus preguntas para mejorar el contrato, no para transferirle la decisión final.

Cuando la necesidad pueda convertirse en una acción observable, tendrás el primer plano del hábitat.

## Resultado del capítulo

Al terminar este capítulo, el lector puede definir un producto desde la persona, el problema y la acción observable; registrar un contrato mínimo de producto; distinguir un esqueleto visual de una entrega utilizable; y evaluar tecnologías desde restricciones reales en lugar de preferencias aisladas.

## Puente a la práctica

- El recorrido de adopción comienza en [`starter-kit/DAY_0.md`](../../starter-kit/DAY_0.md).
- Las decisiones y sus reversiones pueden registrarse mediante [`starter-kit/DECISION_LOG.md`](../../starter-kit/DECISION_LOG.md).
- El contrato reutilizable de conocimiento de producto está identificado como un asset pendiente en el [contrato editorial](../../publishing-kit/17-spanish-first-edition-editorial-charter.md); no se inventa en este capítulo antes de su propia iteración técnica.

## Antecedente editorial

- [La arquitectura que se habita](https://es.linkedin.com/pulse/la-arquitectura-que-se-habita-sergio-canales-espinoza-igiqe) — ensayo público que introdujo la arquitectura como una decisión humana orientada a quienes utilizarán el sistema.
