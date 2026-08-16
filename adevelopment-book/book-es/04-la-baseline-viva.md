# 4. La baseline viva

## Cuando la documentación comienza a cambiar el resultado

Un documento se vuelve operativo cuando sus defectos producen consecuencias y sus mejoras modifican el comportamiento futuro.

Eso ocurrió con `ADEV.md`. Al principio era una colección de recomendaciones para orientar el trabajo con agentes. Después de varias semanas, empezó a aparecer una señal distinta: había menos interrupciones por problemas repetidos y más tiempo disponible para avanzar. Cuando reaparecía un error que supuestamente estaba cubierto, la pregunta ya no era solamente qué falló en el código. También había que preguntar qué principio era ambiguo, qué contexto faltaba o por qué el control no había logrado aplicarlo.

La baseline dejó de ser documentación auxiliar cuando comenzó a depurarse como parte del sistema de entrega.

En ADEV, llamamos *baseline viva* al conjunto mínimo y versionado de principios, contratos y referencias que gobiernan cómo personas y agentes trabajan en un repositorio. Es viva porque aprende de la ejecución. Es una baseline porque ofrece un punto común desde el cual decidir, implementar y verificar.

No es un manual que deba leerse completo antes de cada acción. Tampoco es una memoria infinita de todo lo que alguna vez ocurrió.

## `ADEV.md` es un mapa, no una enciclopedia

El archivo `ADEV.md` funciona como punto de entrada. Declara los principios que deben aplicarse y conduce hacia las fuentes donde vive el detalle.

Puede establecer, por ejemplo, que:

- Todo comportamiento del sistema debe versionarse cuando sea reproducible como código.
- Los cambios respetan las decisiones de arquitectura existentes.
- La calidad y la seguridad forman parte de la definición de terminado.
- Las entregas se realizan mediante cambios atómicos y trazables.
- Las acciones destructivas, privilegiadas o externas requieren autoridad explícita.

Pero no necesita copiar el modelo de dominio, todas las decisiones arquitectónicas, cada procedimiento operativo ni el catálogo completo de pruebas. Debe enlazar las fuentes canónicas y explicar cuándo consultarlas.

Una estructura saludable separa:

- **Principios de práctica:** cómo se trabaja y qué no puede omitirse.
- **Producto:** qué se construye, para quién y qué comportamientos debe conservar.
- **Arquitectura:** cómo se organiza el sistema y qué decisiones son estructurales.
- **Calidad y seguridad:** qué propiedades y controles deben demostrarse.
- **Operación:** cómo se entrega, observa, recupera y mantiene el producto.
- **Iteración:** qué necesidad específica se resolverá ahora.

Esta separación permite que el agente cargue el conocimiento pertinente sin convertir cada solicitud en una lectura indiscriminada de todo el repositorio.

## Comenzar con una base pequeña

Es posible escribir cientos de reglas antes de la primera iteración. También es posible equivocarse cientos de veces sobre problemas que todavía no existen.

ADEV parte de fundamentos conocidos y del contexto real del repositorio. Compilar antes de publicar, probar el comportamiento, proteger secretos, limitar privilegios, mantener responsabilidades separadas y evitar cambios destructivos sin autorización son ejemplos de una base razonable. Después, la ejecución revela qué necesita mayor precisión.

La baseline inicial no pretende anticipar todas las situaciones. Debe ser suficiente para comenzar de manera segura y pequeña.

Este enfoque evita dos extremos:

- Una baseline vacía que obliga a reconstruir las expectativas en cada prompt.
- Una baseline gigantesca que institucionaliza supuestos, contradicciones y carga cognitiva antes de obtener evidencia.

La madurez no se mide por la cantidad de reglas. Se observa en la claridad con que el sistema guía decisiones y previene fallos relevantes sin obstaculizar el trabajo.

## Del fallo a una protección durable

Un defecto corregido únicamente en su manifestación puede reaparecer con otra forma. Para cerrar el aprendizaje debemos seguir la cadena completa:

> **Incidente → comprensión → decisión → protección → evidencia → reutilización.**

Imagina que un cambio funciona localmente, pero falla en integración porque una prueba depende del idioma predeterminado del entorno. La corrección inmediata puede fijar esa prueba. El aprendizaje más amplio exige preguntar:

- ¿Había textos de usuario hardcodeados?
- ¿El locale esperado estaba declarado?
- ¿Los valores predeterminados eran consistentes?
- ¿El entorno local y CI ejecutaban el mismo contrato?
- ¿Existen otras pruebas con la misma dependencia silenciosa?

La respuesta puede producir varios assets:

- Código corregido para resolver el defecto.
- Una prueba de regresión que reproduzca el caso.
- Una regla transversal sobre textos y locale.
- Un checklist para configuraciones por entorno.
- Un validador automatizado de cobertura multilenguaje.
- Un caso de estudio que permita transferir la lección.

El aprendizaje no pertenece necesariamente a un solo lugar. Cada representación cumple una función.

## Dónde vive cada lección

La clasificación evita que todos los errores terminen convertidos en párrafos dentro de `ADEV.md`.

| Naturaleza de la lección | Destino principal |
| --- | --- |
| Defecto concreto | Código corregido |
| Comportamiento que no debe regresar | Prueba automatizada |
| Principio transversal de trabajo | `ADEV.md` o doctrina aplicable |
| Comprobación contextual todavía manual | Checklist |
| Detalle de una tecnología o entorno | Conocimiento especializado cercano al dominio |
| Riesgo verificable de manera repetible | Check automatizado del outer loop |
| Conflicto, decisión y resultado transferibles | Caso de estudio o evidencia indexada |

Una regla útil puede expresarse así:

> Lo transversal se convierte en principio; lo contextual se documenta cerca de su dominio; lo comprobable se automatiza; lo recurrente debe quedar protegido.

Esto también evita que una particularidad de Homedir, EventFlow o una herramienta específica se convierta accidentalmente en doctrina universal.

## Las reglas necesitan autoridad y precedencia

Una lista plana funciona mientras todas las reglas apuntan en la misma dirección. En la realidad, pueden competir.

Una instrucción puede favorecer autonomía, mientras otra exige aprobación para acciones externas. Una regla de entrega rápida puede chocar con una validación obligatoria. Una preferencia tecnológica puede contradecir una decisión de arquitectura registrada.

La baseline debe explicar qué ocurre cuando dos principios interactúan:

1. Las restricciones legales, de seguridad y de protección de datos no se omiten por velocidad.
2. La autoridad explícita limita la autonomía operativa.
3. El contrato de producto define la intención; la arquitectura limita cómo realizarla.
4. Las reglas específicas de un dominio pueden especializar una regla general sin contradecir sus garantías.
5. Una excepción debe quedar documentada con alcance, responsable y condición de salida.
6. Cuando la contradicción no puede resolverse, el agente se detiene y escala.

La analogía con las leyes es útil: no basta con acumular normas. Se necesita coherencia, jerarquía y una forma de interpretar conflictos.

Una baseline que no declara precedencia puede producir obediencia selectiva: el agente encuentra una regla que justifica continuar e ignora otra que exigía detenerse.

## La regla escrita y la regla ejecutable

Un principio importante no debería depender solamente de que alguien recuerde leerlo.

Si la baseline exige compilar y ejecutar pruebas en el inner loop, el outer loop debe repetir esos contratos en un entorno independiente. Si exige proteger secretos, CI debe inspeccionar el cambio con controles apropiados. Si establece límites arquitectónicos verificables, un check puede detectar dependencias prohibidas o capas atravesadas incorrectamente.

Esta simetría no convierte toda regla en automatización. Algunas decisiones requieren juicio. Pero obliga a preguntar qué evidencia sostendrá cada principio.

Podemos clasificar una regla por su fuerza:

- **Declarada:** existe como expectativa legible.
- **Guiada:** una plantilla o skill ayuda a aplicarla.
- **Revisada:** otra persona o agente comprueba su cumplimiento.
- **Ejecutable:** una prueba o política puede bloquear la desviación.
- **Observada:** el entorno final confirma el comportamiento prometido.

La madurez consiste en elevar la fuerza de las reglas importantes cuando el costo y el riesgo lo justifican, no en automatizar todo indiscriminadamente.

## Curar también significa reducir

Durante una entrega, una nueva regla suele escribirse con urgencia. Es razonable: primero hay que contener el problema y preservar el aprendizaje. Si ese modo de escritura continúa sin revisión, la baseline acumula deuda.

Una cadencia útil combina:

- **Captura inmediata:** registrar el aprendizaje cuando está fresco.
- **Revisión frecuente:** consolidar cambios recientes y detectar duplicación.
- **Pausa estructural periódica:** evaluar jerarquía, claridad, cobertura y costo del conjunto.

Como referencia, una revisión semanal puede ordenar los ajustes activos y una revisión mensual más profunda puede comprobar la arquitectura de la baseline. La frecuencia debe adaptarse al ritmo y riesgo del repositorio; no es una ceremonia universal.

La curaduría busca:

- Fusionar reglas equivalentes.
- Separar principios de detalles técnicos.
- Resolver contradicciones.
- Eliminar instrucciones obsoletas.
- Convertir texto repetido en templates o checks.
- Mejorar enlaces hacia fuentes especializadas.
- Aclarar qué es obligatorio y qué es recomendado.
- Registrar decisiones superadas sin borrar su historia.

Una baseline viva no es un archivo que siempre crece. Es un sistema que aprende y se organiza.

## El costo del contexto

Cada instrucción que entregamos a un agente consume atención y capacidad de contexto. Un archivo extenso, repetitivo o desordenado obliga a procesar información irrelevante y puede dificultar que los principios importantes destaquen.

El objetivo no es minimizar palabras a cualquier costo. Una baseline demasiado breve puede esconder supuestos y trasladar el costo a preguntas, errores y retrabajo. Buscamos completitud suficiente, estructura comprensible y bajo costo de aplicación.

Algunas señales de deuda son:

- La misma regla aparece en varios lugares con redacciones distintas.
- Los prompts repiten instrucciones que deberían ser contexto durable.
- Los agentes leen documentos completos para encontrar una única decisión.
- Las reglas obligatorias no se distinguen de sugerencias.
- Nadie puede explicar qué fuente tiene autoridad.
- Una corrección exige agregar otra excepción a una lista creciente.
- Los checks existen, pero no se sabe qué riesgo cubren.

La respuesta suele ser jerarquizar y recuperar contexto de forma selectiva, no cargar todo ni asumir que el modelo debe aprenderlo permanentemente.

## Aprender también desde la operación

La percepción de las personas es una fuente valiosa, pero no la única. La baseline puede mejorar al observar resultados de CI, reintentos, fallos frecuentes, rollbacks, tiempos de integración, verificaciones de producción y solicitudes repetidas de contexto.

Estas señales deben interpretarse con cuidado. Muchos commits no demuestran productividad. Muchos comandos no demuestran éxito. Una línea eliminada no prueba retrabajo. Para convertir actividad en aprendizaje hay que relacionarla con resultados observables.

Los datos también deben agruparse y sanitizarse. La doctrina no necesita historiales crudos, secretos, rutas personales ni conversaciones privadas. Necesita patrones transferibles respaldados por evidencia suficiente.

## Práctica: audita una regla

Elige una regla importante de tu repositorio y responde:

1. ¿Qué incidente, riesgo o necesidad la justifica?
2. ¿Es transversal o pertenece a un dominio específico?
3. ¿Qué otra regla podría contradecirla?
4. ¿Cómo sabe el agente cuándo aplicarla?
5. ¿Qué evidencia demuestra su cumplimiento?
6. ¿Podría una prueba, template o check hacerla más fuerte?
7. ¿Qué condición permitiría modificarla o retirarla?

Si no puedes responder por qué existe una regla ni cómo observar su efecto, probablemente tienes una preferencia, no una baseline operativa.

## Resultado del capítulo

Al terminar este capítulo, el lector puede utilizar `ADEV.md` como mapa de principios; transformar un fallo en protecciones durables; decidir dónde pertenece cada aprendizaje; establecer precedencia entre reglas; y mantener la baseline completa, comprensible y eficiente en contexto.

## Puente a la práctica

- [`ADEV.md`](../../ADEV.md) es la baseline normativa del repositorio y demuestra el modelo de principios con precedencia.
- [`starter-kit/BASELINE_template.json`](../../starter-kit/BASELINE_template.json) ofrece una semilla legible por máquinas.
- [`framework/hardness/01-policy-and-precedence.md`](../../framework/hardness/01-policy-and-precedence.md) desarrolla autoridad y resolución de conflictos.
- [`docs/evidence-index.md`](../../docs/evidence-index.md) organiza las señales disponibles y mantiene explícita la diferencia entre artefactos observados y resultados inferidos.
