# Overlay: web product

**Applies when** a change touches user-facing views, templates, visible copy, localization, public routes, or administration views.

## Tests

1. Every change touching templates, visible copy, localization, public routes, or administration views updates or creates tests for the affected behavior in the same iteration.
2. When the narrative, hierarchy, or copy of a view changes, review the sibling tests of the same resource so that outdated expectations do not survive until CI.
3. When a refactor changes the interaction model, update the tests in the same iteration to validate the new observable behavior and remove dependencies on legacy markup.
4. When a view derives summaries or statuses from optional codes, sanitize the value again after each derived assignment and cover the exact production state in tests to avoid null-handling defects.

## Localization

1. In a multilingual product, implement all visible text through language bundles or equivalent localization assets. Avoid hardcoded text in templates, scripts, backend code, and interface messages.
2. Tests of multilingual pages pin the expected locale explicitly and validate the corresponding localized content.

## Visual identity

Apply branding overrides for an event or context only within that scope, and preserve the global product identity outside it.

## Health checks

Expose liveness and readiness endpoints through the mechanism the stack provides, and include them in the quality cycle when applicable. Specific paths, such as those of a particular framework, are examples, not defaults.
