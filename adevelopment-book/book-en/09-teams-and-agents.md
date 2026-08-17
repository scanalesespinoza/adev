# 9. Teams and Agents

## From a Personal Practice to a Shared System

ADEV began by observing one person's work with agents, but its value does not end there. When several people work on the same product, the question is no longer only how to obtain a good result from an agent. The challenge is enabling different people, using different agents at different times, to produce changes compatible with the same intent.

The difficulty does not arise because agents are special. Software teams have always needed to coordinate scope, decisions, interfaces, branches, and deliveries. Agents increase the speed at which poor coordination can materialize. Two people may take hours to develop incompatible interpretations; two agents can do it in minutes.

Scaling ADEV therefore does not mean multiplying sessions. It means turning private expectations into a shared contract.

> **Parallelism produces activity. Coordination produces a coherent product.**

## The Baseline as a Common Language

When each member keeps their best instructions in private prompts, the team does not have one practice. It has several personal practices that partially coincide.

One person may require tests before every commit. Another may rely on CI. One agent may preserve a layered architecture while another creates a shortcut because it never received that definition. The inconsistency does not necessarily come from poor execution. Each agent may be correctly following a different context.

A versioned baseline resolves part of this problem. Every person and agent should begin from the same sources:

- product intent and behavior;
- structural architecture decisions;
- quality and security requirements;
- the way changes are proposed, reviewed, and integrated;
- actions that require approval;
- criteria demonstrating that a delivery is complete.

`ADEV.md` is the entry point to these sources. It neither replaces team conversation nor contains every detail. It makes the authorized definition visible and establishes the behavior expected when working in the repository.

The common contract does not seek to make everyone think alike. It allows differences to surface as reviewable proposals instead of remaining hidden inside a session.

## The Issue Reserves Intent

In parallel work, an issue is more than a task list. It reserves a portion of product intent and assigns it to a person or agent within a recognizable scope.

Before work begins, it should answer:

- What problem or behavior changes?
- What observable outcome is expected?
- What is out of scope?
- Which contracts and decisions apply?
- Which files, components, or interfaces are likely to be affected?
- How will it be validated?
- Who is leading the iteration?

A task without a clear owner can be performed twice. A task without boundaries can invade another iteration. A task without closure evidence can appear available while unintegrated work already exists.

Assigning an issue does not prevent collaboration. It identifies who preserves its coherence and who must communicate a scope change. If implementation reveals a different need, record and separate it. Silently expanding the branch turns coordination into guesswork.

## A Short-Lived Branch as a Workspace

In the experience from which ADEV emerged, *trunk-based development* with short-lived branches has provided an effective structure for people and agents: an integrable main branch and one brief branch per atomic change.

This is not a universal law. Team topology, regulatory obligations, product type, or release strategy may require a different workflow. The transferable principle is smaller:

> **Every iteration needs an identifiable scope, owner, starting point, and integration path.**

Short-lived branches reduce divergence. When an iteration lasts minutes or hours, its diff is easier to understand, update against shared state, and discard if it loses trustworthiness. A branch that accumulates several features over days creates more combinations, conflicts, and decisions that are difficult to separate.

The PR becomes the boundary at which private interpretation returns to the shared system. It connects the need, changes, decisions, tests, risks, and review conversation.

## Coordinate Before You Collide

Git can combine distinct lines, but it does not know whether two changes express incompatible decisions. A merge without syntactic conflicts can introduce a conceptual conflict.

Before running work in parallel, identify shared surfaces:

- files or modules that multiple iterations will modify;
- public contracts, schemas, or interfaces;
- migrations and persistent state;
- build, security, or deployment configuration;
- canonical documentation and baseline assets;
- external resources or exclusive environments.

If two tasks need to modify the same structural decision, parallelizing them may cost more than sequencing them. The team can order the work, define the common contract first, or assign a single integrating iteration.

Coordination need not become a permanent meeting. A short record of owner, scope, expected files, dependency, and state is usually enough for small work. What matters is updating it when reality changes.

## People and Agents as One Delivery Unit

An agent is not a new team by itself. It operates within the responsibility of the person and the flow governing it. For sound coordination, think in delivery units: one accountable person may direct one or more agents, but retains the obligation to explain and demonstrate the result.

An iteration may contain distinct roles:

1. **Driver:** maintains the connection to the issue, decides scope, and answers for closure.
2. **Implementer:** modifies the system and produces inner-loop evidence.
3. **Reviewer:** compares the diff with intent, baseline, and risks.
4. **Operational validator:** verifies integration, deployment, and relevant behavior.

People, agents, or automation may perform these roles according to risk. Human responsibility for decisions and effects must not disappear.

Using separate sessions for implementation and review may broaden coverage. Two agents, however, are not automatically independent: they may share a model, context, training, or assumptions. Cross-review is an additional layer, not a substitute for executable tests, external controls, or accountable judgment.

## Handoff Is Part of the Work

A session may end, switch tools, or pass to another person. If state exists only in the memory of whoever worked, the next participant will reconstruct decisions through inference.

A useful handoff is brief and verifiable. It records:

- objective and active issue;
- branch and workspace state;
- changes made;
- decisions and sources consulted;
- validations executed and their results;
- unresolved uncertainty or failures;
- next step and actions requiring approval.

The handoff should not copy an entire conversation. It should allow work to resume from observable facts. The branch, diff, checks, and canonical documents remain more reliable sources than an unevidenced narrative.

Changing agents does not restart the task. It is a relay. Before acting, the new participant inspects the repository and reconciles its state with the handoff.

## Integrate Frequently, Not at the End

Parallel work accumulates drift while it remains separate. Each unit should therefore refresh its view of shared state at relevant points: before beginning, before publishing, when a dependency changes, and before integration.

Refreshing does not mean mechanically merging or rebasing over an uncertain workspace. First inspect local changes, commits, and other people's work. Then choose a safe way to reconcile them.

Frequent integration reveals early:

- contracts that have evolved;
- files claimed by another iteration;
- tests that now express a new expectation;
- incompatible architecture decisions;
- branches that have already been replaced or closed.

The main branch should represent the trusted shared state. If integration demands extensive change archaeology, iterations probably grew too large or the team stopped communicating dependencies.

## Team Speed Is Measured in Closures

Opening ten agents does not guarantee ten times the delivery. Every additional flow consumes attention for definition, review, integration, and recovery. The bottleneck may move from implementation to decision or validation.

A mature organization controls work in progress according to its actual capacity to close. Among other signals, it observes:

- time from issue to verified behavior;
- number of open PRs and branch age;
- conflicts and rework among iterations;
- failures found after integration;
- review and recovery time;
- proportion of started work that reaches delivery.

These metrics should not become universal quotas or simplistic assessments of individuals. They locate friction. If agents produce changes faster than the team can understand them, the system has not increased capacity; it has accumulated technical inventory.

The objective is greater reliable flow, not visible activity.

## Onboarding Through a Complete Delivery

The baseline also helps new people join the team. Reading documentation helps, but the practice is understood by traversing the cycle.

An ADEV onboarding can begin with a small, real change:

1. Locate `ADEV.md` and the sources it references.
2. Select a bounded issue.
3. Explain the outcome and its validation.
4. Create a short-lived branch.
5. Implement with an agent within scope.
6. Review the diff and evidence.
7. Integrate through a PR.
8. Verify behavior in the relevant environment.
9. Record any reusable learning.

The result is not only a feature. The new participant demonstrates the ability to use the team's operational language and close a cycle without depending on private instructions.

## Antipatterns of Agentic Coordination

Several signs reveal that a team multiplied agents before building the shared system:

- each person keeps a different master prompt;
- several agents work on the same objective without an owner;
- tasks are assigned by volume rather than independence;
- branches remain open while accumulating features;
- handoffs describe intent but not state or evidence;
- changes are integrated because files have no conflicts, without reviewing contracts;
- an agent review is treated as sufficient approval;
- problems are solved in conversations without strengthening the baseline.

The answer is neither to centralize every decision nor eliminate parallelism. It is to make visible the contract that enables coordinated autonomy.

## Practice: Run Two Coordinated Iterations

Choose two small changes in the same product. Before beginning, record the owner, scope, expected files, dependencies, and closure evidence for each.

Decide whether they are truly independent. If they share an interface, define the contract first or sequence the work. Assign one branch to each iteration and use the same baseline for both agents.

At each integration point, compare:

- which assumptions they shared;
- where they interpreted rules differently;
- which conflict could have been anticipated;
- which information was missing from the handoff;
- which lesson belongs in durable context.

Do not evaluate the exercise by the amount of code produced. Evaluate it by the ability to close both changes with a coherent product and a clearer baseline.

## Chapter Outcome

After this chapter, the reader can turn ADEV into a shared contract; reserve intent through issues; coordinate branches, files, and dependencies; distinguish implementation and review roles; perform verifiable handoffs; limit work in progress; and onboard new people through a complete delivery.

## Bridge to Practice

- [`ADEV.md`](../../ADEV.md) contains the canonical rules for branches, coordination, validation, and cleanup.
- [`starter-kit/OPERATING_RITUALS.md`](../../starter-kit/OPERATING_RITUALS.md) summarizes rituals before an iteration and after a failure.
- [`starter-kit/FIRST_WEEK.md`](../../starter-kit/FIRST_WEEK.md) proposes the first shared work cycle.
- [`starter-kit/QUALITY_CYCLE_checklist.md`](../../starter-kit/QUALITY_CYCLE_checklist.md) helps review an iteration before integration.
- [`docs/adoption-maturity-model.md`](../../docs/adoption-maturity-model.md) identifies the next missing capability without turning maturity into a label.
