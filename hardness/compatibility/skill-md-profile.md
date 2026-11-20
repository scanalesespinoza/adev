# SKILL.md Convention Profile

## Status

This is a compatible, non-exclusive reference profile for runtimes that discover skills from a folder containing `SKILL.md`. It does not assert official support, certification, or exclusivity for any runtime.

## Mapping

| Portable concept | `SKILL.md` convention mapping | Preservation rule |
| --- | --- | --- |
| Skill identity and purpose | YAML `name`/`description` plus body purpose | Keep the portable purpose and trigger boundary. |
| Applicability | Trigger and non-trigger sections | Do not broaden activation beyond the contract. |
| Authority and effects | Permissions, side-effects, and policy sections | Preserve or strengthen the strictest boundary. |
| Behavior | Required sequence, invariants, uncertainty, stop/escalate | Keep safe-stop behavior explicit. |
| Evidence and validation | Evidence and validation section; adjacent evaluation file when used | Keep source, uncertainty, and acceptance records. |

## Reference implementation

[`adev-read-only-inspection`](../skills/adev-read-only-inspection/SKILL.md) is the local reference skill for this profile. It remains a repository asset; an adapting runtime decides how it discovers or renders the file without changing the contract.

## Known adaptation gaps

The convention does not itself define tool permissions, policy enforcement, evaluation execution, lifecycle management, or external communication controls. An adapter must record these gaps rather than assume them.
