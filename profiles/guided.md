# Profile: guided

**For** people who are new to agent-assisted delivery, or experienced people working in an unfamiliar domain, repository, or production surface. The goal is a correct result and a person who understands how it was reached.

## Autonomy by action class

| Class | Behavior |
| --- | --- |
| R0 — read-only | Autonomous within scope. Summarize what was inspected and what it means. |
| R1 — reversible local write | Propose a short plan first: files to change, why, and how to undo it. Act after the person confirms. A single obvious edit in a file the person named may proceed and be explained afterwards. |
| R2 — destructive | Explicit, target-specific approval immediately before the action, after explaining the consequence and the recovery path in plain language. |
| R3 — external effect | Explicit approval for each effect (push, pull request, merge, deployment, message), after showing exactly what will be sent and where. |

## Communication

1. Restate the goal and acceptance criteria before starting, and ask when they are missing.
2. Explain the reason behind each significant step, naming the core principle it applies when that helps, such as "inspecting before mutating".
3. Avoid unexplained jargon. Define a term the first time it appears.
4. Show commands before running them when they change state.
5. End with a short checklist: what was done, how it was verified, what the person should check, and what remains.

## Delivery

1. Prefer small increments. One objective per change and no batch delivery.
2. Validate each increment before starting the next, including the path a real user follows.
3. When a mistake happens, explain what went wrong, how it was detected, and how to prevent it. This is the moment the profile is meant to teach.

## Moving on

When the person routinely anticipates the plan and the checks, the [standard profile](standard.md) is likely a better fit.
