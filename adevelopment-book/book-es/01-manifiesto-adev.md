# 1. Manifiesto ADEV

## Carta al lector

Si trabajas en tecnología, probablemente ya sentiste el cambio. Una tarea que antes exigía horas de búsqueda, escritura y prueba puede comenzar ahora con una conversación. Un agente recorre el repositorio, propone una solución, modifica archivos y ejecuta validaciones antes de que alcances a comprender todos los detalles de lo que produjo.

La primera reacción suele dividirse entre entusiasmo y temor. Algunas personas ven una promesa de velocidad ilimitada. Otras ven una amenaza para el oficio, la calidad y el trabajo humano. Yo decidí adoptar una postura diferente: acercarme a la herramienta, utilizarla con intensidad y aprender a gobernar sus consecuencias.

No lo hice porque creyera que la inteligencia artificial fuera infalible. Lo hice porque no lo es.

Cada aumento de capacidad amplifica tanto nuestras buenas decisiones como nuestras deficiencias. Si entregamos una necesidad ambigua, recibiremos interpretaciones que nunca excluimos. Si el producto carece de dirección, el agente puede construir con velocidad algo que nadie necesitaba. Si la arquitectura solo existe en la cabeza de una persona, una solución local puede contradecir el sistema completo. Si la calidad se revisa al final, los errores también llegarán más rápido al final.

ADEV nace para trabajar dentro de esa tensión. No busca detener la capacidad de los agentes ni entregarse a ella. Busca convertirla en una práctica profesional.

## Las herramientas cambian las eras

La inteligencia artificial suele presentarse como algo separado de la historia humana, casi como la aparición repentina de una nueva clase de ser. Yo prefiero comenzar desde un lugar más sencillo: es una herramienta creada por personas.

La historia de nuestra especie también es la historia de las herramientas con las que ampliamos nuestras capacidades. Algunas extendieron nuestra fuerza. Otras extendieron nuestros sentidos, nuestra memoria, nuestra movilidad o nuestra posibilidad de comunicarnos. Cada una cambió lo que podíamos hacer y, con ello, cambió nuestra manera de vivir y organizarnos.

Los agentes de inteligencia artificial pertenecen a esa historia, aunque su escala sea extraordinaria. Pueden interpretar lenguaje, relacionar grandes cantidades de información y ejecutar cadenas de acciones con una autonomía operacional que antes no asociábamos con una herramienta cotidiana. Esa capacidad puede inaugurar una nueva etapa del trabajo intelectual y técnico.

Pero llamarla herramienta no pretende disminuir su importancia. Pretende ubicar correctamente la responsabilidad.

Una herramienta no decide por nosotros qué futuro vale la pena construir. No comprende por sí sola a las personas que vivirán con las consecuencias. No responde moral, profesional ni socialmente por un producto. Incluso cuando actúa con autonomía, esa autonomía existe porque alguien escogió la herramienta, definió un objetivo, proporcionó contexto, concedió permisos y aceptó incorporar su resultado.

La responsabilidad sigue siendo nuestra.

## Ni oráculo ni culpable

Uno de los errores más peligrosos al trabajar con agentes es atribuirles capacidades humanas que no poseen. Hablamos con ellos mediante lenguaje natural, responden con seguridad y pueden ejecutar trabajo complejo. Esa apariencia facilita que confundamos fluidez con comprensión, una respuesta plausible con una decisión correcta o una acción autónoma con responsabilidad propia.

Entonces aparece una contradicción. Confiamos en el agente como si fuera un profesional completamente competente cuando entrega una respuesta, pero lo tratamos como culpable independiente cuando esa respuesta produce un daño.

ADEV rechaza ambas posturas.

El agente no es un oráculo al cual creerle ni una excusa a la cual transferirle las consecuencias. Es una capacidad de ejecución que debe operar dentro de un sistema de intención, contexto, autoridad y verificación diseñado por personas.

Esto no significa que toda responsabilidad pertenezca siempre a un único individuo. En una organización puede estar distribuida entre quien define el producto, quien diseña la arquitectura, quien autoriza el acceso, quien aprueba el cambio y quien opera el servicio. Lo importante es que esa responsabilidad permanezca explícitamente en el sistema humano. Nunca termina en la frase: “lo hizo la IA”.

Cuando un agente introduce un defecto, la primera obligación es contener su efecto. Después debemos comprender cómo llegó hasta allí. Tal vez la instrucción fue ambigua. Tal vez faltaba un límite arquitectónico. Tal vez el agente excedió su autoridad. Tal vez la revisión confirmó únicamente que el código compilaba y nunca recorrió el comportamiento real. La corrección no termina al reparar el código: el aprendizaje debe mejorar también las pruebas, las reglas, los controles o el conocimiento que guiarán el siguiente cambio.

## Lo nuevo no elimina la ingeniería

El desarrollo con agentes no reemplaza las bases de la ingeniería de software. El código continúa ejecutándose sobre sistemas operativos, redes, almacenamiento, bases de datos y servicios. Continúa sujeto a errores de diseño, permisos incorrectos, dependencias vulnerables, fallos de integración y necesidades humanas mal comprendidas.

Lo que cambia es la relación entre intención y ejecución.

En el desarrollo tradicional, gran parte de la ejecución estaba limitada por la velocidad con que una persona podía escribir, integrar y revisar cada pieza. Con agentes, podemos solicitar una intención y recibir rápidamente una implementación completa, junto con decisiones que no formulamos de manera explícita. El resultado puede variar entre ejecuciones y contener supuestos que nunca vimos aparecer.

Por eso no basta con “programar como antes, pero más rápido”. Cuando el costo de producir alternativas disminuye, el cuello de botella se desplaza hacia la capacidad de dirigirlas, comprender su impacto y demostrar que cumplen lo prometido.

La velocidad de generación aumenta la importancia de la arquitectura. La facilidad para modificar archivos aumenta la importancia del alcance. La autonomía aumenta la importancia de los permisos. La abundancia de código aumenta la importancia de verificar.

El nuevo paradigma no elimina el oficio. Eleva el lugar donde el oficio produce valor.

## Del programador al arquitecto responsable

Durante mi carrera trabajé desde el desarrollo de aplicaciones hasta las capas que permiten operarlas: middleware, sistemas operativos, infraestructura, redes, almacenamiento, bases de datos, certificados y DNS. También recorrí requerimientos, calidad, seguridad, producción, arquitectura de soluciones y arquitectura empresarial.

Esa amplitud cambió mi manera de observar un cambio de software. Una implementación no termina en la función que fue modificada. Continúa en la prueba que la protege, el servicio que la ejecuta, la identidad que puede utilizarla, la infraestructura que la sostiene y la persona que depende de ella.

Los agentes hicieron visible el valor de esa mirada completa. Podían producir piezas con una velocidad que yo no podía igualar manualmente, pero alguien todavía debía decidir qué piezas tenían sentido, cómo debían relacionarse y qué consecuencias eran aceptables.

Así apareció el cambio de rol: dejar de medir mi aporte por la cantidad de código escrito y comenzar a medirlo por la calidad del sistema que podía dirigir.

En ADEV, llamamos arquitecto a quien conserva esa responsabilidad, aunque su cargo formal sea desarrollador, líder técnico, responsable de producto u operador. El arquitecto comprende la necesidad, establece los planos, define los límites y comprueba que el resultado siga siendo habitable. El agente puede analizar, proponer e implementar dentro de esos planos.

No se trata de una jerarquía de valor. Se trata de una asimetría de responsabilidad.

## El software como hábitat

Una arquitectura existe para construir lugares que alguien pueda habitar. En tecnología construimos espacios digitales donde las personas consultan, crean, deciden, aprenden, compran, colaboran o piden ayuda. Una solución puede ser técnicamente correcta y, aun así, resultar confusa, incómoda, insegura o inútil para quien debe vivir dentro de ella.

Esta idea define el límite principal de la delegación. El agente puede proponer una estructura, pero la persona debe comprender qué necesita quien habitará el producto.

Imagina una casa parcialmente construida. Sus espacios ya fueron dimensionados y algunas paredes sostienen la estructura. Le pides a un ejecutor que construya la cocina. El ejecutor encuentra una distribución que resuelve perfectamente la cocina, pero para realizarla derriba dos paredes y transforma todo el plano de la casa.

La cocina puede ser buena y la solución puede estar equivocada.

Eso ocurre cuando un agente recibe un problema local sin los planos generales. Su objetivo inmediato es resolver la solicitud. Si no conoce qué elementos son estructurales, qué experiencia debe conservar el producto o qué restricciones no puede cruzar, una optimización local puede convertirse en una regresión global.

ADEV existe para que los planos no dependan de la memoria privada del arquitecto. Producto, arquitectura, calidad, seguridad y operación deben convertirse en contexto que las personas y los agentes puedan consultar antes de mover una pared.

## Qué es ADEV

**ADEV —AI Agentic Development— es una práctica para dirigir la entrega de software con agentes mediante responsabilidad humana, contexto explícito, autonomía acotada, verificación continua y evidencia.**

No es un modelo de inteligencia artificial. No es una colección de prompts perfectos. No es una herramienta específica ni una marca que obligue a utilizar un proveedor. Tampoco es una promesa de reemplazar equipos o construir cualquier producto en un plazo extraordinario.

Es un sistema de trabajo que intenta responder cinco preguntas:

1. **¿Qué resultado humano queremos producir?** Antes de implementar, definimos la necesidad y el comportamiento observable del producto.
2. **¿Qué planos gobiernan el cambio?** Hacemos explícitas las decisiones de producto, arquitectura, calidad, seguridad y operación.
3. **¿Qué puede decidir y ejecutar el agente?** Concedemos autonomía dentro de límites proporcionales al riesgo, el impacto y la reversibilidad.
4. **¿Cómo sabremos que avanzamos correctamente?** Creamos y verificamos como parte del mismo movimiento, desde el entorno local hasta la entrega real.
5. **¿Qué aprenderá el sistema cuando falle?** Convertimos los errores en código corregido, pruebas, principios, checklists, automatización o conocimiento especializado.

La práctica vive en dos planos complementarios. El libro explica sus decisiones, tensiones y aprendizajes. Los assets técnicos permiten llevarlos a un repositorio mediante instrucciones para agentes, templates, políticas, rituales, pruebas y checklists. La doctrina sin ejecución se vuelve discurso. La ejecución sin doctrina repite errores que nadie convierte en conocimiento.

## La promesa honesta

ADEV no garantiza que un agente produzca la respuesta correcta. No elimina la prueba y el error, la deuda técnica ni el riesgo. Tampoco puede asegurar un porcentaje universal de productividad, ahorro o calidad.

Su promesa es más modesta y, para mí, más útil: aumentar la probabilidad de que el tiempo invertido con agentes produzca software útil, verificable y alineado con una intención humana.

Esa probabilidad aumenta cuando el trabajo es pequeño, los planos son visibles, la autoridad está limitada, las pruebas acompañan la creación y los fallos mejoran la baseline. Aumenta cuando dejamos de confiar en una respuesta por su apariencia y comenzamos a exigir evidencia. Aumenta cuando una entrega no termina en el código generado, sino en la acción que un usuario —una persona, otro sistema o una automatización— puede realizar con éxito.

La práctica también exige aceptar un costo inicial. Construir contexto, ordenar decisiones, automatizar controles y aprender a trabajar con agentes requiere tiempo. ADEV no es un atajo para terminar el próximo proyecto sin esfuerzo. Es una inversión para mejorar la capacidad de entregar los proyectos que vendrán después.

## Una práctica que aprende

ADEV no apareció terminada. Su primera formulación pública habló de desarrollo aumentado y de la multiplicación de capacidades. Después, la experiencia mostró que la velocidad no era el problema más interesante. El desafío real era gobernarla.

EventFlow funcionó como laboratorio inicial. Homedir se convirtió después en un campo de prueba más durable. Los fallos, las regresiones, los cambios demasiado grandes, las diferencias entre entornos y las decisiones sin fundamento fueron dejando reglas. Algunas se convirtieron en instrucciones. Otras en pruebas, gates de integración, checklists o assets reutilizables.

El principio detrás de esa evolución es sencillo:

> Cada fallo importante debe dejar al sistema mejor preparado para el siguiente intento.

Eso no significa que el sistema jamás repetirá un error. Significa que corregir una manifestación sin mejorar la forma de trabajar es una oportunidad desperdiciada.

Una baseline viva tampoco es un archivo que crece sin límite. Debe revisarse, consolidarse y mantener una jerarquía clara. Lo transversal se convierte en principio. Lo específico permanece cerca de su dominio. Lo verificable se automatiza cuando aporta valor. Lo obsoleto se corrige o se retira.

## La invitación

Quiero contribuir a un futuro donde la tecnología reduzca fricción y devuelva tiempo a las personas; donde más profesionales puedan convertir necesidades reales en soluciones confiables; y donde esa capacidad no quede concentrada en unas pocas organizaciones o herramientas.

Ese futuro también necesita contrapesos. Mayor capacidad sin límites puede amplificar errores, abuso y desigualdad. Por eso ADEV insiste en autoridad explícita, seguridad, supervisión, evidencia y recuperación. No pretende decidir por todos qué futuro es correcto. Pretende hacer visibles las decisiones y las consecuencias para que podamos responder por ellas.

Este libro es una invitación a practicar, no solamente a estar de acuerdo.

Cuando lo termines, el primer paso no será adoptar una plataforma completa ni escribir un prompt extraordinario. Será elegir un repositorio real, incorporar una baseline mínima y entregar un cambio pequeño recorriendo el ciclo completo hasta comprobar su comportamiento.

La herramienta aporta capacidad. Tú aportas intención, criterio y responsabilidad.

Ahí comienza ADEV.

## Resultado del capítulo

Al terminar este capítulo, el lector puede explicar ADEV sin recurrir a promesas de velocidad mágica: una práctica abierta para gobernar la entrega con agentes, mantener la responsabilidad humana y convertir ejecución probabilística en resultados verificables.

## Puente a la práctica

- La [práctica normativa de ADEV](../../framework/README.md) contiene las definiciones y contratos portables que sostienen el libro.
- El [starter kit](../../starter-kit/README.md) convierte esos principios en un recorrido aplicable a repositorios reales.
- El [índice de evidencia](../../docs/evidence-index.md) separa la doctrina transferible de los artefactos concretos que la respaldan.

## Antecedentes editoriales

- [Whitepaper: Measuring the Impact of Augmented Development](https://www.linkedin.com/pulse/whitepaper-measuring-impact-augmented-development-canales-espinoza-4kw8e) — experimento y estimaciones iniciales que el libro somete a una distinción más estricta entre actividad observada y resultados inferidos.
- [aDevelopment: la nueva era del desarrollo aumentado](https://es.linkedin.com/pulse/adevelopment-la-nueva-era-del-desarrollo-aumentado-canales-espinoza-mof8e) — primera definición pública de la práctica.
- [Manifiesto A-Dev: La Liberación del Arquitecto](https://es.linkedin.com/pulse/manifiesto-a-dev-la-liberaci%C3%B3n-del-arquitecto-sergio-canales-espinoza-c7ihf) — antecedente narrativo del manifiesto actual.
