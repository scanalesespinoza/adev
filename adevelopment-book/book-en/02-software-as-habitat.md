# 2. Software as Habitat

## Before We Build, Someone Must Live There

When we talk about software architecture, it is easy to begin with the pieces: services, interfaces, databases, queues, containers, and networks. These components matter, but none of them explains on its own why the system is worth building.

Architecture exists to create a place someone can inhabit.

In a building, the structure supports human activities: resting, working, meeting, caring, learning. Something similar happens in a digital product. People enter to find information, complete a process, coordinate with others, make a decision, or resolve a need. During that time, they live within the possibilities and limitations we designed.

Thinking of software as habitat changes the starting point. We no longer ask first which technology we want to use. We ask who will arrive, what they are trying to accomplish, what they need to understand, and what experience they should encounter along the way.

The answer is never purely aesthetic. A clear interface, correct authorization, acceptable response time, and understandable recovery are parts of the same experience. To the person using the system, product, architecture, quality, and security are not separate departments. They are properties of the place we provide.

## Users Do Not Inhabit Our Components

Technical teams often describe work through internal objects: create an endpoint, add a table, update a controller, configure a pipeline. These tasks may be necessary, but users do not experience any of them in isolation.

Users experience actions.

They check the temperature in a city. Book an appointment. Publish an event. Recover access. Confirm that a payment was received. Each action connects an intention to an observable result.

A product need should therefore be expressible before its implementation is designed:

> A person needs to check the current temperature in a city in the country so they can decide how to prepare before traveling.

This sentence does not yet select a framework, an API, or a persistence mechanism. It defines a person, a need, an action, and a decision that the result will enable.

We can turn it into an initial behavior contract:

- The person can provide a valid city.
- The product returns an understandable temperature and the time it was updated.
- If the city does not exist or the information is unavailable, the product explains what happened.
- The action can be repeated without requiring technical knowledge.

The implementation can later be divided into small pieces. The contract remains the reference for determining whether those pieces build the right habitat.

## Action Is the Unit of Product Truth

In ADEV, a technical implementation must contribute to a verifiable part of a process. This does not mean that every commit must deliver a complete experience, but its purpose must relate to an observable action.

An action may create, retrieve, modify, delete, move, authorize, or communicate something. Its consumer may be a person, another system, or an automation. In every case, someone or something expects a response.

This orientation protects the team from a common trap: completing technical tasks without being able to demonstrate product progress. We can create layers, classes, and configuration for days and still not know whether anyone is closer to solving their problem.

Connecting work to an action lets us ask three questions throughout development:

1. What will the consumer be able to do after this change?
2. How will we observe that the action produces the expected result?
3. Which part of the behavior is not yet available?

If we cannot answer them, we are probably building a piece too far removed from the experience, or we do not yet understand its purpose.

## The Product Contract

Agents need access to product intent without reconstructing it from private conversations. The repository must therefore contain a canonical source of product knowledge.

It does not need to be a massive specification. Its first version can be brief as long as it clearly answers:

- Who does the product serve?
- What problem is it trying to solve?
- Which primary actions must it allow?
- What outcome defines success for those people?
- Which behaviors are mandatory?
- What is explicitly out of scope?
- Which domain terms have precise meanings?
- Which assumptions still need validation?

This information may live in `product/`, `docs/product/`, or whatever convention the repository adopts. The name matters less than its authority: people and agents must know where to find it and what to do when a request contradicts it.

`ADEV.md` should not copy all of that information. Its job is to indicate that the source exists, that it must be consulted before consequential changes, and that a contradiction requires stopping or escalating the decision.

The contract does not remain unchanged forever. Needs evolve, constraints appear, and some hypotheses prove wrong. It must be able to evolve through visible, traceable decisions. A living baseline protects more than code; it also protects the shared understanding of what we are trying to build.

## Start with What Can Be Seen

When a product starts from nothing, a visible representation can turn an abstract idea into a concrete conversation. A page, simple flow, or initial interface lets people discuss hierarchy, language, actions, and scope before the implementation is complete.

This first slice does not need to pretend the product already works. It can be an experience skeleton: a coherent structure that shows what the person will encounter first and how future capabilities will relate.

It should not be confused with a minimum viable product. An MVP must deliver usable value and make it possible to learn from use. A visual shell that does not yet perform the primary action can guide design, but it is not a product delivery on its own.

The first issue might be limited, for example, to establishing a reusable visual structure and a consistent appearance. Its acceptance criteria must honestly state which behavior exists and which remains illustrative. That clarity prevents a visual demonstration from accidentally becoming a functional promise.

Agents can help divide the work. They can detect that an issue contains multiple actions, propose smaller slices, or identify missing criteria. The responsible person decides whether that division preserves the original intent. A task can be technically atomic and still stop making sense for the product.

## Quality and Security Are Inhabited Too

So-called nonfunctional requirements often appear after capabilities have been defined: performance, availability, privacy, accessibility, recovery, and security. The label may suggest that they are secondary. To the user, they are not.

A query that returns the correct answer after it is no longer useful does not truly fulfill its purpose. A form that works while exposing private information is not a good solution. A process that fails without explaining how to continue turns a technical exception into human frustration.

These properties emerge together with the need:

- Data sensitivity influences who may access it and what may be recorded.
- The urgency of the action influences expected performance and availability.
- The consequences of error influence the required review, recovery, and supervision.
- People's capabilities influence accessibility, language, and clarity.
- The operating context influences connectivity, devices, and tolerance for interruption.

Architecture later translates these needs into technical decisions. The reason for those decisions remains in the product contract. Without that connection, a control can become ceremony and an optimization can pursue a metric nobody needs.

## Constraints Before Preferences

A good solution does not begin by selecting the most popular or powerful tools. It begins by reconciling the need with real conditions.

Before choosing a stack, we must understand the team's capabilities, the available infrastructure, budget, time, operating conditions, and the technologies the organization can sustain. A sophisticated platform can be technically appropriate and economically unviable. A minimal solution can be inexpensive yet fail to provide the necessary security or availability.

Architecture must find a combination that is sufficient, maintainable, and verifiable. No technology is universally better outside its context.

This principle matters especially when working with agents. A model may recommend common patterns because they occur frequently in its general knowledge. Frequency does not establish that they fit our product. The agent contributes alternatives; the architect must connect them to the system's economic, technical, and human reality.

## A House with Accessible Blueprints

Return to the house. The product contract explains what kind of place we are building. Is it a home, a restaurant, a school? How many spaces does it need, and which activities must happen within them?

Architecture explains how that place can stand. It identifies structural walls, connections, boundaries, and areas where adjustments are allowed.

Quality explains the properties each space must preserve. A wall beside a bathroom faces different conditions from a decorative partition.

Security establishes protections for people and their environment: installations, access, materials, exit routes, and rules that cannot be ignored.

An agent building one part needs to know where those blueprints are and when a decision exceeds its authority. It does not need every complete document loaded into every interaction. It needs a reliable map to the relevant knowledge.

The product folder is the first blueprint because it prevents the costliest error: building the wrong place correctly.

## What It Means to Finish

A task does not finish when the agent stops writing or when the code compiles. It finishes when there is evidence proportional to the committed scope.

If the issue promised a visual structure, we must be able to walk through it and verify its relevant states. If it promised a temperature query, a consumer must perform the query and observe the expected response. If the iteration only enabled an internal piece, we must demonstrate its technical contract and preserve the link to the future action that makes the piece necessary.

Reality may reveal that the specification was incomplete or that the result needs another iteration. That does not invalidate the method. ADEV does not expect perfection in one attempt. It uses small changes to learn without hiding failure inside an oversized delivery.

Artificial intelligence does not eliminate trial and error. It reduces the cost of moving through that cycle when the work is well bounded and verification accompanies each step.

## Practice: Write the First Contract

Before asking an agent to implement a feature, write one page that completes these sentences:

1. This product helps…
2. The problem this person faces is…
3. The first action they must be able to perform is…
4. We will know it works when…
5. It would be unacceptable if…
6. In this first delivery, we will not build…
7. We still assume, but have not established, that…

Then ask the agent to identify ambiguities, multiple behaviors, and missing decisions. Use its questions to improve the contract, not to transfer the final decision.

When the need can be turned into an observable action, you have the first blueprint for the habitat.

## Chapter Outcome

After this chapter, the reader can define a product through the person, the problem, and the observable action; record a minimum product contract; distinguish a visual skeleton from a usable delivery; and evaluate technologies against real constraints rather than isolated preferences.

## Bridge to Practice

- The adoption path begins in [`starter-kit/DAY_0.md`](../../starter-kit/DAY_0.md).
- Decisions and reversals can be recorded through [`starter-kit/DECISION_LOG.md`](../../starter-kit/DECISION_LOG.md).
- The reusable product-knowledge contract is identified as a pending asset in the [editorial charter](../../publishing-kit/17-spanish-first-edition-editorial-charter.md); this chapter does not invent it before its own technical iteration.

## Editorial Background

- [La arquitectura que se habita](https://es.linkedin.com/pulse/la-arquitectura-que-se-habita-sergio-canales-espinoza-igiqe)—a public essay that introduced architecture as a human decision oriented toward the people who will use the system.
