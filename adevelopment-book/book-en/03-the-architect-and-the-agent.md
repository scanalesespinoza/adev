# 3. The Architect and the Agent

## A Necessary Asymmetry

In ADEV, the architect and the agent collaborate, but they do not share the same responsibility.

The agent can analyze a repository, propose alternatives, implement changes, and run verifications. The architect retains intent, understands the human context, defines the boundaries, and answers for the consequences.

This asymmetry does not diminish the agent's capability. It allows us to use that capability clearly. If we treat the agent as mere autocomplete, we waste its ability to execute complex work. If we treat it as an independent authority, we abandon decisions that require human context, judgment, and responsibility.

The agent is an executor that can propose. The architect is the responsible human who can delegate.

In this book, *architect* is not only a job title. It is the role assumed by whoever connects a need to the conditions required to fulfill it correctly. A developer, technical lead, product owner, or operator may occupy that role depending on the decision at hand.

## Delegate Execution, Retain Intent

Delegation does not mean describing every line the agent should write. If that were necessary, the advantage of using an agent would disappear. Useful delegation states the outcome, supplies relevant context, establishes constraints, and defines how the work will be verified.

Intent cannot be reduced to an instruction such as “create a screen” or “add persistence.” Those phrases leave fundamental decisions open:

- Who will use the capability?
- Which action must they be able to perform?
- Which existing elements must not change?
- What data will be stored, and how sensitive is it?
- What level of availability or performance is required?
- What evidence will demonstrate that the result is correct?

The agent can help formulate these questions, but it must not answer them silently when the answer changes the product or its risk.

Autonomy begins after we define which decisions the agent may make. Not before.

## The Four Context Contracts

Before executing a consequential change, the agent needs to find four contracts. They do not have to be four folders with universal names, but their responsibilities must be distinguishable.

### Product

The product contract explains the habitat being built: who it serves, which problem it solves, which actions it enables, and which behaviors it must preserve. It prevents a technically coherent implementation from changing the nature of the solution.

### Architecture

The architecture contract describes how the system is sustained: components, boundaries, dependencies, interfaces, persistence, communication, and structural decisions. It distinguishes what can be adapted locally from what requires explicit evaluation before modification.

### Quality

The quality contract defines the properties the change must demonstrate: compilation, tests, performance, maintainability, compatibility, accessibility, observability, and delivery criteria. It prevents “works in my environment” from becoming the only definition of done.

### Security

The security contract identifies data, identities, trust boundaries, privileges, destructive operations, and risks that require approval or additional controls. It prevents speed from turning a valid request into a dangerous capability.

These contracts relate to one another, but they are not interchangeable. Product explains purpose. Architecture organizes the solution. Quality defines verifiable properties. Security limits harm and protects those who depend on the system.

`ADEV.md` is the map that leads to them. It should neither duplicate them nor attempt to contain all their detail.

## Structural and Adjustable Walls

Not every wall in a building serves the same purpose. Some support the building. Others divide spaces and can be moved with limited impact.

Software architecture also contains decisions with different levels of authority. Changing label text is not equivalent to replacing the identity mechanism. Adjusting a visual component is not equivalent to changing the data model. Adding a test is not equivalent to introducing a new infrastructure service.

To govern that difference, ADEV considers three properties:

- **Impact:** how many people, components, data sets, or environments may be affected.
- **Reversibility:** how easily the system can return to a trusted state.
- **Evidence:** which controls can demonstrate the result before and after integration.

Autonomy should increase when impact is low, reversibility is high, and evidence is strong. It should decrease when the opposite is true.

| Decision type | Example | Expected behavior |
| --- | --- | --- |
| Local and reversible | Adjust an internal implementation covered by tests | The agent may proceed within the issue |
| Local with uncertainty | Add a minor dependency or modify an internal contract | Propose, justify, and confirm before consolidating |
| Structural | Change persistence, identity, service boundaries, or deployment architecture | Stop and request an architectural decision |
| Destructive or external | Delete data, modify production, publish, or grant privileges | Require explicit authorization and recovery controls |

This table does not replace contextual analysis. It offers a starting point for making the agent's freedom deliberate rather than accidental.

## Judgment versus the Common Recommendation

During an early product iteration, an agent began introducing a database as the natural response to a need for persistence. The recommendation was not absurd. It was common, familiar, and probably correct in many systems.

But it was not grounded in the needs of that product.

The actual requirement was to retain information through a lightweight persistence layer with asynchronous access and cache support. Introducing a heavier solution would have added operations, cost, and dependencies before their necessity had been demonstrated.

The point is not that a database is wrong or that lightweight architecture is always better. The lesson is different: the agent's general knowledge produces plausible alternatives; the architect's contextual knowledge determines which one fits.

A technology decision must connect to observable requirements and constraints. “It is common practice” can begin an investigation, but it cannot close one.

## When the Agent Must Stop

A mature system of work is not one in which the agent never asks questions. It is one in which the agent recognizes when continuing would require inventing authority or context.

It must stop or escalate when:

- The issue contradicts the product contract.
- The solution requires changing a structural decision.
- Scope grows beyond the committed action.
- Sensitive data, new privileges, or attack surfaces appear.
- Execution requires deleting information or resources.
- Canonical sources contradict one another.
- There is no proportional way to validate or reverse the change.
- A new dependency or service changes costs or operations.
- The intent of the change is doubtful or may cause harm.

Stopping is not a failure of autonomy. It is correct behavior within a system that distinguishes execution from authority.

The architect should not answer impulsively either. They can request alternatives, reduce scope, record a decision, or create a separate investigation. Escalation protects the original change from becoming a container for new problems.

## Supervise without Reading Every Line

The increase in capability makes it unrealistic for one person to inspect manually every character agents produce. That does not mean giving up understanding.

The architect must be able to explain:

- Which behavior changed.
- Which files, components, and contracts were affected.
- Why the solution fits the product.
- Which risks it introduced.
- Which validations ran.
- How the system would recover if the result failed.

A pull-request diff provides a view of impact: files created, deleted, and modified; dependencies; migrations; configuration; and the distribution of the change. Tests and checks provide executable evidence. An independent review can uncover assumptions shared by the person defining the change and the agent implementing it.

None of these layers is sufficient alone. A small diff can contain a critical vulnerability. A green suite can verify the wrong specification. Two agents can share the same blind spot. Professional confidence comes from combining intent, review, controls, and observable behavior.

Delegating implementation complexity does not mean abandoning an understanding of impact.

## Architecture as a Durable Conversation

Structural decisions should not remain trapped in a conversation with an agent. When an alternative is accepted or rejected for durable reasons, the repository should preserve the decision and its context.

A useful architectural record can include:

- The situation that requires a decision.
- Known constraints.
- Alternatives considered.
- The choice and its reasons.
- Accepted consequences.
- Signals that would justify revisiting the decision.

This record prevents a future agent from proposing the same rearchitecture without knowing why it was rejected. It also lets us change our mind honestly when conditions evolve.

Architecture is not a collection of eternal prohibitions. It is a memory of decisions that reduces options without eliminating judgment.

## Practice: Build an Authority Map

Choose a real change in your repository and classify its decisions:

1. What may the agent resolve freely within the issue?
2. What must it propose and justify before continuing?
3. What requires a product or architecture decision?
4. What requires explicit authorization because it is destructive, privileged, or external?
5. What evidence would allow greater autonomy next time?

Record the result close to the instructions that govern the agent. Then ask it to explain the map in its own words and identify contradictions.

If the agent cannot recognize when it must stop, it does not yet have autonomy. It has access.

## Chapter Outcome

After this chapter, the reader can distinguish execution from authority; organize the product, architecture, quality, and security contracts; classify decisions by impact and reversibility; and define when an agent may proceed, must propose, or must stop.

## Bridge to Practice

- [`framework/hardness/03-human-expectations-contract.md`](../../framework/hardness/03-human-expectations-contract.md) turns human expectations into a consumable contract.
- [`framework/hardness/04-action-risk-authority-model.md`](../../framework/hardness/04-action-risk-authority-model.md) relates risk to execution authority.
- [`starter-kit/DECISION_LOG.md`](../../starter-kit/DECISION_LOG.md) preserves decisions and reversals outside temporary conversations.
