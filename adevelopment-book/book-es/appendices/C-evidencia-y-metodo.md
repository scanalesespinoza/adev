# Apéndice C. Evidencia y método

## Por qué este apéndice existe

ADEV se construyó desde la experiencia real, pero la experiencia no es sinónimo de prueba universal. Un repositorio puede mostrar commits sin demostrar productividad. Un pipeline verde puede demostrar checks sin probar valor para el usuario. Un relato honesto puede enseñar una lección sin permitir reproducir su cronología.

Este apéndice explica cómo la primera edición clasifica sus afirmaciones, selecciona fuentes y limita conclusiones. El objetivo no es otorgar apariencia científica a todo el libro. Es permitir que el lector distinga con claridad:

- qué ocurrió y puede observarse;
- qué pudo reproducirse;
- qué recuerda o interpreta el autor;
- qué depende de supuestos;
- qué sigue siendo una propuesta.

La fuerza de una conclusión nunca debería superar la fuerza de su evidencia.

## Clases de afirmación

La edición utiliza seis clases principales:

| Clase | Significado | Forma editorial |
| --- | --- | --- |
| **Observada** | Existe un artefacto o estado inspeccionado directamente. | “El repositorio muestra…”, acompañado de fuente y frontera. |
| **Reproducida** | Se ejecutó un método explícito y se obtuvo el resultado informado. | Incluye comandos, entradas, commit o fecha y resultado. |
| **Reportada** | Una fuente afirma el dato, pero esta edición no completó su reproducción. | “El whitepaper reporta…”, sin elevarlo a resultado independiente. |
| **Relato del autor** | Proviene de memoria o experiencia profesional narrada en entrevistas. | Se atribuye al autor y se declara la falta de artefacto cuando importa. |
| **Inferida o estimada** | Se deriva de datos más supuestos, modelos o interpretación. | Expone supuestos, límites y evita lenguaje causal. |
| **Propuesta** | Describe una práctica, control o futuro que todavía no fue observado suficientemente. | Se presenta como hipótesis, recomendación o agenda abierta. |

Una misma historia puede contener varias clases. En EventFlow, el número de commits hasta una frontera es reproducido; las líneas informadas permanecen reportadas; el ahorro y el retorno eran estimaciones. En Homedir, el release gate tiene un artefacto público; varios incidentes permanecen como relatos atribuidos hasta enlazar sus ejecuciones y commits exactos.

## La unidad mínima de evidencia

Una evidencia útil necesita más que una URL.

Registra:

1. **Afirmación:** qué se intenta sostener.
2. **Fuente:** archivo, commit, issue, PR, workflow, release, métrica, entrevista o documento.
3. **Frontera:** repositorio, rama, commit, tag, fechas, entorno y población aplicable.
4. **Método:** comandos, consulta, procedimiento o forma de observación.
5. **Resultado:** dato o comportamiento obtenido.
6. **Interpretación permitida:** qué demuestra razonablemente.
7. **Limitación:** qué no puede concluirse.
8. **Estado:** observado, reproducido, reportado, inferido, estimado o propuesto.
9. **Fecha de observación:** necesaria cuando la fuente puede cambiar.
10. **Responsable de revisión:** rol que mantendrá o retirará la afirmación.

Sin frontera, una métrica mutable pierde significado. Sin método, otra persona no puede comprobarla. Sin límite, el lector puede extenderla más allá de lo que el artefacto demuestra.

## Jerarquía práctica de fuentes

No existe una jerarquía perfecta para toda pregunta, pero ADEV prefiere fuentes cercanas al efecto que se afirma.

### Para cambios de software

Una combinación fuerte puede incluir:

- issue con necesidad y aceptación;
- decisión o política aplicable;
- diff y commit;
- pruebas y checks;
- revisión;
- artefacto integrado;
- despliegue identificado;
- comprobación del comportamiento;
- observación posterior.

Cada pieza responde a una pregunta distinta. El diff demuestra una modificación; la prueba, una propiedad; el despliegue, una promoción; el recorrido final, la disponibilidad del comportamiento.

### Para métricas de repositorio

Prefiere:

- commit inicial y final;
- comando exacto;
- versión de la herramienta cuando sea relevante;
- reglas de inclusión y exclusión;
- identidad agrupada o bots separados;
- tratamiento de merges, binarios y código generado;
- resultado conservado con fecha.

Los gráficos de una interfaz son señales útiles, pero un comando reproducible con frontera explícita facilita auditoría.

### Para experiencia humana

Entrevistas y recuerdos aportan conflicto, criterio y significado que Git no registra. Deben conservarse como testimonios, no disfrazarse de telemetría.

Cuando dos recuerdos difieren, la edición puede:

- buscar un artefacto que resuelva la discrepancia;
- conservar el rango o la incertidumbre;
- omitir la precisión innecesaria;
- registrar la brecha para investigación posterior.

La rama descartada de Homedir enseña el costo de acumular cambios aunque su duración exacta siga sin resolverse.

## De la actividad al resultado

Uno de los errores más comunes en software asistido por IA es tratar actividad como productividad.

### Commits

Muestran unidades de historial según hábitos de integración. No tienen tamaño o valor uniforme. Más commits pueden indicar granularidad, automatización, correcciones o ruido.

### Líneas de código

Muestran volumen textual agregado o eliminado bajo reglas de conteo. No distinguen funcionalidad, pruebas, configuración, documentación, código generado, refactor o retrabajo.

### Tiempo entre eventos

Las marcas de tiempo de commits, issues y PR permiten medir intervalos de calendario. No demuestran dedicación humana continua. Para medir esfuerzo se necesita un registro de trabajo o un método equivalente.

### Checks verdes

Demuestran que los controles ejecutados aceptaron el estado observado. No prueban ausencia de riesgos desconocidos ni corrección de la necesidad original.

### Deployment

Demuestra que un artefacto llegó a un entorno y posiblemente está saludable. No prueba adopción, satisfacción ni valor sin evidencia adicional.

Para hablar de resultado, la cadena debe acercarse al efecto que importa. Si la afirmación es “el usuario puede recuperar su cuenta”, la evidencia necesita recorrer esa acción, no terminar en la compilación.

## Causalidad y contrafactuales

Decir que ADEV causó un resultado exige más que mostrar que se utilizó antes de obtenerlo.

Una evaluación causal necesita considerar:

- qué habría ocurrido sin la práctica;
- si alcance y calidad son comparables;
- experiencia y composición del equipo;
- cambios simultáneos de herramientas, arquitectura o producto;
- periodo de aprendizaje;
- mantenimiento e incidentes posteriores;
- selección de casos exitosos;
- costos completos.

EventFlow no tuvo una ejecución paralela del mismo producto bajo condiciones equivalentes y sin agentes. Por eso su historial no permite calcular causalmente un multiplicador de productividad o retorno.

A falta de contrafactual, pueden presentarse mecanismos y observaciones acotadas: ramas pequeñas reducen el trabajo expuesto al descarte; checks detectan ciertas clases de fallo; contexto durable reduce instrucciones repetidas. Incluso estas proposiciones deben comprobarse en el contexto donde se aplican antes de atribuir un impacto cuantitativo.

## Método para casos derivados de fallos

Los casos más valiosos de ADEV siguen esta estructura:

1. **Contexto:** producto, entorno y momento relevantes.
2. **Restricción:** qué limitaba las opciones.
3. **Expectativa:** qué se creía que ocurriría.
4. **Fallo o conflicto:** qué ocurrió realmente.
5. **Evidencia:** cómo se detectó y comprendió.
6. **Decisión:** qué intervención se eligió y por qué.
7. **Validación:** qué devolvió la confianza.
8. **Guardrail:** qué cambió para el siguiente intento.
9. **Asset:** dónde quedó el aprendizaje.
10. **Límite:** qué parte no puede generalizarse.

Esta forma evita dos extremos: una anécdota sin prueba y un conjunto de métricas sin decisión humana.

El patrón preferido es:

> **Incidente → decisión → guardrail → validación → asset reutilizable.**

Si una historia no puede enlazar todavía todos esos elementos, se publica con su brecha o permanece en el backlog.

## Promover una lección a doctrina

Un fallo no justifica automáticamente una regla global. Antes de promoverlo, pregunta:

- ¿El riesgo o repetición es significativo?
- ¿Conocemos el alcance mínimo útil?
- ¿La regla habría cambiado el resultado?
- ¿Puede observarse su cumplimiento?
- ¿Existe un owner y un evento de revisión?
- ¿Duplica o contradice otra regla?
- ¿El patrón es portable o pertenece a un overlay?

La lección puede vivir en código, prueba, checklist, runbook o caso sin convertirse en doctrina. El estante correcto mantiene la baseline aplicable.

## Fuentes mutables y enlaces durables

Una URL a la rama principal muestra el estado actual, no necesariamente el observado al escribir.

Para afirmaciones materiales:

- fija el enlace a un commit o tag;
- registra la fecha de observación;
- cita el archivo o workflow específico;
- evita enlazar solo la raíz si existe una fuente más precisa;
- actualiza el registro cuando una afirmación depende deliberadamente del estado vigente.

Si la fuente desaparece o se vuelve privada, la afirmación no adquiere validez por haber sido cierta antes. Conserva únicamente evidencia permitida y revisa si todavía puede publicarse.

## Evidencia negativa e incertidumbre

No encontrar un fallo no demuestra que no exista. Del mismo modo, no localizar un artefacto no prueba que un incidente no ocurrió.

Registra diferencias como:

- “no observado en esta muestra”;
- “el check no detectó la condición”;
- “la fuente no estaba disponible”;
- “el relato no fue reproducido”;
- “la hipótesis sigue abierta”.

La incertidumbre forma parte del resultado. Ocultarla produce una precisión que la evidencia no merece.

También deben conservarse resultados adversos: intentos fallidos, regresiones, reglas retiradas, controles ruidosos y adopciones sin beneficio. Una práctica que publica solo éxitos no puede aprender con honestidad.

## Privacidad y minimización

Trazabilidad no autoriza almacenar información sensible.

Los registros de evidencia no deben incluir:

- secretos, tokens o credenciales;
- datos personales innecesarios;
- información confidencial de clientes o empleadores;
- URLs, hosts o infraestructura privada;
- prompts y salidas sin procesar con contenido sensible;
- detalles que permitan reconstruir un acceso peligroso.

Utiliza roles, rangos y descriptores neutrales. Conserva el mínimo necesario para sostener el patrón. Si una credencial aparece en historial, debe rotarse; documentar el incidente no la vuelve segura.

## Derechos, citas y asistencia de IA

Esta edición fue desarrollada con asistencia de inteligencia artificial. La selección, interpretación, edición y responsabilidad final pertenecen al autor. La asistencia debe declararse en los preliminares y materiales de publicación.

Para fuentes externas:

- cita ideas y datos con enlace o referencia suficiente;
- evita reproducir fragmentos extensos sin permiso;
- verifica licencias de código, diagramas, imágenes y templates;
- utiliza marcas de terceros de manera descriptiva;
- registra permisos para contribuciones, testimonios o material no propio;
- revisa derechos antes de traducir o adaptar material publicado.

Una fuente citada no transfiere automáticamente permiso para redistribuir su contenido completo.

## Conflictos de interés

El autor creó ADEV y condujo sus proyectos fundadores. Ese acceso aporta conocimiento profundo y también introduce sesgo de selección e interpretación.

La edición lo mitiga mediante:

- límites explícitos;
- fuentes públicas cuando existen;
- comandos reproducibles;
- exclusión de estimaciones promocionales no validadas;
- agenda de investigación abierta;
- distinción entre caso fundador y adopción independiente.

No elimina el conflicto. La evidencia externa de equipos que no participaron en la creación de ADEV será necesaria para evaluar portabilidad e impacto con mayor autoridad.

## Registro editorial recomendado

Para una nueva afirmación material, utiliza una ficha como esta:

```text
ID:
Afirmación:
Clase: observada | reproducida | reportada | relato | inferida | estimada | propuesta
Fuente:
Frontera y fecha:
Método:
Resultado:
Interpretación permitida:
Limitaciones:
Privacidad y permisos:
Owner y próxima revisión:
```

Relaciona la ficha con el capítulo, caso, asset y agenda de investigación correspondientes. Si el método no puede publicarse por sensibilidad, declara esa limitación y reduce la fuerza de la conclusión.

## Estantes de evidencia de esta edición

- [`docs/evidence-index.md`](../../../docs/evidence-index.md) mapea principios a fuentes y casos.
- [`docs/evidence/eventflow-metrics-reproduction.md`](../../../docs/evidence/eventflow-metrics-reproduction.md) conserva la auditoría de métricas de EventFlow.
- [`docs/evidence/homedir-claim-boundaries.md`](../../../docs/evidence/homedir-claim-boundaries.md) separa artefactos, relatos y brechas de Homedir.
- [`docs/case-studies/`](../../../docs/case-studies/) contiene narrativas de fallos y decisiones.
- [`docs/research-agenda.md`](../../../docs/research-agenda.md) registra preguntas que todavía no pueden cerrarse.
- [`publishing-kit/07-ai-disclosure-and-rights.md`](../../../publishing-kit/07-ai-disclosure-and-rights.md) mantiene el checklist de asistencia, derechos y permisos.

## Regla final

La evidencia no se acumula para impresionar. Se conserva para tomar mejores decisiones, permitir revisión y limitar lo que afirmamos.

Cuando una historia sea más fuerte que su prueba, conserva la historia como experiencia y reduce la conclusión. Cuando una métrica sea reproducible pero no mida valor, publica el dato y rechaza la inferencia. Cuando aparezca evidencia nueva, permite que cambie la doctrina.

Eso también es ADEV: aplicar a nuestras propias afirmaciones la misma disciplina que exigimos al software.
