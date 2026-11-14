# 7. Crear, verificar y demostrar

## Avanzar con los ojos abiertos

La regla 50/50 de ADEV suele interpretarse como una división del calendario: la mitad del tiempo para construir y la otra mitad para probar. Esa lectura es demasiado rígida.

El 50/50 es un símbolo de equilibrio y atención. Significa que crear y verificar forman parte del mismo movimiento.

Cuando caminamos, no damos diez pasos con los ojos cerrados para detenernos después a comprobar la dirección. Observamos mientras avanzamos. Ajustamos el rumbo, evitamos obstáculos y confirmamos que el siguiente paso sigue siendo seguro.

Desarrollar sin verificación continua se parece a caminar mirando únicamente los pies. Podemos producir movimiento sin anticipar el entorno y descubrir el problema cuando ya caímos.

En ADEV, el ritmo es:

> **Cambiar → observar → validar → corregir → avanzar.**

La proporción exacta varía. Un cambio sencillo puede necesitar poca preparación y mucha prueba adversarial. Una investigación puede dedicar más tiempo a observar que a modificar. Lo importante es no acumular implementación sin evidencia proporcional.

## Crear como una hipótesis

Cada cambio de software contiene una afirmación: si modificamos el sistema de esta manera, una persona o consumidor podrá obtener cierto resultado sin quebrar las propiedades que ya dependían de él.

La implementación materializa esa hipótesis. La verificación intenta refutarla.

Esta relación se acerca al método científico:

1. Observamos un problema.
2. Proponemos una explicación o solución.
3. Ejecutamos un cambio pequeño.
4. Medimos su comportamiento.
5. Ajustamos la hipótesis según la evidencia.

No esperamos que la primera formulación sea perfecta. Utilizamos iteraciones pequeñas para aprender rápido y mantener el costo del error bajo control.

Los agentes aceleran la producción de hipótesis y alternativas. No eliminan la obligación de contrastarlas con la realidad.

## Verificar en la escala del cambio

Una función con lógica completa ya ofrece algo que comprobar. También lo hace un componente, un servicio o un flujo de usuario. Si actualizamos varios niveles sin validar ninguno, dejamos que la incertidumbre se acumule.

La verificación debe acompañar la granularidad:

- Una función puede probar sus entradas, salidas y errores.
- Un componente puede demostrar su contrato y estados visibles.
- Un servicio puede validar integración, autorización y fallos externos.
- Un flujo puede recorrerse como lo haría su consumidor.
- Una entrega puede comprobar salud, despliegue y comportamiento en el entorno objetivo.

No toda capa requiere la misma técnica, pero todas necesitan una evidencia relacionada con la afirmación que introducen.

Compilar demuestra que una clase de errores no está presente. No demuestra que el producto haga lo correcto. Una prueba unitaria demuestra un contrato acotado. No demuestra por sí sola que el usuario pueda completar su acción. Cada control responde una pregunta distinta.

## El inner loop: corregir cuando todavía es barato

El *inner loop* es el ciclo cercano a quien implementa. Ocurre antes de publicar el cambio y debe ofrecer respuestas rápidas.

Según el repositorio, puede incluir:

- Inspección del estado y alcance del diff.
- Formato y análisis estático.
- Compilación.
- Pruebas unitarias o focalizadas.
- Escaneo de secretos y dependencias.
- Validación de contratos arquitectónicos.
- Ejecución local del comportamiento afectado.
- Recorrido visual cuando cambia una interfaz.

El objetivo no es reproducir toda la infraestructura corporativa en una computadora. Es eliminar la mayor cantidad razonable de incertidumbre antes de convertir el cambio en un pull request.

Un PR no es el lugar donde comienza la calidad. Es un candidato que llega después de haber sido depurado localmente.

Cuando el inner loop es demasiado lento, las personas y agentes tienden a omitirlo. La solución no es aceptar menor calidad, sino mejorar la focalización, el entorno o la automatización para recuperar retroalimentación rápida.

## El outer loop: evidencia independiente

El *outer loop* comienza cuando el cambio abandona la sesión local. CI, revisores, políticas y entornos controlados vuelven a comprobar los contratos desde una posición independiente.

Existe una simetría importante:

| Principio | Inner loop | Outer loop |
| --- | --- | --- |
| El cambio debe compilar | Build local | Build reproducido en CI |
| El comportamiento debe funcionar | Prueba focalizada y ejecución local | Suites unitarias, de integración o funcionales |
| El cambio debe respetar la arquitectura | Inspección y validación local | Check arquitectónico o revisión del PR |
| El código debe proteger datos y dependencias | Controles locales disponibles | Escaneos independientes y políticas de seguridad |
| La experiencia debe seguir siendo utilizable | Recorrido local | Validación en entorno integrado o relevante |

El outer loop no reemplaza al inner loop. Si CI detecta constantemente problemas que podían encontrarse localmente, el ciclo de desarrollo está trasladando retroalimentación barata hacia una etapa más lenta.

Tampoco necesita duplicar cada herramienta de manera idéntica. Debe reproducir los contratos importantes con suficiente independencia para detectar diferencias de entorno, omisiones y supuestos locales.

## Quince checks no son necesariamente mejores que cinco

Los controles tienden a crecer con la práctica. Un fallo revela una brecha y aparece un nuevo check. Con el tiempo, un repositorio puede ejecutar muchos.

El número no demuestra madurez.

Cada check debería responder:

- ¿Qué riesgo cubre?
- ¿Qué comportamiento o propiedad demuestra?
- ¿Qué tipo de fallo puede detectar?
- ¿Es confiable o produce falsos positivos?
- ¿Cuánto tarda y dónde pertenece?
- ¿Duplica otro control?
- ¿Su resultado explica cómo corregir?

Un control sin propósito conocido agrega espera y ruido. Un control esencial pero inestable enseña al equipo a ignorar el rojo. La curaduría de checks forma parte de la baseline viva.

La meta no es alcanzar una cifra. Es cubrir los riesgos relevantes con retroalimentación confiable y proporcional.

## Revisión en capas

Las pruebas ejecutables no comprenden por sí solas toda la intención. El PR necesita revisión de alcance, arquitectura y producto.

Una revisión en capas puede combinar:

1. **Agente implementador:** explica qué cambió, qué fuentes aplicó y qué validó.
2. **Revisor independiente:** contrasta el diff con el issue, la baseline y los contratos relevantes.
3. **Persona responsable:** evalúa intención, impacto, riesgo y decisiones que requieren autoridad humana.
4. **Automatización:** ejecuta controles repetibles de compilación, pruebas, calidad, seguridad y arquitectura.
5. **Entorno objetivo:** demuestra despliegue, salud y comportamiento real.

Un segundo agente puede ampliar la revisión, pero no garantiza independencia. Dos modelos o sesiones pueden compartir supuestos y puntos ciegos. La revisión asistida complementa la evidencia ejecutable y el juicio humano; no los sustituye.

Que todos los checks estén verdes significa que el cambio satisface los riesgos que el sistema sabe comprobar. No demuestra que la necesidad estaba bien formulada ni que no existe un riesgo desconocido.

## La cadena de evidencia

ADEV conserva un hilo desde la intención hasta el resultado:

> **Necesidad → comportamiento → issue → cambio → pruebas → revisión → integración → despliegue → verificación.**

Cada elemento responde una pregunta:

- La necesidad explica por qué vale la pena actuar.
- El comportamiento define qué podrá observar el consumidor.
- El issue fija alcance y aceptación.
- El cambio muestra qué se modificó.
- Las pruebas y checks demuestran propiedades conocidas.
- La revisión evalúa intención y riesgos no completamente automatizables.
- La integración confirma compatibilidad con el estado compartido.
- El despliegue demuestra que el artefacto llegó al entorno.
- La verificación confirma que la promesa puede cumplirse allí.

Si la cadena termina en el commit, tenemos evidencia de implementación. Si termina en CI, tenemos evidencia de integración. La entrega necesita llegar hasta el consumidor y el entorno relevantes.

## Producción no es un detalle administrativo

Una aplicación puede compilar, superar las pruebas y fallar al desplegar. Puede desplegar correctamente y no permitir la acción esperada. Puede completar la acción y degradar otro comportamiento.

Por eso el cierre final necesita:

- Confirmación del despliegue correcto.
- Indicadores de salud estables.
- Recorrido de la acción comprometida.
- Observación de errores o regresiones relevantes.
- Registro del resultado.
- Rollback o contención si desaparece la confianza.

No todo cambio se valida en producción pública. El entorno relevante depende del riesgo y la etapa: puede ser un entorno aislado, una audiencia controlada o producción detrás de límites explícitos. Lo importante es no confundir éxito del pipeline con éxito del producto.

La entrega termina cuando la persona o el sistema consumidor puede ejecutar el comportamiento prometido con un grado de realismo proporcional al riesgo.

## Cuando una validación falla

Un check fallido no es una interrupción ajena al trabajo. Es información del sistema.

La respuesta correcta es comprender:

- Si el cambio violó un contrato.
- Si la prueba contiene un supuesto incorrecto.
- Si existe deriva entre entornos.
- Si el control es inestable.
- Si el issue no especificó un comportamiento necesario.

Después corregimos la causa, repetimos la evidencia y evaluamos si el aprendizaje debe fortalecer la baseline.

No buscamos que los pipelines permanezcan verdes a costa de evitar el descubrimiento de problemas. Buscamos controles que se vuelvan verdes cuando existe una razón verificable para confiar.

## Práctica: construye una matriz de evidencia

Para tu próxima iteración, crea tres columnas:

1. **Inner loop:** qué comprobarás antes de publicar.
2. **Outer loop:** qué control independiente repetirá o ampliará la evidencia.
3. **Entorno objetivo:** qué acción o señal confirmará la entrega real.

Relaciona cada fila con un criterio de aceptación o riesgo. Elimina controles que no puedan explicar su propósito e identifica criterios que todavía no tienen evidencia.

Al cerrar el cambio, registra qué capa encontró cada problema. Si el outer loop detectó algo barato de comprobar localmente, mejora el inner loop. Si el entorno productivo encontró algo que los anteriores podían simular razonablemente, agrega o fortalece el control correspondiente.

## Resultado del capítulo

Al terminar este capítulo, el lector puede aplicar 50/50 como atención continua; diseñar verificaciones proporcionales al cambio; reflejar contratos entre inner y outer loop; interpretar correctamente checks verdes o fallidos; y extender la cadena de evidencia hasta la comprobación del comportamiento entregado.

## Puente a la práctica

- [`starter-kit/QUALITY_CYCLE_checklist.md`](../../starter-kit/QUALITY_CYCLE_checklist.md) organiza la verificación amplia de una iteración.
- [`starter-kit/FIRST_RELEASE.md`](../../starter-kit/FIRST_RELEASE.md) extiende la evidencia hasta la primera entrega.
- [`docs/case-studies/ci-cd-recovery.md`](../../docs/case-studies/ci-cd-recovery.md) distingue integración, entrega y despliegue mediante un caso operativo.
