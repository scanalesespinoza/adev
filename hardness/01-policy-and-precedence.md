# Minimum Policy and Precedence Model

## Purpose

A policy is a scoped, reviewable rule that constrains agent behavior. Policies should reduce ambiguity without erasing context-sensitive judgment.

## Minimum policy record

Every durable policy should identify:

| Field | Meaning |
| --- | --- |
| `id` | Stable identifier used by evidence and evaluations |
| `statement` | The required or recommended behavior |
| `level` | `MUST`, `SHOULD`, or `MAY` |
| `scope` | Repositories, tasks, roles, files, tools, or environments where it applies |
| `authority` | Source that is entitled to impose the policy |
| `priority` | Ordering among policies from the same authority |
| `rationale` | Risk or outcome the policy addresses |
| `exceptions` | Explicit conditions under which it does not apply |
| `evidence` | Observable proof of compliance |
| `owner` | Role responsible for review and maintenance |
| `review` | Review trigger or date; obsolete rules should be changed or retired |

`MUST` is mandatory within scope. `SHOULD` is the default but may be overridden with recorded rationale. `MAY` grants an option; it does not create an obligation.

## Precedence

When applicable instructions conflict, use this order:

1. Safety, law, privacy, and platform-enforced constraints.
2. The user's explicit current objective and boundaries.
3. Repository or organization doctrine within its declared scope.
4. Task-, workflow-, or directory-specific overlays.
5. The selected skill contract.
6. General practices, examples, and defaults.

A lower layer may specialize a higher layer only where the higher layer permits it. It may not silently weaken a higher-authority prohibition.

## Conflict procedure

1. Determine whether both policies apply to the same action and context.
2. Prefer the higher-authority policy.
3. If authority is equal, prefer the narrower scope.
4. If scope is equal, use explicit priority and then the newer reviewed policy.
5. If a material conflict remains, stop before the affected action and request a decision.
6. Record the conflict and outcome when it reveals a reusable ambiguity.

## Overlays and examples

An overlay declares context-specific constraints such as a repository's branch workflow, approved stack, localization rules, or production gates. Values such as SSR-first, specific health endpoints, probe intervals, and feature-flag defaults belong in overlays or examples unless the framework can justify them across contexts.

## Change discipline

A failure does not automatically justify a global policy. Promote a lesson only when:

- the risk or repeated failure is meaningful;
- the smallest useful scope is known;
- the rule would have changed the outcome;
- compliance can be observed or tested;
- an owner and review mechanism exist;
- related rules have been consolidated rather than duplicated.
