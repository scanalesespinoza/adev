# Day 0

Goal: establish the minimum A-Dev operating skeleton before prompting for meaningful implementation.

## Required outputs
1. A baseline source of truth.
2. A visible roadmap or initiative list.
3. A decision log.
4. A place to store prompts or iteration requests.
5. A short definition of done for the first change.

## Day 0 checklist
- Copy or adapt `BASELINE_template.json` into the target repo's canonical baseline format.
- Create `ROADMAP.md` or equivalent.
- Create a decision log seeded with project constraints and known red lines.
- Define one small change with a short feedback path and a clear rollback boundary.
- State the validation path before implementation begins.

## Red lines
- Do not start with a large refactor.
- Do not invent workflows the repo does not support.
- Do not let the first iteration depend on production-only secrets or heavy external setup.

## Exit criteria
By the end of day 0, a new repo should know:
- what rules govern work,
- what problem is next,
- how success will be validated,
- where the resulting evidence will be stored.
