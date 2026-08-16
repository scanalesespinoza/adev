# 13. Objeciones, límites y futuro

## Una práctica seria necesita poder decir «no lo sabemos»

ADEV nació de una convicción optimista: la inteligencia artificial puede ayudarnos a construir mejor tecnología y, con ella, mejorar la vida de las personas. Esa convicción no autoriza a ignorar riesgos ni a presentar experiencias personales como leyes.

Una práctica profesional debe resistir preguntas incómodas:

- ¿Estamos perdiendo habilidades técnicas?
- ¿Los agentes reemplazarán personas?
- ¿Podemos confiarles sistemas críticos?
- ¿La baseline crea seguridad o una nueva ilusión de control?
- ¿ADEV realmente mejora productividad y costo?
- ¿Estamos cambiando autonomía profesional por dependencia de proveedores?
- ¿Quién se beneficia y quién absorbe los daños?

No todas estas preguntas tienen una respuesta cerrada. En algunos casos ADEV ofrece controles. En otros, una hipótesis que todavía necesita medición. Reconocer esa diferencia es parte de la doctrina.

## Objeción 1: «Los profesionales perderán habilidades técnicas»

Es probable que algunas habilidades se practiquen menos. Quien delega generación de código puede perder fluidez para recordar APIs, sintaxis o detalles que antes utilizaba diariamente. Negarlo sería tan poco realista como afirmar que todas esas habilidades dejarán de importar.

Al mismo tiempo aparecen nuevas competencias:

- diseñar contexto y contratos de trabajo;
- comprender capacidades y límites de modelos y agentes;
- integrar herramientas, protocolos y servicios;
- gobernar permisos, datos y efectos externos;
- evaluar alternativas arquitectónicas con rapidez;
- revisar cambios producidos a una escala mayor;
- construir evidencia, observabilidad y recuperación;
- detectar cuándo una explicación plausible no está respaldada.

La transformación no es una suma automática. Una persona puede dejar de practicar codificación profunda sin adquirir criterio arquitectónico. Utilizar agentes no garantiza crecimiento profesional.

ADEV propone un intercambio consciente. El equipo debe decidir qué competencias conserva mediante práctica directa porque son necesarias para revisar, diagnosticar o actuar bajo emergencia; cuáles puede delegar; y cuáles nuevas necesita desarrollar.

Una señal de peligro aparece cuando nadie puede explicar el sistema sin preguntarle al mismo agente que lo construyó. La abstracción es útil mientras exista capacidad humana para validar sus contratos, investigar fallos y recuperar el servicio.

## Objeción 2: «Esto reemplazará desarrolladores»

Los agentes automatizan tareas que antes consumían trabajo humano. Sería irresponsable prometer que eso no afectará roles, contratación o distribución de oportunidades.

ADEV no puede resolver por sí solo las consecuencias laborales de la automatización. Tampoco debería justificar reemplazos mediante comparaciones débiles como “una persona equivale a un departamento”. EventFlow mostró actividad intensa de un conductor experimentado; no demostró que equipos completos sean innecesarios.

El software profesional contiene más que implementación: comprensión de personas, negociación de restricciones, arquitectura, seguridad, operación, investigación, cuidado de datos, respuesta a incidentes y responsabilidad institucional. Los agentes pueden participar en muchas de estas tareas, pero su participación no elimina la necesidad de autoridad, diversidad de perspectiva y rendición de cuentas.

La decisión organizacional importante no es cuántas personas puede retirar después de comprar una herramienta. Es qué nueva capacidad puede crear, cómo redistribuye el trabajo y qué mecanismos protegen calidad, aprendizaje y dignidad profesional.

El futuro no está determinado únicamente por la tecnología. También depende de las decisiones económicas y sociales que tomemos respecto de ella.

## Objeción 3: «Una baseline no vuelve seguro a un agente»

Correcto.

Un archivo de instrucciones puede estar incompleto, contener conflictos o ser ignorado por una herramienta. Un check puede tener falsos negativos. Un revisor puede compartir los mismos sesgos del implementador. Un agente puede recibir una instrucción manipulada desde una fuente externa.

ADEV utiliza la baseline como memoria y entrada al sistema de control, no como barrera infalible. La seguridad requiere varias capas:

- identidad y autoridad verificadas;
- mínimo privilegio;
- aislamiento;
- separación de funciones;
- pruebas y análisis independientes;
- aprobación proporcional al efecto;
- observabilidad;
- contención y recuperación;
- revisión de reglas y permisos.

La dureza —*hardness*— de un agente no significa determinismo perfecto. Significa que expectativas, autoridad, capacidades, efectos y evidencia son suficientemente explícitos para poder anticipar y auditar su conducta con mayor confianza.

Cuando una consecuencia sería inaceptable, la respuesta no consiste en escribir un prompt más solemne. Debemos reducir autonomía, introducir barreras técnicas o no utilizar el agente para esa acción.

## Objeción 4: «No deberíamos usar agentes en sistemas críticos»

La prudencia es razonable. Salud, finanzas, infraestructura, identidad, seguridad física y servicios esenciales pueden producir daños que una rama breve y un rollback no reparan.

ADEV no ofrece una autorización general para introducir agentes en esos sistemas. La decisión necesita considerar:

- severidad y reversibilidad del daño;
- obligaciones legales y regulatorias;
- sensibilidad de los datos;
- capacidad de aislar la ejecución;
- calidad de pruebas y simulaciones;
- independencia de la revisión;
- trazabilidad y explicabilidad necesarias;
- competencia de quienes aprueban;
- respuesta y recuperación disponibles.

En un contexto crítico, una adopción gradual puede comenzar con lectura, análisis, documentación, generación de pruebas o propuestas sin capacidad de modificar el sistema. La autonomía aumenta solo cuando evidencia y gobierno justifican el siguiente efecto.

Puede haber situaciones donde el límite correcto siga siendo no delegar: decisiones clínicas, autorizaciones irreversibles, cambios productivos sin recuperación suficiente o acciones cuyo cumplimiento no puede auditarse. ADEV ayuda a expresar ese límite; no obliga a cruzarlo.

## Objeción 5: «No han demostrado productividad ni retorno»

También es correcto en términos generales.

EventFlow y Homedir demuestran actividad, artefactos y patrones de aprendizaje. No constituyen un experimento controlado que aísle el efecto de ADEV. Las estimaciones históricas de costo, retorno y equivalencia de equipo no tienen un contrafactual medido.

Una evaluación responsable debería registrar:

- tiempo humano real, no inferido desde timestamps;
- costo de modelos, herramientas, revisión e infraestructura;
- alcance y calidad comparables;
- defectos, incidentes y mantenimiento posterior;
- experiencia y composición de los equipos;
- trabajo descartado o rehecho;
- valor observado por usuarios;
- periodo suficiente para medir aprendizaje y operación.

Mientras esa evidencia no exista, ADEV promete una práctica, no un porcentaje: contexto explícito, autonomía acotada, iteraciones pequeñas, verificación continua y aprendizaje durable. Estas propiedades son evaluables aunque el resultado económico varíe.

El retorno puede ser negativo durante la adopción. También puede permanecer negativo si el producto no necesita agentes, el equipo carece de fundamentos o el costo de revisión supera la capacidad creada.

## Objeción 6: «La práctica puede aumentar dependencia tecnológica»

Los agentes suelen depender de modelos, plataformas, cuentas, formatos y servicios controlados por terceros. Cambios de precio, disponibilidad, política o capacidad pueden alterar un flujo de trabajo de un día para otro.

ADEV busca reducir una parte de esa dependencia mediante assets que viven en el repositorio:

- intención de producto;
- decisiones arquitectónicas;
- reglas y políticas;
- contratos de skills;
- criterios de aceptación;
- pruebas y checks;
- registros de decisión y evidencia.

Ese conocimiento puede acompañar al producto aunque cambie el agente. Sin embargo, la portabilidad nunca es perfecta. Dos herramientas interpretan contexto, permisos y protocolos de manera diferente.

La mitigación requiere:

- lenguaje neutral en la doctrina;
- adaptadores específicos separados del conocimiento central;
- formatos inspeccionables y versionados;
- exportación de evidencia;
- pruebas de compatibilidad entre runtimes;
- planes para degradar a un flujo humano o alternativo;
- revisión de costos y términos de servicio.

La independencia no significa evitar proveedores. Significa conservar capacidad de decisión y migración.

## Objeción 7: «Más automatización concentra poder»

Si pocas organizaciones controlan modelos, cómputo, distribución y datos, pueden influir sobre quién accede a la capacidad y bajo qué condiciones. ADEV no neutraliza esa concentración.

Una especificación abierta y portable puede aportar un contrapeso modesto: permite que equipos conserven sus principios, evidencia y forma de trabajar fuera de un producto particular. También facilita que distintos proveedores implementen capacidades compatibles.

Pero la apertura documental no resuelve acceso desigual, extracción de datos, condiciones laborales, impacto ambiental ni dominio de mercado. Esos problemas necesitan competencia, políticas públicas, estándares, auditoría y participación social.

El objetivo no debería ser una tecnología sin problemas —eso no existe— sino un sistema con suficientes contrapesos para detectar abuso, limitar daño y distribuir beneficios.

## La educación que necesitamos

La formación técnica no puede reducirse a memorizar sintaxis ni saltar directamente a “prompting”. Desarrolladores, arquitectos y líderes necesitan una combinación más amplia.

### Desarrolladores

Deben conservar fundamentos de programación, datos, redes, seguridad, pruebas y operación; aprender a inspeccionar cambios agénticos; y practicar diagnóstico sin depender de una explicación generada.

### Arquitectos

Necesitan comprender a quienes habitan el software, diseñar límites y contratos, evaluar alternativas, administrar incertidumbre y conectar decisiones entre producto, tecnología y operación.

### Líderes

Deben gobernar incentivos, riesgo, autoridad, aprendizaje y medición. Comprar licencias no constituye una transformación. El liderazgo crea tiempo para experimentar, protege a quienes reportan fallos y evita premiar volumen sobre resultado.

### Todos los roles

Necesitan comunicación. Dar contexto, describir una necesidad, expresar incertidumbre y discutir evidencia siguen siendo competencias centrales. Una persona que comunica vagamente con su equipo probablemente producirá la misma ambigüedad con un agente.

La formación debería evaluar entregas completas: definición, decisión, implementación, prueba, revisión, operación y aprendizaje. La línea de código es una parte, no la unidad total de competencia.

## El futuro que ADEV quiere ayudar a construir

La visión del autor es una tecnología que reduzca fricción innecesaria: trámites más simples, información accesible, servicios públicos más claros, investigación más rápida y mejores oportunidades para aprender, emprender y cuidar la salud.

Es una aspiración, no una predicción. La misma capacidad puede automatizar exclusión, vigilancia, manipulación o decisiones opacas.

El futuro deseable no es aquel donde las personas desaparecen del trabajo, sino aquel donde dedican menos energía a repetición sin propósito y más a comprender, crear, cuidar y decidir. Los agentes deberían ampliar la capacidad humana sin disolver su responsabilidad.

ADEV contribuye de una manera acotada: propone que el software asistido por agentes conserve intención humana, límites explícitos, evidencia y aprendizaje abierto. No basta para garantizar un buen futuro, pero ayuda a que las decisiones técnicas sean visibles y discutibles.

## Una agenda que permanece abierta

La primera edición deja preguntas sin resolver:

- ¿Qué controles predicen mejor una entrega agéntica confiable?
- ¿Cómo medir retrabajo y calidad sin confundirlos con volumen de código?
- ¿Qué habilidades se degradan y cuáles emergen con el uso prolongado?
- ¿Cómo cambia ADEV en equipos grandes, regulados o distribuidos?
- ¿Qué nivel de autonomía es adecuado para cada clase de efecto?
- ¿Cómo evaluar intención potencialmente dañina sin fingir comprensión moral infalible?
- ¿Qué formatos permiten mover políticas y skills entre herramientas?
- ¿Qué costos económicos y ambientales introduce la práctica?
- ¿Qué resultados obtienen equipos que no participaron en su creación?

Estas preguntas necesitan estudios, datos, adopciones externas y publicación de fallos. La siguiente etapa de ADEV no debería ser acumular afirmaciones más audaces, sino producir evidencia más independiente.

## Práctica: escribe tus condiciones de no adopción

Antes de ampliar el uso de agentes, define tres listas:

1. **Usar ahora:** acciones reversibles cuyo resultado puede verificarse.
2. **Experimentar de forma acotada:** acciones que necesitan aislamiento, revisión adicional o evidencia nueva.
3. **No delegar todavía:** efectos cuyo daño, autoridad o auditabilidad exceden la capacidad actual.

Para cada límite registra qué tendría que cambiar para reconsiderarlo: una prueba, permiso más estrecho, entorno aislado, aprobación especializada, mecanismo de recuperación o evidencia externa.

Una práctica madura no se reconoce solo por lo que automatiza. También por la claridad con que decide qué no automatizar.

## Resultado del capítulo

Al terminar este capítulo, el lector puede evaluar ADEV sin idealización; reconocer riesgos de pérdida de habilidades, sustitución, seguridad, criticidad, dependencia y concentración; distinguir práctica observada de retorno no demostrado; diseñar adopción gradual; y formular preguntas de investigación con evidencia requerida.

## Puente a la práctica

- [`docs/research-agenda.md`](../../docs/research-agenda.md) convierte las preguntas abiertas en un backlog de evidencia.
- [`framework/evidence/README.md`](../../framework/evidence/README.md) define la cadena de prueba preferida.
- [`framework/hardness/00-definition-and-scope.md`](../../framework/hardness/00-definition-and-scope.md) aclara qué puede y qué no puede prometer un agente endurecido.
- [`framework/hardness/07-compatibility-layer.md`](../../framework/hardness/07-compatibility-layer.md) separa doctrina portable de adaptadores específicos.
- [`docs/adoption-maturity-model.md`](../../docs/adoption-maturity-model.md) permite aumentar capacidad de manera gradual.
