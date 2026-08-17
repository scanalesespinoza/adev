# 7. Create, Verify, and Demonstrate

## Move with Your Eyes Open

ADEV's 50/50 rule is often interpreted as a calendar split: half the time building and half testing. That reading is too rigid.

The 50/50 is a symbol of balance and attention. It means that creation and verification belong to the same movement.

When we walk, we do not take ten steps with our eyes closed and then stop to check our direction. We observe while moving. We adjust our course, avoid obstacles, and confirm that the next step remains safe.

Developing without continuous verification resembles walking while looking only at our feet. We can produce movement without anticipating the environment and discover the problem only after we fall.

In ADEV, the rhythm is:

> **Change → observe → validate → correct → advance.**

The exact proportion varies. A simple change may require little preparation and extensive adversarial testing. An investigation may spend more time observing than modifying. What matters is not accumulating implementation without proportional evidence.

## Create as a Hypothesis

Every software change contains a claim: if we modify the system in this way, a person or consumer will obtain a result without breaking the properties on which others already depend.

Implementation materializes the hypothesis. Verification attempts to refute it.

This relationship resembles the scientific method:

1. Observe a problem.
2. Propose an explanation or solution.
3. Execute a small change.
4. Measure its behavior.
5. Adjust the hypothesis according to evidence.

We do not expect the first formulation to be perfect. We use small iterations to learn quickly and keep the cost of error under control.

Agents accelerate the production of hypotheses and alternatives. They do not remove the obligation to test them against reality.

## Verify at the Scale of the Change

A function with complete logic already offers something to verify. So do a component, a service, and a user flow. If we update several levels without validating any of them, uncertainty accumulates.

Verification should follow granularity:

- A function can test inputs, outputs, and errors.
- A component can demonstrate its contract and visible states.
- A service can validate integration, authorization, and external failures.
- A flow can be traversed as its consumer would traverse it.
- A delivery can verify health, deployment, and behavior in the target environment.

Not every layer requires the same technique, but each needs evidence related to the claim it introduces.

Compilation demonstrates that one class of errors is absent. It does not demonstrate that the product does the right thing. A unit test demonstrates a bounded contract. It does not establish by itself that a user can complete an action. Each control answers a different question.

## The Inner Loop: Correct While It Is Still Cheap

The *inner loop* is the cycle closest to implementation. It happens before the change is published and should provide fast answers.

Depending on the repository, it may include:

- Inspecting diff state and scope.
- Formatting and static analysis.
- Compilation.
- Unit or focused tests.
- Secret and dependency scanning.
- Architecture-contract validation.
- Local execution of the affected behavior.
- A visual walkthrough when an interface changes.

The goal is not to reproduce all corporate infrastructure on one computer. It is to remove as much uncertainty as reasonably possible before turning the change into a pull request.

A PR is not where quality begins. It is a candidate that arrives after local debugging.

When the inner loop is too slow, people and agents tend to skip it. The answer is not to accept lower quality, but to improve focus, environment, or automation until feedback is fast again.

## The Outer Loop: Independent Evidence

The *outer loop* begins when the change leaves the local session. CI, reviewers, policies, and controlled environments verify the contracts again from an independent position.

An important symmetry exists:

| Principle | Inner loop | Outer loop |
| --- | --- | --- |
| The change must compile | Local build | Build reproduced in CI |
| The behavior must work | Focused test and local execution | Unit, integration, or functional suites |
| The change must respect architecture | Local inspection and validation | Architecture check or PR review |
| Code must protect data and dependencies | Available local controls | Independent scans and security policies |
| The experience must remain usable | Local walkthrough | Validation in an integrated or relevant environment |

The outer loop does not replace the inner loop. If CI constantly detects problems that could have been found locally, the development cycle is moving cheap feedback into a slower stage.

Nor must it duplicate every tool identically. It should reproduce important contracts with enough independence to detect environment differences, omissions, and local assumptions.

## Fifteen Checks Are Not Necessarily Better Than Five

Controls tend to grow with the practice. A failure reveals a gap, and a new check appears. A repository may eventually run many of them.

The number does not demonstrate maturity.

Every check should answer:

- Which risk does it cover?
- Which behavior or property does it demonstrate?
- What kind of failure can it detect?
- Is it reliable, or does it produce false positives?
- How long does it take, and where does it belong?
- Does it duplicate another control?
- Does its result explain how to correct the problem?

A control without a known purpose adds waiting and noise. An essential but unstable control teaches the team to ignore red. Curating checks is part of the living baseline.

The goal is not a number. It is coverage of relevant risks through reliable, proportional feedback.

## Layered Review

Executable tests do not understand the entire intent on their own. The PR needs review of scope, architecture, and product.

A layered review can combine:

1. **Implementing agent:** explains what changed, which sources it applied, and what it validated.
2. **Independent reviewer:** compares the diff with the issue, baseline, and relevant contracts.
3. **Responsible human:** evaluates intent, impact, risk, and decisions requiring human authority.
4. **Automation:** runs repeatable compilation, test, quality, security, and architecture controls.
5. **Target environment:** demonstrates deployment, health, and actual behavior.

A second agent can broaden the review, but it does not guarantee independence. Two models or sessions can share assumptions and blind spots. Agent-assisted review complements executable evidence and human judgment; it does not replace them.

Green checks mean that the change satisfies the risks the system knows how to test. They do not establish that the need was formulated correctly or that no unknown risk exists.

## The Evidence Chain

ADEV preserves a thread from intent to outcome:

> **Need → behavior → issue → change → tests → review → integration → deployment → verification.**

Each element answers a question:

- The need explains why action is worthwhile.
- The behavior defines what the consumer can observe.
- The issue fixes scope and acceptance.
- The change shows what was modified.
- Tests and checks demonstrate known properties.
- Review evaluates intent and risks that cannot be fully automated.
- Integration confirms compatibility with the shared state.
- Deployment demonstrates that the artifact reached the environment.
- Verification confirms that the promise can be fulfilled there.

If the chain ends at the commit, we have implementation evidence. If it ends in CI, we have integration evidence. Delivery must reach the relevant consumer and environment.

## Production Is Not an Administrative Detail

An application can compile, pass tests, and fail during deployment. It can deploy correctly and still prevent the expected action. It can complete the action while degrading other behavior.

Final closure therefore needs:

- Confirmation of correct deployment.
- Stable health signals.
- A walkthrough of the committed action.
- Observation of relevant errors or regressions.
- A recorded result.
- Rollback or containment if confidence disappears.

Not every change is validated in public production. The relevant environment depends on risk and stage: it may be isolated, limited to a controlled audience, or production behind explicit boundaries. What matters is not confusing pipeline success with product success.

Delivery ends when the person or consuming system can execute the promised behavior with a degree of realism proportional to the risk.

## When Validation Fails

A failed check is not an interruption separate from the work. It is information from the system.

The correct response is to understand:

- Whether the change violated a contract.
- Whether the test contains an incorrect assumption.
- Whether environments have drifted.
- Whether the control is unstable.
- Whether the issue omitted necessary behavior.

We then correct the cause, repeat the evidence, and decide whether the learning should strengthen the baseline.

We do not seek green pipelines by avoiding the discovery of problems. We seek controls that turn green when there is a verifiable reason for confidence.

## Practice: Build an Evidence Matrix

For your next iteration, create three columns:

1. **Inner loop:** what you will verify before publishing.
2. **Outer loop:** which independent control will repeat or extend the evidence.
3. **Target environment:** which action or signal will confirm actual delivery.

Connect each row to an acceptance criterion or risk. Remove controls that cannot explain their purpose and identify criteria that still lack evidence.

At closure, record which layer found each problem. If the outer loop found something cheap to check locally, improve the inner loop. If production found something the earlier loops could reasonably simulate, add or strengthen the corresponding control.

## Chapter Outcome

After this chapter, the reader can apply 50/50 as continuous attention; design verification proportional to the change; mirror contracts between inner and outer loops; interpret green and failed checks correctly; and extend the evidence chain through verification of delivered behavior.

## Bridge to Practice

- [`starter-kit/QUALITY_CYCLE_checklist.md`](../../starter-kit/QUALITY_CYCLE_checklist.md) organizes broad iteration verification.
- [`starter-kit/FIRST_RELEASE.md`](../../starter-kit/FIRST_RELEASE.md) extends evidence through the first delivery.
- [`docs/case-studies/ci-cd-recovery.md`](../../docs/case-studies/ci-cd-recovery.md) distinguishes integration, delivery, and deployment through an operational case.
