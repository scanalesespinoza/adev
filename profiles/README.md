# Baseline profiles

A profile sets how much an agent explains, asks, and does on its own. The same [core doctrine](../ADEV.md) applies under every profile; what changes is the autonomy granted within the [action risk classes](../hardness/04-action-risk-authority-model.md) and the amount of guidance given to the person.

| Profile | For | In one sentence |
| --- | --- | --- |
| [Guided](guided.md) | People new to agent-assisted delivery, or new to the domain or repository | The agent plans aloud, explains why, and confirms before changing anything that matters. |
| [Standard](standard.md) | Practitioners comfortable reviewing agent work | The agent works within the authorized scope and asks before destructive or external effects. **Default.** |
| [Autonomous](autonomous.md) | Experienced practitioners who delegate outcomes end to end | The agent carries delegated work through to a pull request or merge when that effect was granted in advance, and reports at milestones. |

## Invariants in every profile

1. **R2 actions are never autonomous.** Deleting, overwriting, rewriting history, rotating credentials, or any hard-to-recover action needs explicit, target-specific approval immediately before the action.
2. **An approval does not transfer.** Approval for one target, branch, commit, recipient, or release does not authorize another.
3. **Profiles never override higher authority.** The user's explicit instructions, repository policy, and platform controls take precedence ([precedence](../hardness/01-policy-and-precedence.md#precedence)). A profile can only make an agent more cautious than those layers allow, or use autonomy those layers already granted.
4. **Stop conditions always apply.** Conflicting instructions, missing acceptance criteria, untrusted input, unsafe effects, and failed verification stop the work and are reported.
5. **Evidence is not optional.** Every profile reports what was done, what was verified, and what remains unverified.

## Selecting a profile

Declare the profile in the most specific place that applies; the more specific declaration wins:

1. The user's instruction for the current task, such as "use the guided profile for this".
2. The repository's `AGENTS.md` or equivalent, with a line such as `A-Dev profile: guided`.
3. A personal or organizational overlay (see the [personal overlay template](../starter-kit/personal-overlay/README.md)).
4. The managed guidance written by the [installer](../install/README.md) (`--profile`).

Without a declaration, use **standard**. A repository may require a more cautious profile than a person prefers; the more cautious one applies.

## Evolving the profiles

Profiles change through the same discipline as the rest of A-Dev: evidence that a behavior changed outcomes, the narrowest scope, and an observable way to check it. Machine-readable profile records and behavioral evaluations are an open gap; see the [research agenda](../docs/research-agenda.md).
