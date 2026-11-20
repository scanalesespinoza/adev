# Action Risk and Authority Model

This model classifies agent actions by effect, then defines the minimum autonomy, approval, evidence, and stop/escalate behavior. It applies after the human request is captured in the [expectations contract](03-human-expectations-contract.md) and alongside [policy precedence](01-policy-and-precedence.md).

## Classes

| Class | Effect boundary | Default autonomy | Approval | Minimum evidence | Stop or escalate when |
| --- | --- | --- | --- | --- | --- |
| **R0 — read-only** | Inspects state without local or external mutation. | Allowed within contract scope. | No additional approval. | Command/query and summarized result. | Access is denied, scope is unclear, or sensitive data would be exposed. |
| **R1 — reversible local write** | Creates or edits recoverable local artifacts in the stated workspace. | Allowed only when the contract authorizes local writes and rollback is clear. | Approval required if the contract is read-only or the target is outside scope. | Changed paths, diff, validation, rollback path. | Target is ambiguous, writes expand scope, or validation fails. |
| **R2 — destructive or hard-to-recover action** | Deletes, overwrites, rotates, migrates, resets, or otherwise risks material loss. | Not autonomous. | Explicit, target-specific approval immediately before action. | Verified target, approval record, pre-action state or recovery plan, result. | Target, recoverability, or authorization is uncertain. |
| **R3 — external effect** | Communicates, publishes, deploys, purchases, changes remote state, or affects users/systems outside the workspace. | Not autonomous unless the contract grants this exact effect and policy permits it. | Explicit approval for the effect; protected workflows may add review or checks. | Intended audience/system, approval, remote result, validation, rollback/containment plan. | Recipient, remote target, credentials, policy, or impact is uncertain. |

## Classified actions

| Action | Class | Autonomous? | Approval rule | Evidence | Stop or escalate trigger |
| --- | --- | ---: | --- | --- | --- |
| Read a tracked file | R0 | Yes | None within scope | Path and summary | File is outside authorized scope or contains sensitive data. |
| Inspect `git status` or a local diff | R0 | Yes | None | Command and result | Repository scope is unclear. |
| List pull-request metadata | R0 | Yes | None | PR URL/state summary | Repository or PR identity is ambiguous. |
| Run a read-only link check | R0 | Yes | None | Command and pass/fail result | Check would transmit private content externally. |
| Create a documentation file in the current repository | R1 | Only if local writes are authorized | Ask if request is review-only | Paths, diff, local validation | The file duplicates a canonical asset or scope expands. |
| Edit a scoped Markdown document | R1 | Only if local writes are authorized | Ask if the requested target changes | Diff, link check, rollback by Git | Requirements conflict or validation fails. |
| Stage named files for a proposed commit | R1 | Only if commit preparation is authorized | Ask if mixed/unrelated changes exist | Staged paths and diff | Unrelated or untracked files would be included. |
| Create a local branch | R1 | Only if branch creation is authorized | None beyond contract | Branch name and base SHA | Base branch is stale or working tree is unexplained. |
| Delete a local branch | R2 | No | Explicit branch-specific approval after merge verification | Merge proof and branch name | Branch has unmerged work or an active worktree. |
| Overwrite or remove a tracked file | R2 | No | Explicit file-specific approval | Target, diff, recovery plan | Content ownership or recovery is uncertain. |
| Run a history-rewriting Git command | R2 | No | Explicit command and target approval | Before/after SHA and recovery plan | Shared history or target scope is uncertain. |
| Rotate or revoke a credential | R2 | No | Explicit system-specific approval | Authorization and rotation outcome | Service ownership, impact, or recovery is unclear. |
| Push a branch to a remote | R3 | Only when publishing is explicitly authorized | Explicit publication approval | Remote, branch, commit SHA, push result | Remote, branch, or commit differs from the contract. |
| Open a pull request | R3 | Only when PR creation is explicitly authorized | Explicit PR approval | PR URL, base/head, scope, validation | PR body would claim unverified evidence or target is wrong. |
| Merge a pull request | R3 | No, unless protected workflow and explicit merge authorization both permit it | Explicit merge approval after current-state revalidation | Checks, reviews, threads, SHA guard, merge result | Conflicts, failed checks, concurrent changes, or pending feedback. |
| Send an external message or publish content | R3 | No | Explicit recipient/content approval | Recipient, final content, delivery result | Recipient, content, privacy, or factual basis is uncertain. |

## Application rules

1. Classify by the highest plausible effect, not by the convenience of the command.
2. A lower-risk preparation step does not authorize a higher-risk follow-on action.
3. An explicit approval for one target, commit, branch, recipient, or release does not transfer to another.
4. When a policy or [skill contract](02-skill-contract-template.md) is stricter than this model, follow the stricter boundary.
5. This model defines governance expectations, not an executable permission schema or behavioral evaluation suite.
