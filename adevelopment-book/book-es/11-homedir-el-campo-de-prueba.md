# 11. Homedir: el campo de prueba

## Del experimento a la operación continua

EventFlow permitió descubrir que una persona experimentada podía construir un producto amplio con agentes en una ventana breve. Homedir planteó una pregunta más exigente: ¿puede esa forma de trabajo sostener un producto que sigue evolucionando después del entusiasmo inicial?

Homedir se convirtió en el campo de prueba de ADEV. Allí la práctica tuvo que convivir con autenticación, interfaces públicas y administrativas, varios idiomas, integración continua, despliegues, rendimiento, backups, restauración y cambios de producto. La prueba dejó de ser producir código. El desafío era preservar coherencia mientras el sistema cambiaba.

Esta diferencia explica el lugar de ambos proyectos en el libro:

> **EventFlow mostró capacidad. Homedir obligó a construir disciplina.**

Homedir no demuestra por sí solo que ADEV funcione en toda organización. Es un proyecto conducido principalmente por su autor y, por lo tanto, comparte varios límites del laboratorio. Su valor está en la repetición: los principios fueron expuestos durante meses a fallos distintos y debieron evolucionar para seguir siendo útiles.

## El momento en que `ADEV.md` dejó de ser documentación

Al comienzo, mantener reglas podía sentirse como una pausa respecto del trabajo real. Codificar producía un cambio visible; editar una baseline parecía indirecto.

La percepción cambió después de varias semanas. El trabajo comenzó a detenerse menos. Algunos errores dejaron de repetirse y fue posible dedicar más atención a funcionalidades nuevas. Cuando reaparecía un problema que supuestamente estaba cubierto, la pregunta inmediata ya no era solo qué hizo mal el agente, sino si `ADEV.md` expresaba la regla con suficiente claridad, prioridad y evidencia.

Esa reacción marca una transición importante: la baseline se había convertido en una dependencia del proceso de entrega.

No contamos todavía con una comparación reproducible que cuantifique cuántos errores o cuánto retrabajo evitó. Los gráficos de commits y líneas modificadas pueden sugerir patrones, pero no distinguen con certeza funcionalidad, corrección, refactor o desperdicio. La afirmación defendible es más acotada: el relato longitudinal del autor y los assets del repositorio muestran que los incidentes comenzaron a producir reglas, pruebas, checks y casos reutilizables.

`ADEV.md` se volvió parte efectiva del sistema cuando cambiarlo comenzó a modificar el comportamiento de las siguientes iteraciones.

## Caso 1: una rama que dejó de ser recuperable

Antes de consolidar las microiteraciones, una rama acumuló varias funcionalidades durante varios días. Las primeras parecían correctas. Las últimas introdujeron refactors que empezaron a afectar servicios y comportamientos que ya funcionaban.

El problema no era un único defecto identificable. Las decisiones se habían entrelazado. Recuperar las funciones válidas exigía comprender cuáles cambios dependían de los que habían deteriorado el sistema. El costo de separar la historia se acercó al costo de reconstruirla.

Después de resistirse a perder el trabajo, el autor decidió descartar la rama y comenzar otra vez. En las entrevistas, el recuerdo alterna entre dos días de trabajo directamente perdido y una rama que había vivido cerca de una semana. Esta edición conserva la lección, pero no utiliza esa duración como una métrica exacta porque no se ha identificado todavía el artefacto público que resuelva la cronología.

La consecuencia durable sí es visible en la doctrina:

- un objetivo por rama;
- cambios atómicos;
- ramas de corta vida;
- validación durante la iteración;
- un punto de restauración reconocible;
- descarte temprano cuando desaparece la confianza.

La rama breve no evita el error. Hace que equivocarse sea moral y operacionalmente más barato. Un equipo puede abandonar una hora de trabajo sin convertirlo en una derrota personal. Esa seguridad protege también la disposición a experimentar.

## Caso 2: el idioma reveló una falla del sistema

Homedir soporta español e inglés. En una ocasión, el comportamiento local parecía correcto, pero las pruebas ejecutadas en integración fallaron. Había textos hardcodeados, valores resueltos mediante variables locales y configuraciones que cambiaban según el entorno.

El síntoma apareció en el idioma, pero la causa era mayor: el producto no tenía una forma única y predecible de resolver sus textos y defaults. La máquina local y el servidor estaban probando contratos diferentes.

El aprendizaje produjo varias barreras:

- todo texto visible forma parte del producto;
- las cadenas deben vivir en recursos de idioma o mecanismos equivalentes;
- los valores por defecto deben ser explícitos;
- el entorno local y CI deben compartir versiones y configuración relevantes;
- una prueba multilenguaje debe fijar deliberadamente el locale que intenta demostrar;
- vistas administrativas y casos de borde necesitan el mismo rigor que la portada.

El caso no enseña únicamente internacionalización. Enseña cómo clasificar un fallo. Corregir una expectativa textual habría cerrado el check; corregir la fuente de variabilidad mejoró el sistema de entrega.

Cuando una falla aparece en CI y no localmente, ADEV pregunta qué evidencia barata faltó en el *inner loop* y qué diferencia independiente descubrió correctamente el *outer loop*.

## Caso 3: CI/CD también es producto de la entrega

En Homedir hubo cambios que compilaban o superaban pruebas y después fallaban entre la publicación de una imagen, la configuración del runtime y el despliegue. Una referencia podía apuntar al artefacto equivocado; el contenedor podía comportarse de manera distinta; una configuración intermedia podía ocultar el estado real de la aplicación.

Estos problemas parecían alejados de la funcionalidad solicitada, pero impedían que el usuario recibiera el comportamiento. ADEV incorporó una regla: si el camino desde el commit hasta el sistema ejecutándose no es confiable, la iteración no ha terminado.

La recuperación sigue el mismo patrón que el código:

1. detener nuevas funcionalidades;
2. identificar la última etapa confiable;
3. comprobar la procedencia del artefacto;
4. corregir la discrepancia más pequeña;
5. repetir el flujo completo;
6. verificar la superficie que utiliza una persona;
7. convertir la causa en documentación, check o guardrail.

Los release gates públicos de Homedir distinguen validación de pull request, controles sobre la rama principal y promoción productiva. Ese artefacto respalda una idea central: integración, entrega y despliegue son controles relacionados, pero no equivalentes.

Un pipeline verde prueba únicamente las propiedades que ejecutó. La comprobación final sigue necesitando observar el comportamiento prometido en el entorno relevante.

## Caso 4: una teoría de rendimiento perdió frente a los datos

Cuando aparecieron señales de lentitud y errores en contenido comunitario, era tentador explicar el problema como una regresión amplia y proponer un rediseño. La medición posterior redujo el foco: respuestas `429`, límites compartidos por origen y patrones de solicitud explicaban mejor una parte relevante del comportamiento observado.

La lección no consiste en convertir rate limiting en la causa universal de problemas de rendimiento. Consiste en resistir una arquitectura dramática cuando la evidencia todavía no permite localizar el problema.

El guardrail extraído fue:

- comparar escenarios realmente equivalentes;
- registrar latencia, tasa de error y patrón de solicitudes;
- declarar las limitaciones de fixtures o entornos;
- ordenar cambios según impacto medido;
- conservar una baseline para comparar después.

Un agente puede producir rápidamente una explicación plausible y un refactor extenso. El criterio profesional consiste en exigir que la magnitud de la intervención sea proporcional a la calidad de la evidencia.

## Caso 5: un backup que no restaura no es evidencia

La existencia de un archivo de backup producía una sensación de seguridad. Sin embargo, al intentar restaurar aparecieron diferencias de versión, formato y expectativas del runtime. También existía incertidumbre respecto de retención y rotación.

El error conceptual era considerar la generación del artefacto como cierre. El comportamiento que una estrategia de recuperación promete no es “crear un archivo”, sino reconstruir el servicio y sus datos bajo condiciones definidas.

La regla resultante fue directa:

- probar restauración, no solo creación;
- utilizar el entorno objetivo o el equivalente más fiel disponible;
- verificar compatibilidad de versiones y formatos;
- tratar retención como parte de confiabilidad;
- conservar un procedimiento reproducible;
- medir recuperación cuando el riesgo lo requiera.

Esta estructura se aplica más allá de backups. Un artefacto intermedio solo es evidencia del paso que completó. La entrega se demuestra mediante la acción final que promete.

## Del incidente al asset

Los casos anteriores comparten una cadena:

> **Incidente → decisión → guardrail → prueba o checklist → asset reutilizable.**

No toda lección pertenece a `ADEV.md`. La baseline debería contener el principio y dirigir hacia la fuente especializada:

| Aprendizaje | Destino más útil |
| --- | --- |
| Toda iteración debe validar antes de publicar | Principio en `ADEV.md` |
| Un locale concreto debe fijarse en determinada suite | Conocimiento o configuración del proyecto |
| El comportamiento no debe volver a fallar | Prueba automatizada |
| Una promoción requiere evidencia de varias capas | Release gate o checklist |
| La respuesta ante un incidente necesita roles y secuencia | Runbook |
| El caso enseña un patrón transferible | Estudio de caso |

Una lección puede vivir en varias capas cuando cada una cumple una función distinta. El principio orienta; la prueba detecta; el check bloquea; el runbook recupera; el caso enseña.

La coherencia es esencial. Si el inner loop exige compilar, CI debe comprobar el mismo contrato de manera independiente. Si la baseline exige proteger textos visibles, las pruebas y revisiones deben buscar hardcoding en las superficies afectadas. Una regla sin una forma de observar cumplimiento depende de memoria y buena voluntad.

## Frecuencia de entrega: una señal, no una promesa

El autor estima que, después de cerca de un año de maduración, cambios sencillos pueden recorrer issue, implementación, PR y entrega en minutos, y cambios medianos en alrededor de media a una hora. También relata varias entregas productivas durante un día activo.

Estas cifras expresan la experiencia actual, pero todavía no cuentan con una muestra pública que relacione issues, timestamps, checks, despliegues y verificación final. No se presentan como benchmark ni promesa para el lector.

Lo que sí puede aprenderse es el mecanismo que intentan describir: contexto durable, iteraciones pequeñas, pipeline conocido, revisión en capas y recuperación barata reducen fricción acumulada. Para convertir esa percepción en evidencia cuantitativa será necesario muestrear entregas completas y definir qué significa sencillo, mediano y exitoso.

ADEV prefiere una brecha de evidencia declarada antes que una precisión inventada.

## Homedir no es la doctrina

Algunas decisiones de Homedir responden a su stack, comunidad, presupuesto y operación. Rutas, probes, frameworks, cantidades de checks y estrategias concretas no deben copiarse como leyes universales.

La extracción correcta separa tres niveles:

1. **Hecho del proyecto:** ocurrió un fallo de locale entre local y CI.
2. **Patrón transferible:** diferencias implícitas de entorno producen resultados inconsistentes.
3. **Asset adaptable:** define defaults, homogeneiza el entorno relevante y refleja el contrato en inner y outer loop.

Esta separación protege a ADEV de convertirse en documentación de Homedir. El proyecto aporta presión y evidencia; el framework conserva solo aquello que puede ayudar en otros contextos con sus límites visibles.

## Práctica: convierte un incidente en sistema

Selecciona un fallo real de tu repositorio y registra:

- comportamiento esperado y observado;
- impacto y forma de contención;
- supuesto que resultó falso;
- evidencia que permitió comprenderlo;
- control que lo habría detectado antes;
- alcance mínimo de la nueva regla;
- asset donde debe vivir;
- prueba de que el guardrail funciona;
- fecha o condición para revisarlo.

Después ejecuta una iteración pequeña que incorpore el aprendizaje. No cierres el ejercicio al editar documentación: demuestra que la próxima ejecución encuentra, evita o contiene el problema de una manera observable.

## Resultado del capítulo

Al terminar este capítulo, el lector puede usar Homedir como campo de prueba sin confundirlo con doctrina; reconstruir una cadena incidente–decisión–guardrail–asset; clasificar aprendizajes entre principios, pruebas, checks y runbooks; interpretar métricas operacionales con cautela; y convertir un fallo real en una mejora verificable del sistema de entrega.

## Puente a la práctica

- [`docs/evidence-index.md`](../../docs/evidence-index.md) relaciona principios con el estante actual de evidencia.
- [`docs/evidence/homedir-claim-boundaries.md`](../../docs/evidence/homedir-claim-boundaries.md) separa evidencia pública, relato del autor y brechas de reproducción.
- [`docs/case-studies/multilingual-drift.md`](../../docs/case-studies/multilingual-drift.md) resume la deriva multilenguaje.
- [`docs/case-studies/ci-cd-recovery.md`](../../docs/case-studies/ci-cd-recovery.md) trata la recuperación del camino de entrega.
- [`docs/case-studies/performance-evidence.md`](../../docs/case-studies/performance-evidence.md) muestra por qué medir precede al rediseño.
- [`docs/case-studies/disaster-recovery.md`](../../docs/case-studies/disaster-recovery.md) extiende la definición de backup hasta la restauración.
- [Release gates de Homedir en el commit observado `a2baac0`](https://github.com/scanalesespinoza/homedir/blob/a2baac07fc60f025ebcb9aab7c5f794928cbd831/config/docs/governance/RELEASE_GATES.md).
