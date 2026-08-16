# Antes de comenzar

## Una carta al lector

Este libro parte de una convicción sencilla: la inteligencia artificial es una herramienta, y la responsabilidad por lo que hacemos con ella continúa siendo humana. Un agente puede explorar, proponer, escribir código, ejecutar pruebas y recorrer una parte considerable del ciclo de entrega. No comprende, sin embargo, la necesidad humana de la misma manera que quien diseña el producto; tampoco hereda por sí solo la responsabilidad por sus efectos.

ADEV nace en esa distancia entre capacidad y responsabilidad. Su nombre significa **AI Agentic Development** y designa una práctica para dirigir el desarrollo de software con agentes mediante intención explícita, contexto durable, cambios pequeños y evidencia. No pretende personificar la herramienta ni presentar la autonomía como sustituto del criterio. Busca crear las condiciones para delegar ejecución sin abandonar el gobierno.

La perspectiva que encontrarás aquí proviene de una trayectoria profesional de aproximadamente quince años dedicada a entregar proyectos reales. Comenzó en el desarrollo de aplicaciones y se extendió hacia middleware, sistemas operativos, datos, redes e infraestructura; después incorporó calidad, seguridad, operaciones, gestión de arquitectura y arquitectura empresarial. Esa amplitud no se presenta como prueba universal de que ADEV funciona en todo contexto. Explica desde dónde observa el autor y por qué la práctica conecta producto, software, operación y aprendizaje en lugar de reducir el problema a la generación de código.

## La promesa honesta

Al terminar el libro deberías poder:

- establecer una baseline mínima y compartida para trabajar con agentes;
- expresar una necesidad como comportamiento observable y dividirla en una iteración atómica;
- decidir qué puede ejecutar el agente, qué debe supervisarse y qué requiere aprobación humana;
- conservar producto, arquitectura, calidad y seguridad como planos del trabajo;
- enlazar la implementación con pruebas, revisión, integración, despliegue y comprobación final;
- convertir un fallo valioso en una regla, una prueba, un checklist o un asset reutilizable.

Esta promesa no incluye una cifra universal de productividad, ahorro o retorno. La velocidad y la calidad dependen de la madurez del equipo, el producto, las herramientas, los controles y el entorno. ADEV ofrece un sistema para hacer visible el trabajo y mejorar sus probabilidades de éxito; no elimina la incertidumbre inherente al desarrollo de software.

## Para quién está escrito

La primera edición está dirigida a desarrolladores con experiencia, arquitectos, líderes técnicos, responsables de producto, mantenedores y equipos de plataforma que ya construyen software o se preparan para incorporar agentes a esa labor. También puede servir a quien está formando un equipo y necesita que distintas personas y agentes trabajen con expectativas coherentes.

No es una introducción a la programación, al entrenamiento de modelos ni a la ciencia de datos. Tampoco es el manual de una herramienta o proveedor. Los ejemplos técnicos ayudan a materializar la práctica, pero el objetivo es que los principios sobrevivan al cambio de modelos, interfaces y plataformas.

## Qué es y qué no es ADEV

ADEV es una forma de organizar el comportamiento del sistema de entrega. Coloca al ser humano como arquitecto responsable y al agente como ejecutor con autonomía acotada. Convierte las instrucciones recurrentes en contexto versionado; favorece issues pequeños, ramas breves y pull requests verificables; y trata cada incidente como una oportunidad de mejorar la línea base.

No es una colección de prompts perfectos. Un prompt extenso puede ayudar al principio, pero no escala como memoria organizacional. Tampoco es una autorización para aceptar código que nadie puede explicar ni validar. La delegación de complejidad reduce el trabajo manual que debe observarse línea por línea, pero aumenta la importancia de los planos, los límites, las pruebas y la evidencia observable.

Finalmente, ADEV no promete que el agente acertará en una sola interacción. La realidad cambia, las especificaciones contienen supuestos y toda implementación puede fallar. El beneficio práctico está en probar antes, aprender con pérdidas pequeñas y hacer durable lo aprendido.

## Cómo recorrer el libro

Los primeros tres capítulos establecen la postura: la herramienta no recibe responsabilidad moral, el software se entiende como un hábitat y el arquitecto conserva la intención. Los capítulos 4 al 7 construyen el sistema operativo de la práctica: baseline viva, iteraciones atómicas, contexto durable y el ciclo de crear, verificar y demostrar.

Los capítulos 8 y 9 trasladan esos principios a la autonomía segura y al trabajo de equipos con varios agentes. Los casos de EventFlow y Homedir, en los capítulos 10 y 11, separan experiencia, artefactos observables e interpretación. Los capítulos finales proponen una ruta de adopción, examinan objeciones y límites, y cierran con una primera acción concreta.

Los apéndices forman el puente hacia la ejecución. El mapa de assets técnicos indica dónde encontrar templates, checklists y definiciones reutilizables; el glosario fija el vocabulario; y el apéndice de evidencia explica cómo leer las afirmaciones del libro. No es necesario memorizar esos materiales. Conviene volver a ellos mientras se practica en un repositorio real.

## Un libro y un sistema técnico

Esta edición conserva deliberadamente dos superficies. El manuscrito en español es la fuente editorial canónica de la primera edición porque permite expresar con mayor precisión la experiencia y el contexto cultural del autor. El framework y los assets técnicos mantienen su canon público en inglés para favorecer su reutilización entre herramientas, equipos e industrias.

No son dos proyectos separados. El libro explica por qué y para qué existe la práctica; los assets permiten aplicarla. Cuando una lección aparece durante la ejecución, su destino no debería ser solo un párrafo: si es transferible, debe poder convertirse también en una regla, una prueba, un checklist o una pieza del starter kit. Del mismo modo, ningún asset debería presentarse como doctrina si no puede explicarse por una necesidad o una evidencia.

Una futura edición en inglés deberá adaptar esta obra terminada, no traducir mecánicamente borradores históricos. El significado y la claridad tienen prioridad sobre la simetría entre idiomas.

## Sobre la evidencia

Los casos del libro no tienen todos el mismo peso. Algunas afirmaciones se apoyan en artefactos reproducibles del repositorio; otras son observaciones del autor, interpretaciones editoriales o propuestas todavía por validar. El texto procura marcar esas diferencias y el apéndice C documenta el método empleado.

Un caso individual puede demostrar que algo ocurrió y revelar un mecanismo útil. No basta para probar causalidad, retorno económico ni aplicabilidad universal. Cuando falta una comparación válida, el libro lo reconoce como límite en lugar de completar el vacío con una cifra atractiva.

## Sobre la asistencia con inteligencia artificial

La construcción del manuscrito también es una aplicación consciente de sus principios. El contenido se obtuvo mediante entrevistas extensas al autor y fue consolidado con asistencia de inteligencia artificial. Esa asistencia ayudó a ordenar, contrastar, editar y conectar el material con los assets del repositorio.

El proceso no transfiere autoría ni responsabilidad a la herramienta. El autor determinó la tesis, aportó las experiencias, revisó las decisiones editoriales y responde por el resultado. Cuando una afirmación no cuenta con evidencia suficiente, debe tratarse como experiencia, interpretación o hipótesis, aunque su redacción sea convincente.

## El contrato de lectura

No se espera que aceptes ADEV por fe. Se espera que lo pruebes en una escala donde equivocarte sea barato. Elige un repositorio que puedas controlar, instala una baseline pequeña, define una necesidad observable y acompaña un cambio hasta comprobar su efecto. Luego revisa qué aprendiste y mejora el sistema antes de pedirle más autonomía.

Esa secuencia resume el contrato de este libro: el autor ofrece una práctica abierta al contraste y la mejora; el lector la juzga por su capacidad de producir trabajo comprensible, seguro y verificable. La primera edición no cierra ADEV. Establece un punto desde el cual practicarla con responsabilidad.
