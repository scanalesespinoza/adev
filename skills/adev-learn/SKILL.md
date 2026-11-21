---
name: adev-learn
description: Run the A-Dev learning loop at the close of a meaningful task, after a failure, or when the user asks to capture knowledge. Records sanitized evidence in the user's personal overlay, updates candidate patterns, and proposes mature patterns, practices, and lessons to A-Dev.
---

# A-Dev learning loop

Daily work is A-Dev's raw material. This loop turns it into evidence, then into candidate patterns, then, when the evidence justifies it, into A-Dev practices, overlays, defaults, or core principles. It follows the [pattern lifecycle](../../patterns/README.md).

```text
task closed -> lessons? -> evidence in overlay -> candidate pattern -> proposal to A-Dev -> adopted layer
```

## When to run

- Before your final message in any turn where you changed files, fixed a mistake, or learned something non-obvious, even when the message ends with a question for the user. Waiting for the task to be formally closed means the loop rarely runs.
- At the close of a task that involved a decision, a failure, a surprise, a workaround, or a non-obvious verification.
- Immediately after an incident, a failed check, a rollback, or a correction by the user.
- When the user asks to record, capture, or learn from the work.

Skip it for routine work that produced nothing new; say so in one line rather than inventing a lesson.

## Steps

1. **Harvest.** List what this task taught, in one sentence each: what failed or surprised, what fixed it, what would have prevented it, and what the user corrected. Keep only items that would change how a future task is done.
2. **Locate the overlay.** Use the personal overlay registered in the agent's guidance (the line `Overlay <name>` written by the A-Dev installer). If none is registered, report the lessons in the final message and suggest creating one from the [template](../../starter-kit/personal-overlay/README.md).
3. **Record evidence.** Follow the overlay's own `SKILL.md`. Search its `evidence/INDEX.md` first and update an existing record when the subject matches; otherwise create a dated record from its templates (`adev capture <daily|incident|session> --title "..."` scaffolds one), then commit it locally in the overlay. Facts only: what happened, what was tried, the result, the verification, what remains. Sanitize: no secrets, raw sensitive output, names, customers, or internal hosts.
4. **Update candidate patterns.** For each transferable lesson, add evidence to an existing candidate in the overlay's `patterns/` or add a new candidate with context, an observable statement, and links to the evidence. Record counter-evidence too.
5. **Check promotion.** A candidate is ready to propose when it meets the [adoption criteria](../../patterns/README.md#adopting-a-candidate): observed more than once or costly once, would have changed the outcome, the narrowest A-Dev layer is clear, it is observable, and it can be stated without private context.
6. **Propose to A-Dev.** For a ready candidate, prepare a sanitized change to A-Dev: a public candidate in `patterns/`, or an edit to the narrowest layer (overlay, practice, default; the core only for rules that hold everywhere). Opening a pull request is an external effect: do it only when the user or a durable grant authorizes it; otherwise leave the branch or the drafted text and say so.
7. **Report.** In the final message, list what was recorded, which candidates changed, and what was proposed or is ready to propose.

## Authority

Registering an overlay with the A-Dev installer authorizes this loop, in every profile, to write sanitized records in that overlay and commit them locally there. Do this without asking, even in the guided profile, and mention it in the final message. Pushing the overlay, writing anywhere else, and opening pull requests to A-Dev remain external effects that need the user's explicit authorization.

## Guardrails

- Loading this skill does not authorize pushes or pull requests.
- Never fabricate a lesson, a metric, or a recurrence. One observation is a candidate, not a rule.
- Keep private evidence private. What reaches A-Dev is the sanitized pattern and a summary of the evidence.
- Prefer making an existing rule more precise over adding a new one.
