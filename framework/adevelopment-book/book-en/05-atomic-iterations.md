# 5. Atomic Iterations

## Change Size Determines Uncertainty

An agent can produce in minutes a volume of changes a person might have spread across hours or days. That capability invites large requests: build a complete feature, reorganize a module, or resolve several related problems at once.

The result looks efficient until something fails.

We must then discover which decision introduced the problem, which components were affected, and which work remains trustworthy. Time saved in generation becomes time spent on diagnosis, review, and rework.

ADEV responds by reducing the unit of change. An atomic iteration contains one primary intent, understandable scope, bounded implementation, and evidence for deciding whether to integrate, correct, or discard it.

Atomic does not mean absolutely minimal. It means small enough to keep its decisions and relationships under control.

## The Narration Heuristic

A simple way to detect an oversized task is to try narrating it.

If clearly explaining what must happen, what remains outside scope, and how the result will be verified requires a long conversation, we are probably describing several iterations. As a starting point, a task that can be narrated in two to five minutes often provides a manageable surface.

This is not a formula. Four minutes of explanation does not produce exactly twice the difficulty of two. Nor is every short description sound: one ambiguous sentence can hide an entire system.

Narration is useful because it makes the pieces visible:

- The product action.
- Components involved.
- Decisions to be made.
- Constraints to respect.
- Relevant risks.
- Evidence required for closure.

When the explanation accumulates multiple actions, layers, integrations, or success conditions, the task is asking to be divided.

## Complexity Lives in Relationships

A large task is not harder only because it contains more code. Every additional component can interact with earlier ones and open new paths to inspect.

Two independent methods present a small surface. Twenty methods distributed across interface, service, persistence, and authorization do not create only ten times as much reading. They introduce relationships, states, and possible sequences. The error may sit at the beginning or end of the path, but the space we must eliminate is larger.

Diagnostic cost therefore tends to grow faster than the visible volume of the change. We do not need an exact equation to use the principle:

> The more elements and relationships an iteration changes, the harder it is to attribute its results and recover a trusted state.

Atomicity reduces that surface. It lets us observe how each grain of software affects stability before adding the next.

## One Intent, Not Necessarily One File

Do not confuse an atomic change with modifying one file or writing few lines. A small action may require coordinated changes to code, tests, configuration, and documentation.

The correct unit is verifiable intent.

A change that displays the empty state of a list may include:

- A condition in the view.
- Localized text.
- A behavior test.
- An updated acceptance criterion.

Although it touches several surfaces, it remains coherent if all are necessary to demonstrate the same behavior.

Adding the empty state, redesigning navigation, and migrating storage in the same PR mixes three intents. One may work while another causes a regression, and the delivery is no longer independently reversible.

## From Need to Atomic Issue

An issue should begin with behavior, not a list of files. A minimum structure contains:

1. **Problem:** what currently prevents the consumer from reaching the goal.
2. **Expected action:** what becomes possible after the change.
3. **Scope:** which behavior belongs to this iteration.
4. **Out of scope:** which related temptations remain for later.
5. **Constraints:** which product, architecture, quality, and security contracts govern the change.
6. **Acceptance criteria:** which observable results must hold.
7. **Evidence:** which tests, walkthroughs, or verifications allow closure.

Before implementation, the agent can analyze whether the issue contains several actions or structural decisions. It can propose subdivisions and explain dependencies. The responsible person confirms that each slice retains value and is not merely convenient for the code.

A sequence of small issues can share a larger initiative. Atomicity does not remove vision; it avoids trying to materialize the entire vision at once.

## Size Depends on Maturity

Two to five minutes of narration is a conservative reference for beginners, not a permanent limit.

A mature repository can accept larger iterations because it has:

- Clear product and architecture contracts.
- Stable component boundaries.
- Fast, reliable tests.
- Observability.
- Automated quality and security.
- Known delivery and rollback paths.
- A team with shared language and criteria.

When a series of changes closes without ambiguity or rework, the team can gradually increase size. When errors become hard to locate, PRs accumulate comments, or branches live too long, it should reduce it.

Atomicity is a control variable. Adjust it according to evidence of stability.

> Start small. Increase size only when the system demonstrates that it can absorb the change.

## The Branch as a Risk Container

ADEV combines a trusted main branch with short-lived working branches. Each branch exists to resolve an atomic change and integrates through a pull request.

The point where the branch separates from `main` is a restoration reference. If implementation becomes tangled, we can compare its entire surface with a known state. If repairing it is less clear than rebuilding it, we can discard it and begin again without carrying doubtful work forward.

The branch does not replace backups, tests, or production rollback. Its function is to contain change risk before integration.

A short-lived branch also reduces divergence. The longer it stays open, the more likely `main` is to advance, other changes are to touch the same areas, and initial decisions are to become stale.

A PR should therefore not become an indefinite space where features accumulate. Its purpose is to carry one intent from one trusted state to another.

## The Branch That Was Hard to Abandon

Before adopting this degree of atomicity, one branch accumulated several features over several days. Three appeared to work. The next two demanded increasing refactoring and began affecting another service and behavior that had already been stable.

The problem was not only technical. Accumulated work made abandoning the branch emotionally difficult. Each correction tried to protect the earlier investment even as confidence in the whole continued to decline.

Eventually, everything had to be discarded and restarted from a trusted state. Even the apparently correct features were too entangled with the rest to integrate safely.

The case demonstrates the sunk cost of a long-lived branch:

> The more work an iteration accumulates, the harder it is to abandon, even when evidence shows that it is no longer trustworthy.

A feature is not truly complete if it can be preserved only alongside changes that destabilize the system.

## Stop the Line

When validation fails or a regression appears, progress is no longer the priority. New work on that line stops until evidence of stability is restored.

The sequence is:

1. Contain the change within its branch or deployment mechanism.
2. Reproduce the failure and determine its surface.
3. Compare it with the last trusted state.
4. Correct it within scope when the cause is clear.
5. Discard and restart when repair would preserve uncertainty.
6. Run the relevant validations again.
7. Turn the learning into durable protection.

Stopping the line does not punish error. It protects the system and the team from building new work on a doubtful foundation.

Atomicity also protects morale. Being wrong no longer means losing weeks. The team can experiment because the cost of going back is small, visible, and accepted.

## An Iteration Can Learn without Delivering

Not every attempt ends in integration. An iteration may demonstrate that an alternative fails, context is missing, or the issue was divided poorly.

That result can be valuable if recorded. We must still distinguish learning from delivery.

- **Closed learning iteration:** produced enough evidence to accept, reject, or reformulate a hypothesis.
- **Closed delivery iteration:** demonstrated the committed behavior and passed the necessary controls through the relevant environment.

“Failure is acceptable” does not authorize us to declare an incomplete feature done. It authorizes obtaining information through small attempts without hiding the result.

## Practice: Divide Until You Can Demonstrate

Choose an issue that has not begun and perform this exercise:

1. Explain it aloud without reading a task list.
2. Mark every distinct action you mention.
3. Identify each component or contract affected.
4. Separate structural decisions from local implementation.
5. Write closure evidence for each action.
6. Divide the issue until every part has one primary intent and can be reversed without losing the others.

Deliver the first part before starting the next. Then compare predicted size with actual work and diagnosis. That evidence will help adjust your future atomic unit.

## Chapter Outcome

After this chapter, the reader can use narration as a sizing heuristic; recognize complexity introduced by relationships; formulate atomic issues; adapt size to maturity; and use short-lived branches to contain failure, stop the line, and recover a trusted state.

## Bridge to Practice

- [`starter-kit/examples/minimal-adev-loop/`](../../starter-kit/examples/minimal-adev-loop/README.md) demonstrates a minimum loop with a roadmap, baseline, and iteration instruction.
- [`starter-kit/OPERATING_RITUALS.md`](../../starter-kit/OPERATING_RITUALS.md) collects continuity, preflight, and bounded-retry rituals.
- [`docs/case-studies/rollback.md`](../../docs/case-studies/rollback.md) preserves a recovery case and its available evidence.
