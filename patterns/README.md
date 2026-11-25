# Patterns

Patterns are how A-Dev evolves. A lesson observed in real work enters as a **candidate**, gathers evidence, and either becomes part of a layer (an overlay, a practice, a default, or, rarely, the core) or is retired. This shelf holds candidates that are public and sanitized enough to discuss; detailed evidence usually stays in the contributor's own evidence repository or [personal overlay](../starter-kit/personal-overlay/README.md).

## Lifecycle

```text
observed in work  ->  candidate (here)  ->  adopted into a layer  ->  reviewed or retired
       private evidence      public summary        overlay / practice / default / core
```

| Status | Meaning |
| --- | --- |
| `candidate` | Observed at least once with recorded evidence. Apply when the context matches; not a rule. |
| `adopted` | Moved into a layer through a pull request. The candidate entry links to its new home. |
| `retired` | Contradicted by evidence, superseded, or no longer useful. Keep the entry with the reason. |

## Adding a candidate

1. Describe the context in which the pattern applies, and where it does not.
2. State the pattern so that compliance can be observed.
3. Summarize the evidence: dates, what was observed, and counter-evidence. Raw records may stay private; the summary must stand on its own and contain no private names, environments, or data.
4. Group candidates by domain in one file per domain, so that related patterns are reviewed together.

## Adopting a candidate

Adopt a pattern into a layer when:

1. It was observed more than once, or a single failure was costly enough to justify it.
2. It would have changed the outcome in the recorded cases.
3. The narrowest layer that would have changed the outcome is clear.
4. Compliance can be observed or tested, and the layer has an owner who will review it.
5. Related rules are consolidated rather than duplicated.

These are the [change discipline](../hardness/01-policy-and-precedence.md#change-discipline) criteria applied to patterns.

## Current candidates

| Domain | Patterns | Evidence window |
| --- | --- | --- |
| [Agentic delivery runtimes](agentic-delivery-runtime.md) | 16 | 2026-11-19 to 2026-11-20 |
| [Operational workflow](operational-workflow.md) | 8 (1 adopted) | Local telemetry, aggregated |
