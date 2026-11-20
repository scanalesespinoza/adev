# Delivery defaults

These are A-Dev's recommended operating defaults. They apply unless a profile, overlay, or repository instruction overrides them with a recorded rationale. They specialize the [core principles](../ADEV.md#core-principles); they cannot weaken them.

## Pull requests

1. Finish each iteration or objective in a pull request. Completed work should not remain only in a local branch, a handoff note, or a chat transcript.
2. Open the pull request ready for review when the scope comes from a complete issue. Use a draft only when the scope is still unclear or the change intentionally needs staged review.
3. Reference the source issue from the pull request, and the pull request from the issue once it exists.
4. Describe the purpose, why it matters, scope in and out, validation performed, production verification and rollback plan when relevant, and the next stage.
5. Before requesting approval, merge, or promotion, complete the local validation, targeted tests, risk preflight, and verification notes the change needs. Approval reviews state the reasons and validations that justify the approval.
6. When the repository supports it and policy permits it, enable auto-merge once checks and approvals are satisfied. If an approved pull request is out of date, update it, let the normal checks run, and then merge.

## Branch hygiene

1. Before starting new work, delete merged local branches, re-synchronize the integration branch with its remote, and create a fresh branch from it.
2. Do not reuse a branch after it has been merged or superseded, even for a small follow-up.
3. After a merge, verify the result and delete the source branch locally and remotely, unless it is attached to an active worktree or a documented hold applies.

## Incremental rollout

For new features, endpoints, or APIs, use three iterations: hidden or non-production, progressive integration, then legacy cleanup after production validation. In batch delivery, create a restore point at the start and keep a checkpoint per stage.

## Versioning

Version and tag on a deliberate cadence, not on every pull request. When versioning, update every version reference, starting from the canonical version source of the project.

## Product focus

1. Pull request quality, release gates, and promotion checks belong to the delivery system: scripts, CI, runbooks, and handoffs. They are not product features unless the product scope explicitly says so.
2. When a product requirements document or roadmap is active, prioritize visible user value over internal tooling, release evidence, or operational layers outside the agreed product.

## Design judgment

1. Prefer a new canonical asset over a broad rewrite of a stable file when codifying a new lesson.
2. Treat technical debt as deferred decisions that erode earlier work. Re-evaluate design, structure, dependencies, and libraries when touching an area.
3. State the what and why before the how. Narrow the options enough to make the decision clear, while leaving room for judgment and context.
4. Treat steps and stages as process patterns, not rigid sequences. Add intermediate steps when they improve safety, quality, or coordination.
