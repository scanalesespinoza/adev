# 11. Homedir: The Proving Ground

## From Experiment to Continuous Operation

EventFlow revealed that an experienced person could use agents to build a broad product within a short window. Homedir posed a harder question: could that way of working sustain a product that continued to evolve after the initial enthusiasm?

Homedir became ADEV's proving ground. There, the practice had to coexist with authentication, public and administrative interfaces, multiple languages, continuous integration, deployments, performance, backups, restoration, and product changes. Producing code was no longer the test. The challenge was preserving coherence while the system changed.

This difference explains the role of both projects in this book:

> **EventFlow demonstrated capability. Homedir forced the development of discipline.**

Homedir does not by itself prove that ADEV works in every organization. It is a project led primarily by the author and therefore shares several of the laboratory's limitations. Its value lies in repetition: the principles faced different failures over several months and had to evolve to remain useful.

## When `ADEV.md` Stopped Being Documentation

At first, maintaining rules could feel like a pause from the real work. Coding produced a visible change; editing a baseline seemed indirect.

That perception changed after several weeks. Work began to stop less often. Some errors ceased to recur, leaving more attention for new capabilities. When a supposedly covered problem returned, the immediate question was no longer only what the agent had done wrong, but whether `ADEV.md` expressed the rule with sufficient clarity, priority, and evidence.

That reaction marks an important transition: the baseline had become a dependency of the delivery process.

We do not yet have a reproducible comparison quantifying how many errors or how much rework it prevented. Graphs of commits and modified lines may suggest patterns, but they cannot reliably distinguish functionality, correction, refactoring, or waste. The defensible claim is narrower: the author's longitudinal account and the repository assets show incidents beginning to produce rules, tests, checks, and reusable cases.

`ADEV.md` became an effective part of the system when changing it began to change the behavior of subsequent iterations.

## Case 1: A Branch That Could No Longer Be Recovered

Before micro-iterations were consolidated, one branch accumulated several features over multiple days. The first features appeared correct. Later ones introduced refactors that began affecting services and behavior that already worked.

The problem was not one identifiable defect. Decisions had become entangled. Recovering the valid features required understanding which changes depended on those that had degraded the system. The cost of separating the history approached the cost of rebuilding it.

After resisting the loss of work, the author discarded the branch and started again. In the interviews, the account alternates between two days of directly lost work and a branch that lived for close to a week. This edition preserves the lesson but does not use the duration as an exact metric because the public artifact that would settle the chronology has not yet been identified.

The durable consequence is visible in the doctrine:

- one objective per branch;
- atomic changes;
- short-lived branches;
- validation during the iteration;
- a recognizable restoration point;
- early abandonment when confidence disappears.

A short-lived branch does not prevent error. It makes being wrong emotionally and operationally cheaper. A team can abandon an hour of work without turning it into a personal defeat. That safety also protects the willingness to experiment.

## Case 2: Language Exposed a System Failure

Homedir supports Spanish and English. On one occasion, local behavior appeared correct while tests failed during integration. Some strings were hardcoded, others were resolved through local variables, and configurations changed across environments.

The symptom appeared in language handling, but the cause was broader: the product lacked one predictable way to resolve text and default values. The local machine and the server were testing different contracts.

The lesson produced several barriers:

- all visible text is part of the product;
- strings belong in language resources or equivalent mechanisms;
- default values must be explicit;
- local and CI environments must share relevant versions and configuration;
- a multilingual test must deliberately set the locale it is meant to demonstrate;
- administrative views and edge cases deserve the same rigor as the home page.

The case teaches more than internationalization. It teaches how to classify a failure. Correcting one textual expectation would have closed the check; correcting the source of variability improved the delivery system.

When a failure appears in CI but not locally, ADEV asks which inexpensive evidence was missing from the *inner loop* and which independent difference the *outer loop* correctly discovered.

## Case 3: CI/CD Is Also Part of the Delivery Product

Some Homedir changes compiled or passed tests and then failed between image publication, runtime configuration, and deployment. A reference could point to the wrong artifact; the container could behave differently; an intermediate configuration could hide the application's actual state.

These problems appeared remote from the requested feature, yet they prevented the user from receiving it. ADEV incorporated a rule: if the path from commit to running system is not trustworthy, the iteration is not complete.

Recovery follows the same pattern as code:

1. Stop new feature work.
2. Identify the last trusted stage.
3. Verify artifact provenance.
4. Correct the smallest discrepancy.
5. Repeat the complete flow.
6. Verify the surface used by a person.
7. Turn the cause into documentation, a check, or a guardrail.

Homedir's public release gates distinguish pull request validation, controls on the main branch, and production promotion. That artifact supports a central idea: integration, delivery, and deployment are related controls, but they are not equivalent.

A green pipeline proves only the properties it executed. Final verification still requires observing the promised behavior in the relevant environment.

## Case 4: A Performance Theory Lost to the Data

When slowness and errors appeared in community content, it was tempting to explain the problem as a broad regression and propose a redesign. Later measurement narrowed the focus: `429` responses, shared limits by origin, and request patterns explained a meaningful part of the observed behavior more convincingly.

The lesson is not that *rate limiting* universally causes performance problems. It is to resist dramatic architecture when the evidence cannot yet locate the problem.

The extracted guardrail was:

- compare genuinely equivalent scenarios;
- record latency, error rate, and request patterns;
- disclose fixture and environment limitations;
- order changes according to measured impact;
- preserve a baseline for later comparison.

An agent can quickly produce a plausible explanation and an extensive refactor. Professional judgment demands that the scale of the intervention remain proportional to the quality of the evidence.

## Case 5: A Backup That Cannot Restore Is Not Evidence

The existence of a backup file created a sense of safety. During a restoration attempt, however, differences emerged in versions, formats, and runtime expectations. Retention and rotation were uncertain as well.

The conceptual error was treating artifact generation as closure. The behavior promised by a recovery strategy is not “create a file,” but reconstruct the service and its data under defined conditions.

The resulting rule was direct:

- test restoration, not only creation;
- use the target environment or the closest faithful equivalent available;
- verify version and format compatibility;
- treat retention as part of reliability;
- preserve a reproducible procedure;
- measure recovery when the risk requires it.

This structure applies beyond backups. An intermediate artifact is evidence only of the step it completed. Delivery is demonstrated through the final action promised.

## From Incident to Asset

The preceding cases share one chain:

> **Incident → decision → guardrail → test or checklist → reusable asset.**

Not every lesson belongs in `ADEV.md`. The baseline should contain the principle and point to the specialized source:

| Learning | Most useful destination |
| --- | --- |
| Every iteration must validate before publishing | Principle in `ADEV.md` |
| A specific locale must be fixed in a particular suite | Project knowledge or configuration |
| The behavior must not fail again | Automated test |
| Promotion requires evidence from several layers | Release gate or checklist |
| Incident response requires roles and sequence | Runbook |
| The incident teaches a transferable pattern | Case study |

A lesson may live in several layers when each serves a different function. The principle guides; the test detects; the check blocks; the runbook recovers; the case teaches.

Coherence is essential. If the inner loop requires compilation, CI should independently verify the same contract. If the baseline requires visible text to be protected, tests and reviews should look for hardcoding on affected surfaces. A rule without an observable means of compliance depends on memory and goodwill.

## Delivery Frequency: A Signal, Not a Promise

The author estimates that after nearly a year of maturation, simple changes can travel from issue through implementation, PR, and delivery in minutes, while medium changes take between half an hour and an hour. He also reports several production deliveries during an active day.

These figures express current experience, but no public sample yet connects issues, timestamps, checks, deployments, and final verification. They are not presented as a benchmark or promise to the reader.

What can be learned is the mechanism they attempt to describe: durable context, small iterations, a known pipeline, layered review, and inexpensive recovery reduce accumulated friction. Turning that perception into quantitative evidence will require sampling complete deliveries and defining what counts as simple, medium, and successful.

ADEV prefers a declared evidence gap to invented precision.

## Homedir Is Not the Doctrine

Some Homedir decisions reflect its stack, community, budget, and operations. Routes, probes, frameworks, numbers of checks, and concrete strategies should not be copied as universal laws.

Correct extraction separates three levels:

1. **Project fact:** a locale failure occurred between local execution and CI.
2. **Transferable pattern:** implicit environment differences produce inconsistent outcomes.
3. **Adaptable asset:** define defaults, align the relevant environment, and mirror the contract in the inner and outer loops.

This separation prevents ADEV from becoming Homedir documentation. The project supplies pressure and evidence; the framework retains only what may help elsewhere, with its limits visible.

## Practice: Turn an Incident into a System

Choose a real failure from your repository and record:

- expected and observed behavior;
- impact and containment;
- the assumption that proved false;
- evidence that enabled understanding;
- the control that could have detected it earlier;
- the minimum scope of the new rule;
- the asset in which it should live;
- proof that the guardrail works;
- the date or condition for reviewing it.

Then run a small iteration that incorporates the learning. Do not close the exercise when documentation is edited: demonstrate that the process detects, prevents, or contains the problem observably in the next execution.

## Chapter Outcome

After this chapter, the reader can use Homedir as a proving ground without confusing it with doctrine; reconstruct an incident–decision–guardrail–asset chain; classify lessons among principles, tests, checks, and runbooks; interpret operational metrics cautiously; and turn a real failure into a verifiable improvement of the delivery system.

## Bridge to Practice

- [`docs/evidence-index.md`](../../docs/evidence-index.md) connects principles to the current evidence shelf.
- [`docs/evidence/homedir-claim-boundaries.md`](../../docs/evidence/homedir-claim-boundaries.md) separates public evidence, the author's account, and reproduction gaps.
- [`docs/case-studies/multilingual-drift.md`](../../docs/case-studies/multilingual-drift.md) summarizes multilingual drift.
- [`docs/case-studies/ci-cd-recovery.md`](../../docs/case-studies/ci-cd-recovery.md) addresses recovery of the delivery path.
- [`docs/case-studies/performance-evidence.md`](../../docs/case-studies/performance-evidence.md) shows why measurement precedes redesign.
- [`docs/case-studies/disaster-recovery.md`](../../docs/case-studies/disaster-recovery.md) extends the definition of backup through restoration.
- [Homedir release gates at observed commit `a2baac0`](https://github.com/scanalesespinoza/homedir/blob/a2baac07fc60f025ebcb9aab7c5f794928cbd831/config/docs/governance/RELEASE_GATES.md).
