# 5. Iteraciones atómicas

## El tamaño del cambio determina el tamaño de la incertidumbre

Un agente puede producir en minutos una cantidad de cambios que una persona habría distribuido durante horas o días. Esa capacidad invita a formular solicitudes grandes: construir una funcionalidad completa, reorganizar un módulo o resolver varios problemas relacionados de una sola vez.

El resultado puede parecer eficiente hasta que algo falla.

Entonces debemos descubrir cuál de las muchas decisiones introdujo el problema, qué componentes fueron afectados y qué parte del trabajo todavía es confiable. La velocidad que ahorramos al generar se convierte en tiempo de diagnóstico, revisión y retrabajo.

ADEV responde reduciendo la unidad de cambio. Una iteración atómica contiene una intención principal, un alcance comprensible, una implementación acotada y una evidencia que permite decidir si integrar, corregir o descartar.

Atómica no significa mínima en sentido absoluto. Significa suficientemente pequeña para mantener bajo control sus decisiones y relaciones.

## La heurística de la narración

Una forma sencilla de detectar una tarea demasiado grande es intentar narrarla.

Si explicar con claridad qué debe ocurrir, qué queda fuera y cómo se verificará requiere una conversación extensa, probablemente estamos describiendo varias iteraciones. Como punto de partida, una tarea que puede narrarse en dos a cinco minutos suele ofrecer una superficie manejable para comenzar.

Esta medida no es una fórmula. Cuatro minutos de explicación no producen exactamente el doble de dificultad que dos. Tampoco toda descripción breve es buena: una frase ambigua puede ocultar un sistema completo.

La narración sirve como señal porque obliga a hacer visibles las piezas:

- La acción de producto.
- Los componentes involucrados.
- Las decisiones que deben tomarse.
- Las restricciones que deben respetarse.
- Los riesgos relevantes.
- La evidencia de cierre.

Cuando la explicación acumula múltiples acciones, capas, integraciones o condiciones de éxito, la tarea está pidiendo una división.

## La complejidad vive en las relaciones

Una tarea grande no es más difícil solamente porque contiene más código. Cada componente adicional puede interactuar con los anteriores y abrir caminos nuevos que revisar.

Dos métodos independientes ofrecen una superficie pequeña. Veinte métodos distribuidos entre interfaz, servicio, persistencia y autorización no producen únicamente diez veces más lectura. Introducen relaciones, estados y secuencias posibles. El error puede encontrarse al principio o al final de ese recorrido, pero el espacio que debemos descartar es mayor.

Por eso el costo de diagnóstico tiende a crecer más rápido que el volumen visible del cambio. No necesitamos una ecuación exacta para utilizar el principio:

> Mientras más elementos y relaciones modifica una iteración, más difícil es atribuir sus resultados y recuperar un estado confiable.

La atomicidad reduce esa superficie. Permite observar cómo cada grano de software afecta la estabilidad antes de agregar el siguiente.

## Una intención, no necesariamente un archivo

No debemos confundir cambio atómico con modificar un solo archivo o escribir pocas líneas. Una acción pequeña puede necesitar ajustes coordinados en código, prueba, configuración y documentación.

La unidad correcta es la intención verificable.

Un cambio para mostrar el estado vacío de una lista puede incluir:

- Una condición en la vista.
- Un texto localizado.
- Una prueba del comportamiento.
- Una actualización del criterio de aceptación.

Aunque toque varias superficies, sigue siendo una iteración coherente si todas son necesarias para demostrar el mismo comportamiento.

En cambio, agregar el estado vacío, rediseñar la navegación y migrar el almacenamiento dentro del mismo PR mezcla tres intenciones. Una puede funcionar mientras otra introduce una regresión, y la entrega deja de ser independientemente reversible.

## De la necesidad al issue atómico

El issue debe comenzar por el comportamiento, no por una lista de archivos. Una estructura mínima contiene:

1. **Problema:** qué impide hoy que el consumidor alcance su objetivo.
2. **Acción esperada:** qué podrá hacer después del cambio.
3. **Alcance:** qué comportamiento forma parte de la iteración.
4. **Fuera de alcance:** qué tentaciones relacionadas se dejan para después.
5. **Restricciones:** qué contratos de producto, arquitectura, calidad y seguridad gobiernan el cambio.
6. **Criterios de aceptación:** qué resultados observables deben cumplirse.
7. **Evidencia:** qué pruebas, recorridos o verificaciones permitirán cerrarlo.

Antes de implementar, el agente puede analizar si el issue contiene varias acciones o decisiones estructurales. Puede proponer una subdivisión y explicar las dependencias entre partes. La persona responsable confirma que cada corte conserve valor y no sea solamente una división cómoda para el código.

Una secuencia de issues pequeños puede compartir una iniciativa mayor. La atomicidad no elimina la visión; evita intentar materializarla de una sola vez.

## El tamaño depende de la madurez

Dos a cinco minutos de narración es una referencia conservadora para quien comienza. No es un límite permanente.

Un repositorio maduro puede aceptar iteraciones mayores porque dispone de:

- Contratos de producto y arquitectura claros.
- Límites de componentes estables.
- Pruebas rápidas y confiables.
- Observabilidad.
- Automatización de calidad y seguridad.
- Entrega y rollback conocidos.
- Un equipo que comparte lenguaje y criterios.

Cuando una serie de cambios se completa sin ambigüedad ni retrabajo, el equipo puede aumentar gradualmente el tamaño. Si los errores se vuelven difíciles de localizar, los PR acumulan observaciones o las ramas viven demasiado tiempo, debe reducirlo.

La atomicidad es una variable de control. Se ajusta según la evidencia de estabilidad.

> Comienza pequeño. Aumenta el tamaño solamente cuando el sistema demuestre que puede absorberlo.

## La rama como contenedor de riesgo

ADEV combina una rama principal confiable con ramas de trabajo breves. Cada rama nace para resolver un cambio atómico y se integra mediante un pull request.

El punto en el que la rama se separa de `main` funciona como referencia de restauración. Si la implementación se enreda, podemos comparar toda su superficie con un estado conocido. Si corregirla resulta menos claro que reconstruirla, podemos descartarla y comenzar otra vez sin arrastrar trabajo dudoso.

La rama no reemplaza backups, pruebas ni rollback productivo. Su función es contener el riesgo del cambio antes de integrarlo.

Una rama breve también reduce divergencia. Cuanto más tiempo permanece abierta, más probable es que `main` avance, otros cambios toquen las mismas áreas y las decisiones iniciales pierdan actualidad.

Por eso un PR no debería convertirse en un espacio indefinido donde se acumulan funcionalidades. Su propósito es llevar una intención desde un estado confiable hasta otro estado confiable.

## La rama que costó soltar

Antes de adoptar este nivel de atomicidad, una rama acumuló varias funcionalidades durante varios días. Tres parecían funcionar. Las dos siguientes exigieron refactorizaciones crecientes y comenzaron a afectar otro servicio y comportamientos que ya estaban estables.

El problema no era solamente técnico. El trabajo acumulado hacía emocionalmente difícil abandonar la rama. Cada nueva corrección intentaba proteger la inversión anterior, aunque la confianza en el conjunto seguía disminuyendo.

Finalmente fue necesario descartar todo y reiniciar desde un estado confiable. Incluso las funcionalidades aparentemente correctas estaban demasiado entrelazadas con el resto para integrarlas con seguridad.

Este caso muestra el costo hundido de una rama larga:

> Cuanto más trabajo acumula una iteración, más difícil es abandonarla, aunque la evidencia indique que ya no es confiable.

Una funcionalidad no está realmente terminada si solo puede conservarse junto con cambios que desestabilizan el sistema.

## Stop the line

Cuando una validación falla o aparece una regresión, la prioridad deja de ser avanzar. Se detiene el trabajo nuevo sobre esa línea hasta recuperar evidencia de estabilidad.

La secuencia es:

1. Contener el cambio dentro de su rama o mecanismo de despliegue.
2. Reproducir el fallo y determinar su superficie.
3. Comparar contra el último estado confiable.
4. Corregir dentro del alcance si la causa es clara.
5. Descartar y reiniciar si reparar exige conservar incertidumbre.
6. Ejecutar nuevamente las validaciones relevantes.
7. Convertir el aprendizaje en una protección durable.

Detener la línea no castiga el error. Protege al sistema y al equipo de construir trabajo nuevo sobre una base dudosa.

La atomicidad también protege la moral. Equivocarse deja de significar perder semanas. El equipo puede experimentar porque el costo de volver atrás es pequeño, visible y aceptado.

## Una iteración puede aprender sin entregar

No todos los intentos terminan en integración. Una iteración puede demostrar que una alternativa no funciona, que falta contexto o que el issue estaba mal dividido.

Ese resultado puede ser valioso si queda registrado. Pero debemos distinguir aprendizaje de entrega.

- **Iteración de aprendizaje cerrada:** produjo evidencia suficiente para aceptar, rechazar o reformular una hipótesis.
- **Iteración de entrega cerrada:** demostró el comportamiento comprometido y recorrió los controles necesarios hasta el entorno relevante.

La frase “fallar está bien” no autoriza a declarar terminada una funcionalidad incompleta. Autoriza a obtener información mediante intentos pequeños sin esconder su resultado.

## Práctica: divide hasta poder demostrar

Elige un issue que todavía no haya comenzado y realiza este ejercicio:

1. Explícalo en voz alta sin leer una lista de tareas.
2. Marca cada acción distinta que mencionas.
3. Identifica cada componente o contrato afectado.
4. Separa las decisiones estructurales de la implementación local.
5. Escribe una evidencia de cierre para cada acción.
6. Divide el issue hasta que cada parte tenga una intención principal y pueda revertirse sin perder las otras.

Entrega la primera parte antes de comenzar la siguiente. Después compara el tamaño previsto con el trabajo y el diagnóstico reales. Esa evidencia permitirá ajustar tu unidad atómica futura.

## Resultado del capítulo

Al terminar este capítulo, el lector puede utilizar la narración como heurística de tamaño; reconocer la complejidad introducida por relaciones; formular issues atómicos; adaptar el tamaño a la madurez; y utilizar ramas breves para contener fallos, detener la línea y recuperar un estado confiable.

## Puente a la práctica

- [`starter-kit/examples/minimal-adev-loop/`](../../starter-kit/examples/minimal-adev-loop/README.md) muestra un ciclo mínimo con roadmap, baseline e instrucción de iteración.
- [`starter-kit/OPERATING_RITUALS.md`](../../starter-kit/OPERATING_RITUALS.md) reúne rituales de continuidad, preflight y reintento acotado.
- [`docs/case-studies/rollback.md`](../../docs/case-studies/rollback.md) conserva un caso de recuperación y su evidencia disponible.
