# Repository Guidelines

Read [`framework/ADEV.md`](framework/ADEV.md) first. It is the persistent operating context for this repository and overrides generic writing-repo assumptions. For agent-native delivery assets, also read [`implementation/AGENTS.md`](implementation/AGENTS.md).

## Purpose
This repo is the canonical home of A-Dev: the framework, its implementation model, the manuscript, the adoption kit, and proof assets extracted from real model- and agent-assisted delivery work. Treat it as a doctrine-and-evidence system, not as a loose notes repository.

## Structure
- `framework/`: canonical doctrine, evidence, practice, adoption, and book sources.
- `implementation/`: agent-consumable operating model, profiles, contracts, playbooks, and integration guidance.

## Working Rules
- Follow `framework/ADEV.md` for stage-based delivery.
- Default mode is one atomic PR per stage.
- Keep canonical public content in English unless a bilingual mirror is explicitly required.
- Do not turn undocumented assumptions into doctrine.
- If a lesson comes from Homedir, extract the transferable rule and record it in a reusable asset.

## Expected Deliverables
When you add or revise framework material, prefer assets such as:
- evidence indexes,
- failure-derived case studies,
- starter-kit rituals and checklists,
- manuscript expansions with explicit outcome statements.

## Validation
Use the narrowest meaningful validation for the changed surface. For docs-focused PRs, that typically means link/structure review and consistency checks rather than broad code validation.

## PR Shape
Every PR should state: what changed, why it matters, what is intentionally out of scope, and what stage should follow next.
