# Repository Guidelines

Read [`ADEV.md`](ADEV.md) first. It is the persistent operating context for this repository and overrides generic writing-repo assumptions. For agent-native delivery assets, also read [`implementation/AGENTS.md`](implementation/AGENTS.md).

## Purpose
This repo is the canonical home of A-Dev: the framework, its implementation model, the adoption kit, and proof assets extracted from real model- and agent-assisted delivery work. Treat it as a doctrine-and-evidence system, not as a loose notes repository.

## Structure
- `ADEV.md`: the core doctrine. Keep it small.
- `hardness/`, `overlays/`, `practices/`: agent governance, scoped requirements, and guidance.
- `implementation/`: agent-consumable operating model, profiles, contracts, playbooks, and evaluations.
- `profiles/`: baseline autonomy and guidance profiles.
- `install/`: the installer for local agents, with its test.
- `starter-kit/`: copyable adoption assets, including the personal overlay template.
- `docs/`: knowledge, evidence, case studies, and reference maps. The site is built from all tracked Markdown.
- The book lives in [adev-book](https://github.com/scanalesespinoza/adev-book).

## Working Rules
- Follow `ADEV.md` and the [delivery defaults](practices/delivery-defaults.md).
- Default mode is one atomic PR per stage.
- English is the only language for committed content in this repository unless a bilingual mirror is explicitly required. This is a rule for the A-Dev canon, not for adopting repositories.
- Do not turn undocumented assumptions into doctrine.
- Keep the core small: place a lesson in the narrowest layer that would have changed the outcome (core, default, practice, or overlay).
- Keep canonical docs vendor-neutral: stack-specific values (endpoints, resource limits, tuned flags) belong in overlays, case studies, or evidence, labeled as project-specific.
- If a lesson comes from Homedir, extract the transferable rule and record it in a reusable asset.
- Starter-kit assets tell a practitioner what to do on day 0, in the first week, and before the first production release.

## Expected Deliverables
When you add or revise framework material, prefer assets such as:
- evidence indexes,
- failure-derived case studies,
- starter-kit rituals and checklists,
- overlays for context-specific requirements.

## Editorial Positioning
1. Homedir is the proving ground. A-Dev is the transferable system.
2. Doctrine and starter kit must make sense without private chat context.
3. The most valuable content is disciplined learning under failure, delivery pressure, and verification, not abstract optimism.

## Framework Stages
1. **Canon:** convert operational evidence into reusable doctrine, favoring evidence indexes, guardrails, and failure-derived case studies.
2. **Productize the method:** improve adoption paths, rituals, templates, profiles, and installable assets so A-Dev is portable beyond its proving ground.
3. **Authority and publishability:** strengthen external credibility without diluting the framework. Book work happens in [adev-book](https://github.com/scanalesespinoza/adev-book).

## Validation
Use the narrowest meaningful validation for the changed surface. For docs-focused PRs, that typically means link/structure review and consistency checks rather than broad code validation.

## PR Shape
Every PR should state: what changed, why it matters, what is intentionally out of scope, and what stage should follow next.
