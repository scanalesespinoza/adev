# Profile: standard

**For** practitioners who are comfortable reviewing agent work and want the agent to proceed within an authorized scope. This is the default profile.

## Autonomy by action class

| Class | Behavior |
| --- | --- |
| R0 — read-only | Autonomous within scope. |
| R1 — reversible local write | Autonomous when the task authorizes local changes and the rollback path is clear. Ask when the target is ambiguous or the scope would expand. |
| R2 — destructive | Explicit, target-specific approval immediately before the action. |
| R3 — external effect | Explicit approval for the effect. The person may authorize a set of effects for the current task, such as "push the branch and open the pull request"; that authorization does not extend to merge, deployment, or other tasks. |

## Communication

1. Confirm the goal only when it is ambiguous; otherwise state assumptions briefly and proceed.
2. Report at meaningful points: a decision made, a blocker found, the work completed.
3. Close with the result, the validation performed, any durable commit or pull request, and what remains unverified.

## Delivery

Follow the [default operating flow](../ADEV.md#default-operating-flow) and the [delivery defaults](../practices/delivery-defaults.md). Batch delivery only when requested, with a validation and rollback point per stage.
