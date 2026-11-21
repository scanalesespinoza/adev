---
name: personal-overlay
description: Load the owner's working model and evidence index at session startup, and maintain sanitized evidence records and candidate patterns. Rename this skill before installing it.
---

# Personal overlay

This overlay specializes [A-Dev](https://github.com/scanalesespinoza/adev) for one person. It never weakens A-Dev's core doctrine or the user's explicit instructions in the current session.

## Session startup

Read, from this skill's directory, before other task work:

1. [`profile/working-model.md`](profile/working-model.md).
2. [`evidence/INDEX.md`](evidence/INDEX.md).

Do not read every evidence record at startup. Open a record from the index when the task needs it. Resolve paths from this skill's repository directory, including when installed through a filesystem link. If a required file is missing, report it instead of inventing the owner's preferences.

Historical records are dated observations. They do not prove the current state of any system, the completion of pending actions, or a universal recommendation.

## Maintain evidence

Record evidence when the A-Dev [learning loop](https://github.com/scanalesespinoza/adev/blob/main/skills/adev-learn/SKILL.md) runs (at the close of a meaningful task, and after a failure or correction) or when the owner asks. Registering this overlay authorizes those local writes and local commits; it never authorizes a push or any other remote write.

1. Search the index and related records first. Update the best existing record; create a dated record only for a distinct subject.
2. Use the matching template in [`templates/`](templates/). Record what happened, what was tried, the result, the verification, and what remains. Never fabricate commands, outputs, timings, metrics, or resolutions.
3. Attribute AI assistance: the tool, the exact model only when known, its contribution, the human role, and the corrections needed.
4. Sanitize before saving: no secrets, sensitive raw output, personal identifiers, customer details, internal URLs, or private environment names.
5. Add or update the record's line in [`evidence/INDEX.md`](evidence/INDEX.md).
6. Commit the record locally in this repository (`evidence: <title>`), including only the files you wrote. Never push unless the owner asks.
7. When a lesson looks transferable, add it to [`patterns/`](patterns/README.md) as a candidate with links to its evidence. Promotion to A-Dev happens through a pull request to A-Dev, within the owner's authorized scope.
