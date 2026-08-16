# 14. Cierre: comienza con un repositorio

## La práctica empieza después de la lectura

Este libro comenzó con una posición: la inteligencia artificial es una herramienta creada por personas, y las personas seguimos siendo responsables de lo que hacemos con ella.

Desde allí construimos una práctica.

Tratamos el software como un hábitat porque alguien tendrá que vivir con nuestras decisiones. Separamos al arquitecto del agente, no para convertirlos en adversarios, sino para conservar la intención humana mientras delegamos ejecución. Transformamos prompts repetidos en contexto durable. Hicimos pequeñas las iteraciones para volver manejable la incertidumbre. Unimos creación y verificación. Diseñamos autonomía dentro de límites. Llevamos la práctica desde una persona hasta un equipo y desde el código hasta producción.

También miramos los fallos. EventFlow mostró capacidad, pero no probó causalidad económica. Homedir aportó incidentes, pero no convirtió un proyecto en verdad universal. Las objeciones nos obligaron a reconocer pérdida de habilidades, dependencia, concentración y situaciones donde no deberíamos delegar todavía.

Todo eso importa. Pero comprender ADEV no equivale a practicarlo.

La práctica empieza cuando una regla cambia una decisión real dentro de un repositorio.

## No esperes la herramienta perfecta

Es posible que en el futuro muchas ideas de ADEV formen parte de los productos que utilizamos. Los agentes podrán incorporar mejores contratos, permisos, memoria, revisiones y controles de manera predeterminada.

No necesitamos esperar ese futuro.

ADEV es deliberadamente portable. Puedes comenzar con la herramienta que ya tienes, siempre que permita trabajar dentro de un alcance que comprendas y revisar sus efectos. La práctica vive principalmente en el repositorio: producto, arquitectura, baseline, issues, decisiones, pruebas y evidencia.

Esa ubicación también protege libertad. Si cambias de modelo, interfaz o proveedor, el conocimiento que gobierna el producto no debería desaparecer con la sesión. Habrá adaptaciones, pero la intención permanece bajo control del equipo.

No necesitas comenzar con múltiples agentes, una plataforma de orquestación ni una baseline extensa. Necesitas un problema real y un ciclo suficientemente pequeño para aprender.

## Elige el repositorio

Escoge un repositorio que puedas modificar y validar sin exponer a otras personas a un riesgo que todavía no sabes administrar.

Puede ser:

- una aplicación personal que ya utilizas;
- una herramienta interna con un entorno de prueba;
- una librería pequeña;
- un sitio con un cambio reversible;
- un repositorio de aprendizaje con una necesidad concreta.

Evita el proyecto imaginario si tienes acceso a una necesidad real. Los ejercicios artificiales enseñan sintaxis; la práctica se revela cuando existen restricciones, historia y consecuencias.

Tampoco elijas el sistema más crítico que conoces. El primer objetivo no es demostrar valentía. Es construir confianza mediante evidencia.

## Instala una baseline mínima

Crea un punto de entrada que el agente deba consultar. Puede llamarse `ADEV.md`, siempre que el equipo reconozca su autoridad y sepa mantenerlo.

No copies todo este repositorio. Escribe únicamente lo necesario para la primera iteración:

1. **Producto:** quién necesita el cambio y qué acción observable espera.
2. **Arquitectura:** qué decisión estructural debe preservarse.
3. **Calidad:** qué comprobaciones acompañarán la implementación.
4. **Seguridad:** dónde puede actuar el agente y qué requiere aprobación.
5. **Entrega:** cómo llegará el cambio a revisión y cómo se verificará.

Enlaza las fuentes existentes en vez de duplicarlas. Si no existe alguna, registra la ausencia. Una brecha visible es más segura que una definición inventada.

Tu baseline inicial puede ser breve. Su valor no se mide en palabras, sino en si evita una mala decisión o ayuda a detectar un supuesto.

## Define una acción, no una ambición

No pidas “mejorar la aplicación” ni “modernizar la arquitectura”. Elige una acción que una persona o sistema pueda observar.

Por ejemplo:

> Cuando una entrada requerida esté vacía, la interfaz debe explicar qué falta sin perder los valores ya ingresados.

Desde esa acción crea un issue con alcance, restricciones y aceptación. Pide al agente que consulte la baseline, determine si el cambio es atómico y señale la incertidumbre antes de implementar.

Si la explicación de la tarea se expande demasiado, reduce el cambio. Si el agente necesita decidir algo estructural, detén la ejecución y mejora los planos. Si aparece una segunda necesidad, crea otra iteración.

La primera entrega no debe impresionar a nadie. Debe poder explicarse, revisarse, validarse y recuperarse.

## Camina con los ojos abiertos

Mientras el agente trabaja, no esperes hasta el final para descubrir qué construyó.

Observa:

- qué archivos toca;
- qué dependencias introduce;
- qué contratos modifica;
- qué supuestos declara;
- qué pruebas ejecuta;
- qué no pudo verificar.

Después reproduce la evidencia. Revisa el diff. Ejecuta el inner loop. Publica mediante el flujo autorizado. Permite que el outer loop contraste el cambio. Recorre la acción prometida en el entorno relevante.

Los checks verdes no son el final si el usuario todavía no puede hacer lo que el issue prometió.

Si algo falla, no evalúes ADEV por la expectativa de que la inteligencia artificial debía acertar a la primera. Evalúa si el ciclo hizo visible el error mientras todavía era manejable y si la recuperación dejó al sistema mejor preparado.

## Cierra el aprendizaje

Después de entregar, haz una pausa breve.

Pregunta:

- ¿Qué información faltó?
- ¿Qué decisión tomó el agente sin fundamento suficiente?
- ¿Qué control encontró el problema demasiado tarde?
- ¿Qué parte funcionó gracias a una regla existente?
- ¿Qué debería ocurrir de manera distinta la próxima vez?

Convierte la respuesta en el asset más pequeño que cambie el comportamiento futuro: código, prueba, regla, checklist, runbook o conocimiento especializado.

No agregues una regla solo para demostrar que aprendiste. Si el problema fue particular y ya está cubierto por una prueba, quizá no necesite doctrina global. Si la lección contradice otra regla, resuelve la precedencia. Si una regla dejó de ser útil, retírala.

El sistema aprende cuando la siguiente iteración actúa de otra manera.

## Después del primer cambio

No aumentes inmediatamente tamaño, autonomía y paralelismo al mismo tiempo.

Elige una dimensión:

- un cambio ligeramente mayor;
- un control de calidad más profundo;
- un segundo agente revisor;
- una entrega progresiva;
- una nueva persona utilizando la misma baseline.

Observa qué capacidad nueva exige y qué fricción introduce. La madurez no consiste en automatizarlo todo. Consiste en expandir el sistema sin perder comprensión, responsabilidad ni capacidad de recuperación.

Después de varios ciclos podrás distinguir qué instrucciones se repiten, qué decisiones son estables, qué checks aportan evidencia y qué permisos pueden ampliarse. Esa experiencia será tu versión de ADEV: compatible con la práctica, pero ajustada a tu producto, equipo y realidad.

## La invitación final

Quiero que la inteligencia artificial nos ayude a construir una tecnología que devuelva tiempo a las personas, amplíe oportunidades y reduzca fricción innecesaria. Sé que esa capacidad también puede amplificar errores y desigualdad. Por eso no basta con abrazar la herramienta. Debemos aprender a dirigirla.

ADEV no está terminado. Ninguna práctica viva lo está. Necesita profesionales que la prueben en otros contextos, publiquen resultados y fallos, cuestionen sus reglas y aporten mejores assets.

No te pido que creas todas sus afirmaciones. Te pido que ejecutes una iteración y observes.

Toma un repositorio real. Declara la intención. Dibuja los límites. Deja que el agente ejecute. Verifica con tus propios ojos. Responde por el resultado. Conserva el aprendizaje.

Después hazlo otra vez, un poco mejor.

La herramienta aporta capacidad.

Tú aportas el propósito, el criterio y la responsabilidad.

Ahí comienza ADEV.

## Primera acción

Abre [`starter-kit/DAY_0.md`](../../starter-kit/DAY_0.md), elige tu repositorio y completa hoy el esqueleto mínimo. Luego utiliza [`starter-kit/examples/minimal-adev-loop/`](../../starter-kit/examples/minimal-adev-loop/) para recorrer una sola iteración hasta su verificación.

No cierres el ciclo con “el agente terminó”. Ciérralo con una evidencia que otra persona pueda comprender.

## Resultado del capítulo

Al terminar este capítulo, el lector puede iniciar ADEV sin depender de una plataforma específica: seleccionar un repositorio de bajo riesgo, instalar una baseline mínima, expresar una acción observable, completar un ciclo verificado y convertir su resultado en aprendizaje durable.
