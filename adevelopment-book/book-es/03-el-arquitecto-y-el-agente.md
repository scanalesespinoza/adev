# 3. El arquitecto y el agente

## Una asimetría necesaria

En ADEV, el arquitecto y el agente colaboran, pero no comparten la misma responsabilidad.

El agente puede analizar un repositorio, proponer alternativas, implementar cambios y ejecutar verificaciones. El arquitecto conserva la intención, comprende el contexto humano, define los límites y responde por las consecuencias.

Esta asimetría no pretende disminuir la capacidad del agente. Permite utilizarla con claridad. Si tratamos al agente como un simple autocompletado, desperdiciamos su posibilidad de ejecutar trabajo complejo. Si lo tratamos como una autoridad independiente, abandonamos decisiones que requieren contexto, criterio y responsabilidad humana.

El agente es un ejecutor capaz de proponer. El arquitecto es un responsable capaz de delegar.

En este libro, *arquitecto* no es solamente un cargo. Es el rol que asume quien conecta una necesidad con las condiciones necesarias para realizarla correctamente. Una desarrolladora, un líder técnico, una responsable de producto o un operador pueden ocuparlo según la decisión que esté en juego.

## Delegar ejecución, conservar intención

Delegar no consiste en describir cada línea que el agente debe escribir. Si fuera necesario hacerlo, la ventaja de utilizarlo desaparecería. La delegación útil expresa el resultado, entrega el contexto relevante, establece restricciones y define cómo se comprobará el trabajo.

La intención no puede reducirse a una instrucción como “crea una pantalla” o “agrega persistencia”. Esas frases dejan abiertas decisiones fundamentales:

- ¿Quién utilizará la capacidad?
- ¿Qué acción debe poder realizar?
- ¿Qué elementos existentes no pueden cambiar?
- ¿Qué datos se almacenarán y con qué sensibilidad?
- ¿Qué nivel de disponibilidad o rendimiento se necesita?
- ¿Qué evidencia demostrará que el resultado es correcto?

El agente puede ayudar a formular estas preguntas, pero no debe responderlas silenciosamente cuando la respuesta modifica el producto o el riesgo.

La autonomía comienza después de definir qué decisiones puede tomar. No antes.

## Los cuatro contratos de contexto

Antes de ejecutar un cambio relevante, el agente necesita encontrar cuatro contratos. No tienen que ser cuatro carpetas con nombres universales, pero sus responsabilidades deben ser distinguibles.

### Producto

El contrato de producto explica qué hábitat se construye: para quién, qué problema resuelve, qué acciones permite y qué comportamientos debe conservar. Impide que una implementación técnicamente coherente transforme la naturaleza de la solución.

### Arquitectura

El contrato de arquitectura describe cómo se sostiene el sistema: componentes, límites, dependencias, interfaces, persistencia, comunicación y decisiones estructurales. Distingue lo que puede adaptarse localmente de aquello cuya modificación exige una evaluación explícita.

### Calidad

El contrato de calidad define qué propiedades debe demostrar el cambio: compilación, pruebas, rendimiento, mantenibilidad, compatibilidad, accesibilidad, observabilidad y criterios de entrega. Evita que “funciona en mi entorno” sea la única definición de terminado.

### Seguridad

El contrato de seguridad identifica datos, identidades, límites de confianza, privilegios, operaciones destructivas y riesgos que requieren aprobación o controles adicionales. Impide que la velocidad convierta una solicitud válida en una capacidad peligrosa.

Estos contratos se relacionan, pero no son intercambiables. Producto explica el propósito. Arquitectura organiza la solución. Calidad define propiedades verificables. Seguridad limita el daño y protege a quienes dependen del sistema.

`ADEV.md` funciona como el mapa que conduce a ellos. No debería duplicarlos ni intentar contener todo su detalle.

## Paredes estructurales y paredes ajustables

En una construcción, no todas las paredes cumplen la misma función. Algunas sostienen el edificio. Otras separan espacios y pueden moverse con un impacto acotado.

La arquitectura de software también contiene decisiones con distintos grados de autoridad. Cambiar el texto de una etiqueta no equivale a reemplazar el mecanismo de identidad. Ajustar un componente visual no equivale a cambiar el modelo de datos. Agregar una prueba no equivale a introducir un nuevo servicio de infraestructura.

Para gobernar esa diferencia, ADEV considera tres propiedades:

- **Impacto:** cuántas personas, componentes, datos o entornos pueden verse afectados.
- **Reversibilidad:** qué tan fácil es volver a un estado confiable.
- **Evidencia:** qué controles permiten demostrar el resultado antes y después de integrar.

La autonomía debe crecer cuando el impacto es bajo, la reversibilidad es alta y existe evidencia fuerte. Debe reducirse cuando ocurre lo contrario.

| Tipo de decisión | Ejemplo | Conducta esperada |
| --- | --- | --- |
| Local y reversible | Ajustar una implementación interna cubierta por pruebas | El agente puede proceder dentro del issue |
| Local con incertidumbre | Incorporar una dependencia menor o modificar un contrato interno | Proponer, justificar y confirmar antes de consolidar |
| Estructural | Cambiar persistencia, identidad, límites de servicios o arquitectura de despliegue | Detenerse y solicitar una decisión arquitectónica |
| Destructiva o externa | Eliminar datos, modificar producción, publicar o conceder privilegios | Requerir autorización explícita y controles de recuperación |

Esta tabla no reemplaza el análisis contextual. Ofrece un punto de partida para que la libertad del agente sea deliberada y no accidental.

## El criterio frente a la recomendación común

En una iteración temprana de un producto, un agente comenzó a incorporar una base de datos como respuesta natural a la necesidad de persistencia. La recomendación no era absurda. Era común, conocida y probablemente correcta en muchos sistemas.

Pero no estaba fundamentada para ese producto.

La necesidad real era conservar información mediante una capa ligera de persistencia, con acceso asíncrono y apoyo de caché. Introducir una solución más pesada habría agregado operación, costo y dependencias antes de demostrar que eran necesarias.

El punto no es que una base de datos sea incorrecta ni que una arquitectura ligera sea siempre mejor. El aprendizaje es otro: el conocimiento general del agente produce alternativas plausibles; el conocimiento contextual del arquitecto decide cuál corresponde.

Una decisión tecnológica necesita relacionarse con requisitos y restricciones observables. “Es una práctica común” puede iniciar la investigación, pero no cerrarla.

## Cuándo el agente debe detenerse

Un agente maduro no es aquel que nunca pregunta. Es aquel que reconoce cuándo continuar sería inventar autoridad o contexto.

Debe detenerse o escalar cuando:

- El issue contradice el contrato de producto.
- La solución exige modificar una decisión estructural.
- El alcance crece más allá de la acción comprometida.
- Aparecen datos sensibles, nuevos privilegios o superficies de ataque.
- La ejecución requiere eliminar información o recursos.
- Las fuentes canónicas se contradicen.
- No existe una forma proporcional de validar o revertir el cambio.
- Una dependencia o servicio nuevo altera costos u operación.
- La intención del cambio es dudosa o puede producir daño.

Detenerse no representa una falla de autonomía. Es una conducta correcta dentro de un sistema que distingue ejecución de autoridad.

El arquitecto tampoco debería responder impulsivamente. Puede pedir alternativas, reducir el alcance, registrar una decisión o crear una iteración separada para investigar. La escalada protege al cambio original de convertirse en un contenedor de problemas nuevos.

## Supervisar sin leer cada línea

El aumento de capacidad hace poco realista que una persona inspeccione manualmente cada carácter producido por agentes. Eso no significa renunciar a la comprensión.

El arquitecto debe poder explicar:

- Qué comportamiento cambió.
- Qué archivos, componentes y contratos fueron afectados.
- Por qué la solución corresponde al producto.
- Qué riesgos introdujo.
- Qué validaciones se ejecutaron.
- Cómo se recuperaría el sistema si el resultado falla.

El diff de un pull request ofrece una vista de impacto: archivos creados, eliminados y modificados; dependencias; migraciones; configuración y distribución del cambio. Las pruebas y checks agregan evidencia ejecutable. Una revisión independiente puede encontrar supuestos que autor e implementador compartieron.

Ninguna de esas capas es suficiente por separado. Un diff pequeño puede contener una vulnerabilidad crítica. Una suite verde puede verificar una especificación equivocada. Dos agentes pueden compartir el mismo punto ciego. La confianza profesional nace de combinar intención, revisión, controles y comportamiento observable.

Delegar la complejidad de implementación no significa dejar de comprender el impacto.

## La arquitectura como conversación durable

Las decisiones estructurales no deberían quedar atrapadas en una conversación con un agente. Cuando una alternativa se acepta o rechaza por razones durables, el repositorio debe conservar la decisión y su contexto.

Un registro arquitectónico útil puede incluir:

- La situación que exige decidir.
- Las restricciones conocidas.
- Las alternativas consideradas.
- La elección y sus razones.
- Las consecuencias aceptadas.
- Las señales que justificarían revisar la decisión.

Este registro evita que un agente futuro vuelva a proponer la misma rearquitectura sin conocer por qué fue descartada. También permite cambiar de opinión con honestidad cuando las condiciones evolucionan.

La arquitectura no es una colección de prohibiciones eternas. Es una memoria de decisiones que reduce opciones sin eliminar el juicio.

## Práctica: construye un mapa de autoridad

Selecciona un cambio real de tu repositorio y clasifica sus decisiones:

1. ¿Qué puede resolver el agente libremente dentro del issue?
2. ¿Qué debe proponer y justificar antes de continuar?
3. ¿Qué requiere una decisión de producto o arquitectura?
4. ¿Qué exige autorización explícita por ser destructivo, privilegiado o externo?
5. ¿Qué evidencia permitiría aumentar su autonomía la próxima vez?

Registra el resultado cerca de las instrucciones que gobiernan al agente. Después pídele que explique el mapa con sus propias palabras y que identifique contradicciones.

Si el agente no puede reconocer cuándo debe detenerse, todavía no tiene autonomía: tiene acceso.

## Resultado del capítulo

Al terminar este capítulo, el lector puede distinguir ejecución de autoridad; organizar los contratos de producto, arquitectura, calidad y seguridad; clasificar decisiones por impacto y reversibilidad; y definir cuándo un agente puede proceder, proponer o debe detenerse.

## Puente a la práctica

- [`framework/hardness/03-human-expectations-contract.md`](../../framework/hardness/03-human-expectations-contract.md) convierte expectativas humanas en un contrato consumible.
- [`framework/hardness/04-action-risk-authority-model.md`](../../framework/hardness/04-action-risk-authority-model.md) relaciona riesgo y autoridad de ejecución.
- [`starter-kit/DECISION_LOG.md`](../../starter-kit/DECISION_LOG.md) permite conservar decisiones y reversiones fuera de conversaciones temporales.
