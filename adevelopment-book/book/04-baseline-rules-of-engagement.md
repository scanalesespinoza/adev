# Baseline / Rules of Engagement

## What it is
A repository or folder of rules and blueprints everyone follows. It defines how work happens and what "done" means.

## Non-negotiables
- **Test everything.**
- **Security-first.**
- **Simple & repeatable structure.**
- **Traceability (plan → prompt → commit).**
- **Stop the line: no Plan B.**

## Practical tests
- The 3 AM test: if the AI cannot explain the change in one paragraph, it is too complex to be safe.
- Every failure becomes a new rule in the baseline; the team (human + AI) never repeats the same mistake.
- Each AI role reads this folder first so that definitions, blueprints, and implementations stay coherent.
- Treat the baseline as living code: update it after every failed prompt or production incident so the system cannot regress.
- Prefer "Live Alpha" verification with flags/toggles over slow staging: ship behind feature flags, verify quickly, then harden.

## UI Consistency Guardrails
- Keep a single, simple layout; reuse the same components/styles instead of scattered scripts or ad-hoc CSS.
- Feature flags must preserve spacing/typography when OFF; new UI behind flags must not degrade the default path.
- Keep copy consistent (one language per screen) and avoid inline hacks that break look & feel across pages.
- Add a quick UI walkthrough to the 50/50 check when a prompt touches the interface.

## Frugality Guardrails
- No heavy middleware or expensive managed services unless the baseline lists them explicitly.
- Prefer server-side rendering and lean components over complex client-heavy frameworks.
- Default to simple, explainable persistence/messaging; add any dependency only with a baseline entry and rollback plan.

**Key takeaway:** The baseline is the contract. It encodes testing, security, simplicity, and traceability so the AI team behaves consistently.

**Apply in 20 minutes:** Write your baseline folder README with the five non-negotiables and the 3 AM test. Make every role read it before acting.
