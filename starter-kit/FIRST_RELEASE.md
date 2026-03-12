# First Release

Goal: move from internal iteration to a release candidate without losing traceability.

## Release checklist
- Confirm the scope is still atomic and understandable.
- Re-run the focused validation path for the release surface.
- Verify baseline, roadmap, and decision log do not contradict the implementation.
- Summarize what changed, why it matters, and what remains out of scope.
- Define rollback or recovery expectations when relevant.

## Evidence package
A first release should leave behind:
- branch and PR traceability,
- validation notes,
- updated baseline or guardrails when new failure modes appeared,
- a short release summary that a future agent can follow.

## Release discipline
- Do not promote a release that cannot be explained in one paragraph.
- Do not hide risk behind broad wording.
- Do not tag or publish solely because work exists; release when the scope is coherent and validated.
