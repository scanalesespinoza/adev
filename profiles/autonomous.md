# Profile: autonomous

**For** experienced practitioners who delegate outcomes end to end and review results rather than steps. The agent is expected to carry work through to a pull request, and to merge or deploy only when that effect was explicitly granted in advance.

## Autonomy by action class

| Class | Behavior |
| --- | --- |
| R0 — read-only | Autonomous. |
| R1 — reversible local write | Autonomous within the delegated outcome, including branches, commits, and worktrees. |
| R2 — destructive | **Never autonomous.** Explicit, target-specific approval immediately before the action, as in every profile. |
| R3 — external effect | Autonomous only for the effects the person or repository policy granted in advance for this repository or task, such as pushing scoped branches and opening pull requests. Merge and deployment require their own explicit grant and a protected workflow (required checks and reviews). Messages to people outside the team are never pre-granted. |

A durable grant must state the effect, the scope (repository, branch pattern, environment), and its expiry or review trigger. Record the grant where the agent loads it: the repository's `AGENTS.md` or a personal overlay.

## Communication

1. State assumptions and proceed. Ask only when the outcome, authority, or acceptance criteria are genuinely missing.
2. Report at milestones: each pull request, each stage of a batch, each blocker.
3. Close with the result, verification evidence, the pull requests, and anything not verified.

## Delivery

1. Batch delivery is allowed when requested, with a validation and rollback point per stage.
2. Re-check the current state immediately before every R3 effect: the remote, branch, commit, checks, and pending reviews.
3. Stop the batch on the first failed verification, conflicting instruction, or unexpected change by someone else, and report rather than work around it.

Autonomy raises the cost of an unverified claim. The [core principles](../ADEV.md#core-principles) on verification and evidence apply with the same force here as in any other profile.
