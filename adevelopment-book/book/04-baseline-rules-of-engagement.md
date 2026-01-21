# Baseline / Rules of Engagement

EvenFlow only worked because the baseline was a dam, not a memo. Day 1, the AI wanted to pull in “standard” stacks: heavy middleware, SPA frameworks, pricey managed services. The architect said no. The rules were written up front: SSR-first, lean messaging, flags default OFF, health checks always on. Every prompt had to read those guardrails before touching code.

Mid-sprint, a broken auth flow tried to sneak in. The line stopped. The failure became a new rule: include probes and UI walkthrough before merging anything touching identity. The baseline was updated in the same hour, not after the fact. That discipline is what turned 45 days of change into a stable HomeDir foundation.

By day 45, nothing shipped without the contract: tests, security, traceability, and a rollback path via flags. The baseline was living code, not a poster. It kept the project frugal, coherent, and recoverable even as the AI produced volume.

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
- Keep copy consistent (one language per screen) and avoid inline hacks that break look & feel across pages.
- Add a quick UI walkthrough to the 50/50 check when a prompt touches the interface.

### Failure Story: The Frankenstein UI
Early in HomeDir, I let the AI generate "modern" components without a style guide. By Day 3, I had Bootstrap buttons, Tailwind grids, and raw CSS flexboxes fighting on the same page. It was unmaintainable. I stopped the line, stripped everything back to a single `styles.css`, and wrote the "UI Consistency Guardrail" into the baseline. Now, the AI must read `styles.css` before generating any markup.

## Frugality Guardrails
- No heavy middleware or expensive managed services unless the baseline lists them explicitly.
- Prefer server-side rendering and lean components over complex client-heavy frameworks.
- Default to simple, explainable persistence/messaging; add any dependency only with a baseline entry and rollback plan.

## When to say “no” to the AI (architectural blacklist)
- Reject tech that increases coordination tax without matching value: heavy middleware, costly managed services, complex SPA frameworks for simple flows.
- Say no to persistence/messaging choices that you cannot run locally/cheaply or roll back fast.
- Push back on UI sprawl (multiple frameworks, ad-hoc scripts) that breaks consistency; prefer SSR-first.
- If the prompt output violates baseline constraints (security, simplicity, traceability), stop the line, fix, and update the baseline before proceeding.

**Key takeaway:** The baseline is the contract. It encodes testing, security, simplicity, and traceability so the AI team behaves consistently.

**Apply in 20 minutes:** Write your baseline folder README with the five non-negotiables and the 3 AM test. Make every role read it before acting.
