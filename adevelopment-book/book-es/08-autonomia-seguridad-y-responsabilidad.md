# 8. Autonomía, seguridad y responsabilidad

## La autonomía no elimina al responsable

Un agente puede analizar un problema, modificar archivos, ejecutar comandos y coordinar herramientas durante largos periodos. Esa capacidad produce una impresión de independencia. Sin embargo, actuar con autonomía técnica no convierte al agente en sujeto responsable.

La persona o la organización que decide usar la herramienta conserva la responsabilidad por las condiciones que diseñó, los permisos que concedió, la supervisión que aplicó y los efectos que aceptó. Si un agente introduce un defecto grave siguiendo correctamente una instrucción humana, no podemos transferirle la culpa. Debemos revisar la decisión, el contexto y los controles humanos que hicieron posible el resultado.

Esta distinción no pretende negar la complejidad del sistema. En una organización, la responsabilidad se distribuye entre quienes definen el producto, diseñan la arquitectura, administran accesos, implementan, revisan y autorizan una entrega. Cada rol responde por una parte. Lo que no ocurre es que la responsabilidad desaparezca dentro del modelo.

Una herramienta capaz de actuar exige más claridad sobre la responsabilidad, no menos.

## Libertad dentro de límites diseñados

ADEV no busca reducir al agente a un autocompletado que solicite permiso para cada movimiento. Esa forma de control destruye el beneficio de delegar y traslada toda la fricción a la persona.

La autonomía útil es libertad dentro de límites previamente diseñados:

- un objetivo y un alcance reconocibles;
- un espacio de trabajo acotado;
- fuentes de producto, arquitectura, calidad y seguridad;
- permisos proporcionales a la tarea;
- acciones que requieren aprobación explícita;
- evidencia observable de lo realizado;
- condiciones para detenerse y escalar.

Dentro de esos límites, el agente puede explorar, proponer, editar, probar y corregir. Cuando el efecto supera el contrato, debe detenerse.

El límite no es una falta de confianza emocional. Es diseño operativo. Los principios de *zero trust* de NIST recuerdan que la ubicación o propiedad de un recurso no concede confianza implícita: autenticación y autorización deben comprobarse para el acceso correspondiente. Aplicado al trabajo con agentes, estar ejecutándose en nuestra computadora o dentro de nuestro repositorio no justifica acceso ilimitado.

## El laboratorio no es la baseline profesional

Durante la exploración inicial de ADEV se utilizó deliberadamente un entorno personal con permisos amplios, sin información importante y con libertad para aprender qué acciones debían restringirse. Fue una decisión consciente: aceptar más riesgo en un laboratorio controlado para acelerar el descubrimiento.

Ese experimento no constituye una recomendación general.

Un equipo profesional debería comenzar con una baseline más segura:

- ejecutar al agente con una identidad no administrativa;
- limitar la escritura al repositorio o workspace autorizado;
- mantener secretos, credenciales y datos sensibles fuera del repositorio y del contexto durable;
- exponer únicamente las herramientas necesarias para el objetivo;
- separar desarrollo, integración y producción;
- exigir aprobación para efectos destructivos, privilegiados o externos;
- registrar acciones y conservar un camino de recuperación.

Un laboratorio de permisos amplios solo es razonable cuando el entorno es desechable, aislado, sin secretos ni conexiones sensibles, y la persona acepta explícitamente su posible pérdida. Incluso allí conviene observar cada efecto para convertir el aprendizaje en una restricción durable.

## Capacidad no significa autoridad

Que una herramienta pueda ejecutar una acción no significa que esté autorizada a hacerlo. Esta separación evita una de las confusiones más peligrosas del desarrollo agéntico.

Podemos clasificar las acciones por su efecto:

| Clase | Ejemplo | Autonomía por defecto | Evidencia mínima |
| --- | --- | --- | --- |
| Lectura | Inspeccionar archivos, estado o documentación dentro del alcance | Permitida | Fuente consultada y hallazgo relevante |
| Escritura local reversible | Editar archivos recuperables en el workspace autorizado | Permitida cuando la tarea incluye implementación | Diff, validación y camino de rollback |
| Acción destructiva o difícil de recuperar | Eliminar, sobrescribir, rotar, migrar o reescribir historia | No autónoma | Objetivo exacto, aprobación y recuperación preparada |
| Efecto externo | Publicar, desplegar, enviar, comprar o modificar un sistema remoto | Solo si el contrato autoriza exactamente ese efecto | Destino, autorización, resultado y contención |

La clasificación se realiza por el mayor efecto plausible. Preparar localmente un mensaje puede ser reversible; enviarlo cambia el mundo externo. Crear una migración no concede autoridad para ejecutarla en producción. Tener una credencial disponible tampoco equivale a contar con aprobación para utilizarla.

OWASP denomina *excessive agency* al riesgo que aparece cuando una aplicación combina funcionalidad, permisos o autonomía excesivos. Su recomendación es directa: ofrecer al agente solo las herramientas y operaciones necesarias, conceder a cada integración el menor privilegio suficiente e incorporar aprobación humana para acciones de alto impacto.

ADEV añade una pregunta práctica: **¿qué evidencia permitiría saber después que el agente actuó dentro de su autoridad?** Sin esa evidencia, el permiso no es gobernable.

## La línea roja de la intención

Los controles técnicos tradicionales comprueban propiedades importantes: compilación, tipos, dependencias, vulnerabilidades conocidas, permisos, contratos y pruebas. Pero un cambio puede ser técnicamente correcto y, aun así, perseguir un propósito dañino.

Un issue podría pedir una función que extraiga información, debilite deliberadamente un control o facilite un abuso. Un agente competente puede implementarlo con excelente calidad si el sistema trata toda instrucción como legítima por defecto. También puede recibir instrucciones manipuladas mediante contenido externo, dependencias comprometidas o inyección de prompts.

Por eso ADEV propone desarrollar una capa de discernimiento operativo. No es una “conciencia” artificial capaz de resolver el bien y el mal, ni una garantía de que el sistema comprenderá toda intención. Es un conjunto de preguntas y controles que aumenta la probabilidad de detectar una solicitud incompatible con el propósito del producto:

- ¿Quién solicita el cambio y tiene autoridad para hacerlo?
- ¿Qué necesidad legítima y comportamiento de producto lo justifican?
- ¿Qué datos, usuarios y sistemas puede afectar?
- ¿Amplía privilegios, superficie de ataque o capacidad destructiva?
- ¿Puede explicarse y revisarse su efecto antes de ejecutarlo?
- ¿Existe una alternativa de menor riesgo?
- ¿Debe participar una persona con responsabilidad de producto, seguridad o asuntos jurídicos?

Cuando la intención o la autoridad no pueden establecerse, la conducta segura es detener la acción afectada y escalar. El agente no debe inventar una justificación para continuar.

## Defensa en profundidad para agentes

Ningún control aislado convierte una operación agéntica en segura. Una aprobación humana puede ser superficial. Un sandbox puede estar mal configurado. Una prueba puede cubrir únicamente el comportamiento esperado. Un revisor puede compartir los supuestos del implementador.

La seguridad se construye en capas:

1. **Identidad y autoridad:** autenticar a quien solicita y verificar que puede ordenar ese efecto.
2. **Intención trazable:** relacionar la acción con una necesidad, issue y criterios de aceptación.
3. **Alcance y mínimo privilegio:** limitar archivos, herramientas, datos, redes y entornos.
4. **Separación de funciones:** distinguir implementación, revisión y aprobación de efectos sensibles.
5. **Validación independiente:** combinar pruebas, análisis estático, dependencias, secretos, arquitectura y revisión del cambio.
6. **Aislamiento:** ejecutar trabajo incierto en entornos acotados y prescindibles.
7. **Observabilidad:** registrar qué se intentó, qué herramienta actuó y cuál fue el resultado, sin almacenar secretos.
8. **Contención y recuperación:** disponer de rollback, interruptor de detención o revocación de acceso.
9. **Escalamiento humano:** reservar decisiones de alto impacto para roles con competencia y autoridad.

Estas capas no deben transformarse en una ceremonia idéntica para toda acción. Leer un documento público no merece el mismo flujo que eliminar datos o desplegar a producción. El control debe ser proporcional al efecto y a la capacidad de recuperación.

## Cuando el agente causa un incidente

Después de un defecto grave, culpar a la herramienta impide aprender. También sería insuficiente atribuirlo rápidamente a una persona sin examinar el sistema que condicionó su acción.

La respuesta sigue una secuencia disciplinada:

1. **Contener:** detener el efecto, revocar temporalmente capacidades o volver al último estado confiable.
2. **Proteger:** preservar a usuarios, datos y servicios antes de continuar la investigación.
3. **Comprender:** reconstruir la necesidad, instrucciones, contexto, permisos, acciones y validaciones.
4. **Asumir responsabilidad:** identificar qué roles debían decidir, supervisar o autorizar cada parte.
5. **Corregir:** reparar el producto y demostrar que el comportamiento esperado fue recuperado.
6. **Prevenir:** transformar el aprendizaje en el control durable más pequeño que habría cambiado el resultado.

La prevención puede pertenecer al código, una prueba, una política de permisos, un checklist, una regla de ADEV o varias capas coordinadas. La gravedad no justifica automáticamente una regla global. La nueva barrera debe tener alcance, responsable, evidencia y una condición de revisión.

El objetivo no es prometer que el incidente nunca se repetirá. Es reducir su probabilidad, limitar su impacto y aumentar la capacidad de detectarlo y recuperarse.

## Práctica: crea tu mapa de autoridad

Antes de entregar la próxima tarea a un agente, lista las capacidades que podría utilizar y clasifica cada acción como lectura, escritura reversible, destructiva o externa.

Para cada una registra:

- objetivo que la justifica;
- recursos y entornos alcanzables;
- identidad con la que se ejecuta;
- permiso mínimo necesario;
- aprobación requerida;
- evidencia esperada;
- condición de detención;
- mecanismo de rollback o contención.

Después intenta eliminar una herramienta, permiso o destino que no sea necesario. Simula además una instrucción ambigua o manipulada y comprueba si el flujo se detiene antes de producir un efecto sensible.

La prueba habrá sido útil si el agente conserva autonomía para el trabajo cotidiano y, al mismo tiempo, encuentra límites claros antes de una acción que no puede justificar.

## Resultado del capítulo

Al terminar este capítulo, el lector puede separar capacidad de autoridad; definir autonomía dentro de un alcance; distinguir un laboratorio experimental de una baseline profesional; aplicar mínimo privilegio y aprobación proporcional; diseñar defensa en profundidad; y responder a incidentes sin transferir responsabilidad a la herramienta.

## Puente a la práctica

- [`framework/hardness/04-action-risk-authority-model.md`](../../framework/hardness/04-action-risk-authority-model.md) ofrece una clasificación reutilizable de efectos, aprobaciones y evidencia.
- [`framework/hardness/01-policy-and-precedence.md`](../../framework/hardness/01-policy-and-precedence.md) resuelve conflictos entre políticas y autoridades.
- [`framework/hardness/03-human-expectations-contract.md`](../../framework/hardness/03-human-expectations-contract.md) convierte intención, alcance e incertidumbre en un contrato verificable.
- [`starter-kit/BASELINE_template.json`](../../starter-kit/BASELINE_template.json) permite llevar límites y requisitos al repositorio.

## Referencias de seguridad

- [NIST SP 800-207: *Zero Trust Architecture*](https://csrc.nist.gov/pubs/sp/800/207/final).
- [NIST AI 600-1: *Artificial Intelligence Risk Management Framework: Generative Artificial Intelligence Profile*](https://nvlpubs.nist.gov/nistpubs/ai/NIST.AI.600-1.pdf).
- [OWASP LLM06:2025: *Excessive Agency*](https://genai.owasp.org/llmrisk/llm062025-excessive-agency/).
