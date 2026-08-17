# 12. Adopting ADEV

## Not Every Organization Starts from the Same Place

Asking for the minimum viable ADEV seems simple, but there is no identical answer for everyone. A team with documented architecture, fast tests, and a reliable pipeline needs something different from a repository where decisions live in conversations and every delivery depends on one person.

Adoption begins with diagnosis, not file copying.

Before introducing agents, observe:

- Can the team explain what product it is building and for whom?
- Are structural decisions visible?
- Is there a shared definition of quality and security?
- Do changes reach integration through a known flow?
- Is behavior verified after deployment?
- Do incidents produce durable controls?
- Can people recover a trusted state without heroics?

ADEV does not replace these capabilities. It makes them explicit and adapts them to execution in which agents can produce changes very quickly.

An immature team may gain an early benefit because ADEV introduces previously absent structure. It may also struggle more at first because every gap in product, architecture, or delivery becomes visible. That discomfort is not yet a return; it is the cost of discovering the real system.

## An Investment, Not a Three-Month Shortcut

Adopting ADEV requires time to learn, fail, record rules, improve checks, and develop judgment. During the first cycles, a team may move more slowly than with its familiar method.

If the objective is to complete a short, low-complexity initiative with a near deadline, changing tools and practice at the same time may add unnecessary risk. It may be wiser to use the existing process and experiment with ADEV in an isolated scope.

Adoption makes more sense when there is sustained intent to:

- develop regularly with agents;
- improve consistency among people;
- reduce avoidable rework;
- accelerate operational learning;
- increase delivery capacity over the medium term;
- preserve independence from a particular tool.

We cannot promise a universal error-reduction percentage or an exact return date. The investment depends on initial maturity, product risk, team experience, and evidence quality. The right decision is to define which working problem should improve and how that change will be observed.

## The Right Pilot

The first pilot does not need spectacular technology. In fact, the technology should not distract from the practice.

Choose a repository where:

- there is a real but bounded need;
- the team can run tests and review changes;
- secrets or production access are not required to begin;
- someone is accountable for the product and someone for delivery;
- a behavior can be deployed or demonstrated;
- an error can be reversed without serious consequences.

Do not begin with a critical migration, a cross-cutting refactor, or a domain whose risks are not yet understood. The pilot's purpose is not to prove that an agent can write large amounts of code. It is to complete a cycle under a shared practice.

The first measure of success is binary and humble: **Did the team traverse need, issue, change, validation, integration, and final verification while leaving understandable evidence?**

## Day Zero: Build the Skeleton

Before the first implementation prompt, the repository needs a minimum of durable context.

### 1. Product

Record:

- the person or consumer being helped;
- the problem to solve;
- the first observable action the product will enable;
- behaviors outside the pilot;
- economic, regulatory, or time constraints.

This need not be a long document. It must provide enough clarity to determine whether a technically correct solution addresses the need.

### 2. Architecture

Record:

- available stack and selection rationale;
- boundaries among components;
- structural decisions the agent cannot change locally;
- interfaces or data that must be preserved;
- infrastructure and operational constraints;
- questions that remain open.

Initial architecture is a set of revisable decisions, not a complete prophecy of the system.

### 3. Quality

Define:

- the behavior that will close the first iteration;
- available inner and outer loop checks;
- test expectations for the change;
- the user's manual or automated path;
- evidence required to accept the result.

### 4. Security

Establish:

- the authorized workspace;
- the agent's identity and permissions;
- handling of secrets and sensitive data;
- destructive or external actions requiring approval;
- a containment or rollback mechanism;
- the role that will resolve questions of authority.

### 5. Operations

Create or identify:

- an entry baseline such as `ADEV.md`;
- a roadmap or prioritized list;
- a decision record;
- a place for issues and iterations;
- the branch and pull-request flow;
- the definition of closure for the first delivery.

Day zero ends when the repository can answer which rule governs the work, which problem comes next, who is accountable, how it will be validated, and where the evidence will remain.

## The Minimum Baseline

An initial baseline should not contain everything the team may need in the future. Begin with rules that already have a clear reason:

- work from an explicit need and scope;
- consult product and architecture sources;
- keep every iteration small and reversible;
- protect secrets and data;
- validate before publishing;
- integrate through the repository's actual flow;
- verify delivered behavior;
- stop when authority, risk, or context is uncertain;
- turn meaningful failures into durable improvements.

Every rule needs a scope and evidence. “Quality first” expresses intent but does not guide a decision. “The change must compile locally and be reproduced in CI” establishes an observable contract.

The starter-kit template is a neutral seed, not production-ready configuration. The team must replace placeholders and define its actual sources, commands, roles, and environments.

## The First Iteration

Choose one small, visible action: show information, validate input, or correct existing behavior. Avoid making the first change depend on uncertain architecture.

The issue should contain:

- the problem and affected user;
- expected behavior;
- scope and non-goals;
- context the agent must consult;
- relevant constraints;
- acceptance criteria;
- inner loop, outer loop, and target environment evidence.

Before implementation, ask the agent to assess whether the issue fits one atomic iteration. If it finds independent behaviors, it should propose a split and wait for the next change to be selected.

During execution, observe created, deleted, and modified files; affected interfaces; new dependencies; structural decisions; and validation results. You need not passively read every generated token, but you must compare effects with the blueprints.

The pull request should explain what changed, why it matters, what remains out of scope, what evidence exists, and how to restore the previous state. The iteration ends when behavior is verified in the relevant environment, not when the agent stops editing.

## The First Week: Learn More Than You Expand

The first week's goal is not to maximize features. It is to close at least one cycle and improve the baseline with what was learned.

By the end, the team should be able to show:

- a bounded issue;
- a traceable branch and PR;
- a recorded decision;
- local and independent validation;
- verification of behavior;
- a failure, question, or discovery converted into an asset;
- a shared explanation of the flow.

If no failures occurred, consider whether the controls were sufficiently adversarial or the change too trivial to teach. A new rule need not be invented: a baseline that grows without need becomes noise.

Run a short retrospective:

- Which context had to be repeated in the prompt?
- Which private decision should become durable?
- Which check found a problem, and at what stage?
- Which permission was excessive or insufficient?
- Which part of closure depended on tacit knowledge?

The week's result is a slightly better working system, not merely more code.

## The First Delivery

The first delivery connects the pilot to operational reality.

Before promotion, confirm:

1. The scope remains understandable and coherent.
2. Product, architecture, quality, and security contracts do not conflict.
3. The inner loop removed inexpensive failures.
4. The outer loop independently reproduced relevant controls.
5. Review evaluated intent and risk, not only style.
6. Proportional rollback or containment exists.
7. Deployment uses the expected artifact.
8. The consuming person or system can perform the promised action.
9. Subsequent observation shows no relevant regression.
10. Lessons remain in the repository.

Do not publish merely because work has accumulated. A delivery is a unit of value and evidence that can be explained, verified, and recovered.

## Measure Adoption Without Manufacturing Success

Early metrics should describe flow and quality, not sell a transformation prematurely.

You can observe:

- time from issue to verified behavior;
- PR age, size, and comprehensibility;
- failures found locally, in CI, and after deployment;
- rework caused by missing context;
- review and recovery time;
- rules that are used, contradicted, or ignored;
- closed deliveries versus started work;
- the team's perception of clarity and review burden.

Record a prior baseline or an initial observation period before attributing improvement. Segment by change type and risk. An average that mixes small fixes with complex migrations produces weak conclusions.

The question is not whether agents generated more lines. It is whether the system delivers useful behavior with evidence, controlled risk, and cumulative learning.

## Curate the Baseline

During development, rules are often added urgently. Without maintenance, ADEV may grow until it consumes too much attention and context.

Review the baseline lightly each week and curate it more deeply at an appropriate cadence—monthly is a reasonable starting point—to:

- remove duplicates;
- resolve contradictions and precedence;
- move specialized detail out of the index;
- retire rules that have lost their scope;
- verify that every obligation has evidence;
- review cost, noise, and context consumption;
- connect recent failures to existing controls.

The cadence is adaptable. A team with few changes may review less often; a period of intense transformation may require greater frequency.

## Mature Without Competing for Levels

The repository's adoption model describes four progressive capabilities:

1. **Assisted experimentation:** a baseline exists and a small iteration can close with evidence.
2. **Disciplined iteration:** failures strengthen rules, tests, or assets.
3. **Production-ready orchestration:** the practice withstands CI/CD, deployment, and rollback.
4. **Evidence-based scale:** new teams adopt without depending on hidden context.

These are neither certifications nor deadlines. A team may be mature in testing and immature in recovery. Use the model to find the next missing capability and design an iteration that demonstrates it.

## Practice: Complete Your First Cycle

Choose a real repository and reserve one session for the day-zero skeleton. Do not begin by customizing every asset. Define product, architecture, quality, security, and one first action.

Then execute a single change through final verification. Preserve the issue, diff, tests, PR, environment result, and learning.

At the end, answer:

- Did the baseline change a real decision?
- Did the agent know where to find context?
- Did the evidence support fulfillment of the issue's promise?
- Could the team repeat the cycle without reconstructing the conversation?
- Which capability is missing before increasing autonomy or parallelism?

Only then begin the next iteration.

## Chapter Outcome

After this chapter, the reader can diagnose the starting point; choose a low-risk pilot; establish minimum product, architecture, quality, and security context; complete day zero, the first week, and the first delivery; measure flow without inventing causality; and curate a baseline that grows with the practice.

## Bridge to Practice

- [`starter-kit/DAY_0.md`](../../starter-kit/DAY_0.md) establishes the initial skeleton.
- [`starter-kit/FIRST_WEEK.md`](../../starter-kit/FIRST_WEEK.md) guides the first complete cycle.
- [`starter-kit/FIRST_RELEASE.md`](../../starter-kit/FIRST_RELEASE.md) organizes evidence and recovery for the first delivery.
- [`starter-kit/BASELINE_template.json`](../../starter-kit/BASELINE_template.json) provides a neutral seed that must be adapted.
- [`starter-kit/examples/minimal-adev-loop/`](../../starter-kit/examples/minimal-adev-loop/) shows a minimal, tool-agnostic structure.
- [`docs/adoption-maturity-model.md`](../../docs/adoption-maturity-model.md) helps identify the next missing capability.
