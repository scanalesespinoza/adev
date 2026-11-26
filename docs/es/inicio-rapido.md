# A-Dev: inicio rápido en español

> Esta página refleja el [inicio rápido del README](../../README.md#quick-start). El resto de la documentación del repositorio está en inglés. El libro *ADEV: La práctica de AI Agentic Development* está completo en español en [adev-book](https://github.com/scanalesespinoza/adev-book/tree/main/adevelopment-book/book-es).

A-Dev hace que los agentes de programación que ya usas, como Claude Code o Codex, trabajen como lo haría un ingeniero senior cuidadoso. Aclaran el objetivo antes de cambiar algo, piden permiso antes de acciones riesgosas, prueban y verifican su trabajo, y aprenden de los errores.

## Instalación

Requisitos: Linux o macOS con `bash`, `git` y `curl`. Ejecútalo desde una carpeta de herramientas, no desde dentro de uno de tus proyectos:

```bash
mkdir -p ~/workspace && cd ~/workspace
curl -fsSL https://raw.githubusercontent.com/scanalesespinoza/adev/main/install/bootstrap.sh | bash
```

**¿Eres estudiante o estás empezando con agentes?** Usa el perfil guiado. El agente explica cada paso y pide confirmación antes de cambiar archivos:

```bash
curl -fsSL https://raw.githubusercontent.com/scanalesespinoza/adev/main/install/bootstrap.sh | bash -s -- --profile guided
```

Después abre una terminal nueva e inicia una sesión nueva de tu agente.

| Opción | Para qué sirve |
| --- | --- |
| `--profile guided\|standard\|autonomous` | Ajusta la autonomía del agente a tu experiencia (por defecto `standard`). Ver [perfiles](../../profiles/README.md). |
| `--workspace RUTA` | Elige dónde se clona A-Dev (por defecto, el directorio actual). |
| `--overlay-repo URL` | Conecta tu [overlay personal](../../starter-kit/personal-overlay/README.md) privado. Es opcional; no lo necesitas para empezar. |

¿Prefieres leer el script antes de ejecutarlo? Descárgalo, revísalo y luego ejecútalo: `curl -fsSLO https://raw.githubusercontent.com/scanalesespinoza/adev/main/install/bootstrap.sh && less bootstrap.sh && bash bootstrap.sh --profile guided`.

En Windows, clona el repositorio y ejecuta `.\install\Install-ADev.ps1 -AdevProfile guided`. Ver la [guía de instalación](../../install/README.md).

## Qué cambia en tu equipo

- Clona A-Dev en `./adev`, o en `--workspace`.
- Agrega un bloque de instrucciones entre `<!-- adev:start -->` y `<!-- adev:end -->` en `~/.claude/CLAUDE.md` y `~/.codex/AGENTS.md`. Aplica a **todas** las sesiones de esos agentes. El resto del contenido de esos archivos se conserva.
- Enlaza los skills de A-Dev en `~/.claude/skills`, `~/.codex/skills` y `~/.agents/skills`.
- Agrega el comando `adev` a `~/.local/bin` y guarda tu configuración en `~/.config/adev/config`.

Instalarlo nunca le da al agente permiso para hacer push, publicar, desplegar, mergear ni borrar. Eso siempre requiere tu aprobación explícita.

**Para deshacerlo:** `adev uninstall` quita el bloque, los enlaces de skills, el comando y la configuración. Deja la carpeta `adev/` y cualquier línea que hayas agregado a tu perfil de shell; bórralas tú si quieres.

## Qué cambia en una sesión

Si le pides "ayúdame con la tarea 2" en el repositorio de un ramo, con el perfil guiado, un agente que trabaja con A-Dev:

1. resume qué pide el enunciado y cómo se evalúa;
2. señala ambigüedades antes de programar, por ejemplo si un promedio de 3,95 se redondea a un 4,0 que aprueba;
3. pregunta por la política de IA del curso y si prefieres pistas, que revise tu código o que escriba el código y te lo explique ([overlay académico](../../overlays/academic.md));
4. propone un plan y espera tu respuesta antes de escribir archivos;
5. prueba y verifica su trabajo, dice qué no verificó y termina con una lista de lo que debes revisar y, si tu curso lo exige, una declaración honesta de uso de IA;
6. registra lo aprendido en tu overlay personal, si tienes uno ([ciclo de aprendizaje](../../skills/adev-learn/SKILL.md)).

No crea ramas, no hace push ni abre pull requests a menos que se lo pidas.

En el día a día: `adev doctor` revisa la instalación, `adev update` la mantiene al día y `adev capture session --title "..."` registra evidencia.

## Palabras que vas a ver

**Perfil** (*profile*): cuánto pregunta y explica el agente. **Overlay**: reglas adicionales para un contexto, como un curso o un producto web. **Skill**: instrucciones que un agente carga para un tipo de tarea. **Overlay personal**: tu repositorio privado de preferencias y evidencia. **R0–R3**: niveles de riesgo de las acciones, desde solo leer (R0) hasta afectar algo fuera de tu equipo (R3). Todas las definiciones, en inglés: [definitions](../definitions.md).

## Usar A-Dev sin instalarlo

Para agentes que no pueden ejecutar el instalador, como agentes en la nube o en la web, o para una sola tarea, pega este prompt al inicio de la sesión. Cambia el perfil si quieres, y quita la línea del overlay si no tienes uno.

```text
Trabaja bajo A-Dev en esta sesión. Fuente: https://github.com/scanalesespinoza/adev
(usa una copia local si existe; si no, lee los archivos desde GitHub). Respóndeme en español.

Antes de hacer cualquier otra cosa, lee en este orden:
1. SKILL.md: cómo aplicar A-Dev a una tarea.
2. ADEV.md: los 13 principios centrales. Aplican a todo lo que hagas.
3. profiles/guided.md: el perfil de esta sesión (guided | standard | autonomous).
4. practices/engineering-baseline.md: el estándar de calidad de cada cambio.
5. overlays/README.md: luego lee solo los overlays que correspondan a la tarea
   (para trabajos de un curso, overlays/academic.md).

Luego, en cada tarea:
- Resume el resultado esperado, los criterios de aceptación, el alcance y lo que
  estás autorizado a hacer. Pregunta si falta algo.
- Revisa antes de cambiar nada. Conserva el trabajo que no hiciste tú.
- Entrega al nivel de la base de ingeniería: pruebas y casos borde, manejo de errores,
  seguridad, compatibilidad, vuelta atrás. Propón las mejoras fuera de alcance en vez
  de hacerlas.
- Verifica el resultado por el camino que sigue un usuario real. Informa qué
  verificaste, qué no y por qué.
- Nunca hagas push, publiques, despliegues, mergees, borres ni reescribas historial
  sin mi aprobación explícita para esa acción. Cargar A-Dev no te da ningún permiso.
- Mis instrucciones explícitas y las reglas del propio repositorio tienen prioridad
  sobre los valores por defecto de A-Dev. Si chocan con un principio central,
  detente y pregunta.

Antes de cerrar una tarea relevante, y después de cualquier error o corrección, aplica
skills/adev-learn/SKILL.md: enumera las lecciones y regístralas como evidencia en mi overlay.
Overlay: https://github.com/<tu-usuario>/<tu-overlay-privado> (lee su SKILL.md al inicio).
```

Si A-Dev está instalado, la guía gestionada hace todo esto automáticamente. Basta con un recordatorio:

```text
Aplica A-Dev (skill adev) a esta tarea con el perfil guided, y ejecuta el ciclo de aprendizaje al terminar.
```
