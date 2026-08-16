# 12. Adoptar ADEV

## No todas las organizaciones parten desde el mismo piso

Preguntar por el mínimo viable de ADEV parece sencillo, pero no existe una respuesta idéntica para todos. Un equipo con arquitectura documentada, pruebas rápidas y un pipeline confiable necesita algo diferente de un repositorio donde las decisiones viven en conversaciones y cada entrega depende de una persona.

La adopción comienza con un diagnóstico, no con copiar archivos.

Antes de introducir agentes, observa:

- ¿El equipo puede explicar qué producto está construyendo y para quién?
- ¿Las decisiones estructurales están visibles?
- ¿Existe una definición compartida de calidad y seguridad?
- ¿Los cambios llegan a integración mediante un flujo conocido?
- ¿El comportamiento se verifica después del despliegue?
- ¿Los incidentes producen controles durables?
- ¿Las personas pueden recuperar un estado confiable sin heroísmo?

ADEV no reemplaza estas capacidades. Las hace explícitas y las adapta a una ejecución donde los agentes pueden producir cambios con gran rapidez.

Un equipo inmaduro puede obtener un beneficio temprano porque ADEV introduce estructura que antes faltaba. También puede sufrir más al comienzo, porque cada brecha de producto, arquitectura o entrega se vuelve visible. Esa incomodidad no es todavía retorno: es el costo de descubrir el sistema real.

## Una inversión, no un atajo de tres meses

Adoptar ADEV exige tiempo para aprender, fallar, registrar reglas, mejorar checks y formar criterio. Durante los primeros ciclos, el equipo puede avanzar más lento que con su método conocido.

Si el objetivo es terminar una iniciativa breve, de baja complejidad y con una fecha cercana, cambiar simultáneamente herramientas y práctica puede agregar un riesgo innecesario. En ese escenario podría ser más sensato utilizar el proceso existente y experimentar con ADEV en un alcance aislado.

La adopción tiene más sentido cuando existe una intención sostenida:

- desarrollar regularmente con agentes;
- mejorar consistencia entre personas;
- reducir retrabajo evitable;
- acelerar aprendizaje operacional;
- aumentar capacidad de entrega a mediano plazo;
- conservar independencia respecto de una herramienta específica.

No podemos prometer un porcentaje universal de reducción de errores ni una fecha exacta de retorno. La inversión depende de la madurez inicial, el riesgo del producto, la experiencia del equipo y la calidad de la evidencia. La decisión correcta consiste en definir qué problema de trabajo se intenta mejorar y cómo se observará el cambio.

## El piloto correcto

El primer piloto no necesita una tecnología espectacular. De hecho, conviene que la tecnología no distraiga de la práctica.

Selecciona un repositorio donde:

- exista una necesidad real, pero con impacto acotado;
- el equipo pueda ejecutar pruebas y revisar cambios;
- no se requieran secretos o accesos productivos para comenzar;
- haya una persona responsable de producto y una de la entrega;
- sea posible desplegar o demostrar un comportamiento;
- un error pueda revertirse sin consecuencias graves.

Evita iniciar con una migración crítica, un refactor transversal o un dominio cuyo riesgo todavía no se comprende. El propósito del piloto no es demostrar que el agente puede escribir mucho código. Es completar un ciclo bajo una práctica compartida.

La primera métrica de éxito es binaria y humilde: **¿el equipo pudo recorrer necesidad, issue, cambio, validación, integración y comprobación final dejando evidencia comprensible?**

## Día cero: construir el esqueleto

Antes del primer prompt de implementación, el repositorio necesita un mínimo de contexto durable.

### 1. Producto

Registra:

- persona o consumidor al que se ayuda;
- problema que se intenta resolver;
- primera acción observable que el producto permitirá;
- comportamientos que están fuera del piloto;
- restricciones económicas, regulatorias o temporales.

No es necesario escribir un documento extenso. Debe existir suficiente claridad para saber si una solución técnicamente correcta responde a la necesidad.

### 2. Arquitectura

Registra:

- stack disponible y razones de selección;
- límites entre componentes;
- decisiones estructurales que el agente no puede cambiar localmente;
- interfaces o datos que deben preservarse;
- restricciones de infraestructura y operación;
- dudas que siguen abiertas.

La arquitectura inicial es un conjunto de decisiones revisables, no una profecía completa del sistema.

### 3. Calidad

Define:

- comportamiento que cerrará la primera iteración;
- checks disponibles en el inner y outer loop;
- expectativa de pruebas para el cambio;
- recorrido manual o automatizado del usuario;
- evidencia necesaria para aceptar el resultado.

### 4. Seguridad

Establece:

- espacio de trabajo autorizado;
- identidad y permisos del agente;
- manejo de secretos y datos sensibles;
- acciones destructivas o externas que requieren aprobación;
- mecanismo de contención o rollback;
- rol que resolverá dudas de autoridad.

### 5. Operación

Crea o identifica:

- baseline de entrada, como `ADEV.md`;
- roadmap o lista priorizada;
- registro de decisiones;
- lugar para issues e iteraciones;
- flujo de rama y pull request;
- definición de cierre de la primera entrega.

El día cero termina cuando el repositorio puede responder qué regla gobierna el trabajo, qué problema sigue, quién responde, cómo se validará y dónde quedará la evidencia.

## La baseline mínima

Una baseline inicial no debería contener todo lo que el equipo podría necesitar en el futuro. Comienza con reglas que ya tienen una razón clara:

- trabajar desde una necesidad y un alcance explícitos;
- consultar las fuentes de producto y arquitectura;
- mantener cada iteración pequeña y reversible;
- proteger secretos y datos;
- validar antes de publicar;
- integrar mediante el flujo real del repositorio;
- comprobar el comportamiento entregado;
- detenerse ante autoridad, riesgo o contexto inciertos;
- convertir fallos relevantes en mejoras durables.

Cada regla necesita alcance y evidencia. “Calidad primero” expresa una intención, pero no guía una decisión. “El cambio debe compilar localmente y reproducirse en CI” establece un contrato observable.

El template incluido en el starter kit es una semilla neutral, no una configuración lista para producción. El equipo debe sustituir placeholders y definir sus fuentes, comandos, roles y entornos reales.

## La primera iteración

Elige una acción visible y pequeña. Puede ser mostrar una información, validar una entrada o corregir un comportamiento existente. Evita que el primer cambio dependa de una arquitectura todavía incierta.

El issue debería contener:

- problema y usuario afectado;
- comportamiento esperado;
- alcance y no objetivos;
- contexto que debe consultar el agente;
- restricciones relevantes;
- criterios de aceptación;
- evidencia de inner loop, outer loop y entorno objetivo.

Antes de implementar, pide al agente que evalúe si el issue cabe en una iteración atómica. Si encuentra varios comportamientos independientes, debe proponer la división y esperar que se elija el siguiente cambio.

Durante la ejecución, observa archivos creados, eliminados y modificados; interfaces afectadas; nuevas dependencias; decisiones estructurales y resultados de las validaciones. No necesitas leer pasivamente cada token generado, pero sí contrastar los efectos con los planos.

El pull request debe explicar qué cambió, por qué importa, qué quedó fuera, qué evidencia existe y cómo recuperar. La iteración termina cuando el comportamiento se comprueba en el entorno relevante, no cuando el agente deja de editar.

## La primera semana: aprender más que expandir

La meta de la primera semana no es maximizar features. Es cerrar al menos un ciclo y mejorar la baseline con lo aprendido.

Al finalizar, el equipo debería poder mostrar:

- un issue acotado;
- una rama y PR trazables;
- una decisión registrada;
- validación local e independiente;
- una comprobación del comportamiento;
- un fallo, duda o descubrimiento convertido en asset;
- una explicación compartida del flujo.

Si no hubo fallos, revisa si los controles fueron suficientemente adversariales o si el cambio era demasiado trivial para enseñar. No es obligatorio inventar una regla nueva: una baseline que crece sin necesidad se vuelve ruido.

Haz una retrospectiva breve:

- ¿Qué contexto tuvo que repetirse en el prompt?
- ¿Qué decisión privada debería volverse durable?
- ¿Qué check encontró un problema y en qué etapa?
- ¿Qué permiso fue excesivo o insuficiente?
- ¿Qué parte del cierre dependió de conocimiento tácito?

El resultado de la semana es un sistema de trabajo ligeramente mejor, no solo más código.

## La primera entrega

La primera entrega conecta el piloto con la realidad operacional.

Antes de promoverla, confirma:

1. El alcance sigue siendo comprensible y coherente.
2. Los contratos de producto, arquitectura, calidad y seguridad no se contradicen.
3. El inner loop eliminó fallos baratos.
4. El outer loop reprodujo los controles relevantes con independencia.
5. La revisión evaluó intención y riesgo, no solo estilo.
6. Existe rollback o contención proporcional.
7. El despliegue utiliza el artefacto esperado.
8. La persona o sistema consumidor puede ejecutar la acción prometida.
9. La observación posterior no muestra una regresión relevante.
10. Las lecciones quedaron en el repositorio.

No publiques únicamente porque existe trabajo acumulado. Una entrega es una unidad de valor y evidencia que puede explicarse, verificarse y recuperarse.

## Medir la adopción sin fabricar éxito

Las métricas iniciales deberían describir flujo y calidad, no vender una transformación antes de tiempo.

Puedes observar:

- tiempo desde issue hasta comportamiento verificado;
- edad y tamaño comprensible de los PR;
- fallos encontrados localmente, en CI y después del despliegue;
- retrabajo causado por contexto ausente;
- tiempo de revisión y recuperación;
- reglas que se usan, se contradicen o se ignoran;
- entregas cerradas frente a trabajo iniciado;
- percepción del equipo sobre claridad y carga de revisión.

Registra una baseline anterior o un periodo inicial antes de atribuir mejoras. Segmenta por tipo y riesgo de cambio. Una media que mezcla correcciones pequeñas con migraciones complejas produce conclusiones débiles.

La pregunta no es si los agentes generaron más líneas. Es si el sistema entrega comportamientos útiles con evidencia, riesgo controlado y aprendizaje acumulativo.

## Curar la baseline

Durante el desarrollo, las reglas suelen incorporarse con urgencia. Sin mantenimiento, ADEV puede crecer hasta consumir demasiada atención y contexto.

Conviene revisar la baseline de forma ligera cada semana y hacer una curaduría más profunda con una cadencia adecuada —mensual puede ser un buen punto de partida— para:

- eliminar duplicados;
- resolver contradicciones y precedencia;
- mover detalle especializado fuera del índice;
- retirar reglas que perdieron alcance;
- comprobar que cada obligación tiene evidencia;
- revisar costo, ruido y consumo de contexto;
- relacionar fallos recientes con controles existentes.

La cadencia es una recomendación adaptable. Un equipo con pocos cambios puede revisar menos; un periodo de alta transformación puede necesitar más frecuencia.

## Madurar sin competir por niveles

El modelo de adopción del repositorio describe cuatro capacidades progresivas:

1. **Experimentación asistida:** existe baseline y una iteración pequeña puede cerrarse con evidencia.
2. **Iteración disciplinada:** los fallos fortalecen reglas, pruebas o assets.
3. **Orquestación lista para producción:** la práctica resiste CI/CD, despliegue y rollback.
4. **Escala basada en evidencia:** nuevos equipos adoptan sin depender de contexto oculto.

No son certificaciones ni plazos. Un equipo puede ser maduro en pruebas e inmaduro en recuperación. Utiliza el modelo para encontrar la siguiente capacidad faltante y diseñar una iteración que la demuestre.

## Práctica: completa tu primer ciclo

Elige un repositorio real y reserva una sesión para el esqueleto del día cero. No empieces por personalizar todos los assets. Define producto, arquitectura, calidad, seguridad y una primera acción.

Después ejecuta un único cambio hasta su comprobación final. Conserva el issue, diff, pruebas, PR, resultado del entorno y aprendizaje.

Al terminar, responde:

- ¿La baseline cambió una decisión real?
- ¿El agente supo dónde encontrar contexto?
- ¿La evidencia demostró la promesa del issue?
- ¿El equipo podría repetir el ciclo sin reconstruir la conversación?
- ¿Qué capacidad falta antes de aumentar autonomía o paralelismo?

Solo entonces inicia la siguiente iteración.

## Resultado del capítulo

Al terminar este capítulo, el lector puede diagnosticar el punto de partida; elegir un piloto de bajo riesgo; establecer contexto mínimo de producto, arquitectura, calidad y seguridad; completar día cero, primera semana y primera entrega; medir flujo sin inventar causalidad; y curar una baseline que crece con la práctica.

## Puente a la práctica

- [`starter-kit/DAY_0.md`](../../starter-kit/DAY_0.md) establece el esqueleto inicial.
- [`starter-kit/FIRST_WEEK.md`](../../starter-kit/FIRST_WEEK.md) guía el primer ciclo completo.
- [`starter-kit/FIRST_RELEASE.md`](../../starter-kit/FIRST_RELEASE.md) organiza evidencia y recuperación de la primera entrega.
- [`starter-kit/BASELINE_template.json`](../../starter-kit/BASELINE_template.json) ofrece una semilla neutral que debe adaptarse.
- [`starter-kit/examples/minimal-adev-loop/`](../../starter-kit/examples/minimal-adev-loop/) muestra una estructura mínima y agnóstica.
- [`docs/adoption-maturity-model.md`](../../docs/adoption-maturity-model.md) ayuda a identificar la siguiente capacidad faltante.
