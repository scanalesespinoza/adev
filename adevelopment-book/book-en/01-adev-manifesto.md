# 1. The ADEV Manifesto

## A Letter to the Reader

If you work in technology, you have probably felt the shift already. A task that once required hours of searching, writing, and testing can now begin as a conversation. An agent moves through the repository, proposes a solution, changes files, and runs validations before you have fully understood everything it produced.

Initial reactions usually fall between excitement and fear. Some people see a promise of unlimited speed. Others see a threat to the craft, to quality, and to human work. I chose a different position: to approach the tool, use it intensively, and learn how to govern its consequences.

I did not do this because I believed artificial intelligence was infallible. I did it because it is not.

Every increase in capability amplifies both our sound decisions and our shortcomings. If we provide an ambiguous need, we receive interpretations we never ruled out. If the product lacks direction, the agent can quickly build something nobody needed. If the architecture exists only in one person's head, a local solution can contradict the entire system. If quality is reviewed only at the end, errors will reach the end faster as well.

ADEV was born to work within that tension. It seeks neither to restrain the capability of agents nor to surrender to it. It seeks to turn that capability into a professional practice.

## Tools Change Eras

Artificial intelligence is often presented as something separate from human history, almost as the sudden arrival of a new kind of being. I prefer to begin somewhere simpler: it is a tool created by people.

The history of our species is also the history of the tools through which we have extended our capabilities. Some extended our strength. Others extended our senses, memory, mobility, or ability to communicate. Each changed what we could do and, by doing so, changed how we lived and organized ourselves.

AI agents belong to that history, although their scale is extraordinary. They can interpret language, relate large amounts of information, and execute chains of actions with a degree of operational autonomy that we did not previously associate with an everyday tool. That capability may open a new stage of intellectual and technical work.

Calling them tools does not diminish their importance. It locates responsibility correctly.

A tool does not decide for us which future is worth building. It does not independently understand the people who will live with the consequences. It is not morally, professionally, or socially answerable for a product. Even when it acts autonomously, that autonomy exists because someone selected the tool, defined an objective, provided context, granted permissions, and accepted its output.

Responsibility remains ours.

## Neither Oracle nor Scapegoat

One of the most dangerous mistakes when working with agents is to attribute human capabilities to them. We speak with them in natural language, they answer confidently, and they can perform complex work. That appearance makes it easy to confuse fluency with understanding, a plausible response with a sound decision, or autonomous action with independent responsibility.

A contradiction follows. We trust the agent as though it were a fully competent professional when it provides an answer, yet treat it as an independent culprit when that answer causes harm.

ADEV rejects both positions.

The agent is neither an oracle to be believed nor an excuse to which consequences can be transferred. It is an execution capability that must operate within a human-designed system of intent, context, authority, and verification.

This does not mean that all responsibility always belongs to one individual. Within an organization, it may be distributed among the people who define the product, design the architecture, authorize access, approve the change, and operate the service. What matters is that responsibility remains explicit within the human system. It never ends with the sentence, “the AI did it.”

When an agent introduces a defect, the first obligation is to contain its effect. We must then understand how it got there. Perhaps the instruction was ambiguous. Perhaps an architectural boundary was missing. Perhaps the agent exceeded its authority. Perhaps the review established only that the code compiled and never exercised the real behavior. The correction does not end when the code is repaired: the learning must also improve the tests, rules, controls, or knowledge that will guide the next change.

## The New Does Not Erase Engineering

Development with agents does not replace the foundations of software engineering. Code still runs on operating systems, networks, storage, databases, and services. It remains subject to design errors, incorrect permissions, vulnerable dependencies, integration failures, and misunderstood human needs.

What changes is the relationship between intent and execution.

In traditional development, much of execution was constrained by the speed at which a person could write, integrate, and review each piece. With agents, we can state an intent and quickly receive a complete implementation, including decisions we never made explicit. The result may vary between executions and contain assumptions we never saw being introduced.

It is therefore not enough to “program as before, only faster.” As the cost of producing alternatives falls, the bottleneck moves to our ability to direct them, understand their impact, and demonstrate that they fulfill the promise.

Faster generation makes architecture more important. Easy file modification makes scope more important. Autonomy makes permissions more important. An abundance of code makes verification more important.

The new paradigm does not eliminate the craft. It raises the level at which the craft produces value.

## From Programmer to Responsible Architect

During my career, I worked from application development through the layers that allow applications to operate: middleware, operating systems, infrastructure, networks, storage, databases, certificates, and DNS. I also worked across requirements, quality, security, production, solution architecture, and enterprise architecture.

That breadth changed how I see a software change. An implementation does not end at the function that was modified. It continues into the test that protects it, the service that runs it, the identity allowed to use it, the infrastructure that sustains it, and the person who depends on it.

Agents made the value of this complete view visible. They could produce pieces at a speed I could not match manually, but someone still had to decide which pieces made sense, how they should relate, and which consequences were acceptable.

That is how the role changed: I stopped measuring my contribution by the amount of code I wrote and began measuring it by the quality of the system I could direct.

In ADEV, we call the person who retains that responsibility the architect, even when their formal title is developer, technical lead, product owner, or operator. The architect understands the need, establishes the blueprints, defines the boundaries, and verifies that the result remains habitable. The agent can analyze, propose, and implement within those blueprints.

This is not a hierarchy of worth. It is an asymmetry of responsibility.

## Software as Habitat

Architecture exists to create places that someone can inhabit. In technology, we build digital spaces where people find information, create, decide, learn, purchase, collaborate, or ask for help. A solution can be technically correct yet confusing, uncomfortable, unsafe, or useless to the person who must live within it.

This idea defines the central boundary of delegation. An agent can propose a structure, but a person must understand what the future inhabitant of the product needs.

Imagine a partially built house. Its rooms have already been sized, and some of its walls support the structure. You ask a builder to construct the kitchen. The builder finds a layout that solves the kitchen perfectly, but achieving it requires tearing down two walls and transforming the entire plan of the house.

The kitchen may be good while the solution is wrong.

This is what happens when an agent receives a local problem without the overall blueprints. Its immediate objective is to resolve the request. If it does not know which elements are structural, which product experience must be preserved, or which boundaries it cannot cross, a local optimization can become a global regression.

ADEV exists so that the blueprints do not depend on the architect's private memory. Product, architecture, quality, security, and operations must become context that people and agents can consult before moving a wall.

## What ADEV Is

**ADEV—AI Agentic Development—is a practice for directing software delivery with agents through human responsibility, explicit context, bounded autonomy, continuous verification, and evidence.**

It is not an artificial intelligence model. It is not a collection of perfect prompts. It is not a specific tool or a brand that requires one vendor. Nor does it promise to replace teams or build any product within an extraordinary timeframe.

It is a system of work that attempts to answer five questions:

1. **What human outcome do we want to produce?** Before implementation, we define the need and the observable product behavior.
2. **Which blueprints govern the change?** We make product, architecture, quality, security, and operations decisions explicit.
3. **What may the agent decide and execute?** We grant autonomy within boundaries proportional to risk, impact, and reversibility.
4. **How will we know that we are moving correctly?** We create and verify as part of the same movement, from the local environment through actual delivery.
5. **What will the system learn when it fails?** We turn errors into corrected code, tests, principles, checklists, automation, or specialized knowledge.

The practice lives across two complementary surfaces. The book explains its decisions, tensions, and lessons. The technical assets apply them to a repository through agent instructions, templates, policies, rituals, tests, and checklists. Doctrine without execution becomes rhetoric. Execution without doctrine repeats errors that nobody turns into knowledge.

## The Honest Promise

ADEV does not guarantee that an agent will produce the correct answer. It does not eliminate trial and error, technical debt, or risk. Nor can it guarantee a universal percentage of productivity, savings, or quality.

Its promise is more modest and, to me, more useful: to increase the probability that time invested with agents produces useful, verifiable software aligned with a human intention.

That probability rises when the work is small, the blueprints are visible, authority is limited, tests accompany creation, and failures improve the baseline. It rises when we stop trusting an answer because of its appearance and begin requiring evidence. It rises when delivery does not end with generated code, but with an action that a user—a person, another system, or an automation—can perform successfully.

The practice also requires accepting an initial cost. Building context, organizing decisions, automating controls, and learning how to work with agents takes time. ADEV is not a shortcut for finishing the next project without effort. It is an investment in improving the ability to deliver the projects that follow.

## A Practice That Learns

ADEV did not emerge fully formed. Its first public formulation spoke of augmented development and multiplied capability. Experience later showed that speed was not the most interesting problem. The real challenge was governing it.

EventFlow served as the initial laboratory. Homedir later became a more durable proving ground. Failures, regressions, oversized changes, differences between environments, and unsupported decisions left rules behind. Some became instructions. Others became tests, integration gates, checklists, or reusable assets.

The principle behind that evolution is simple:

> Every important failure should leave the system better prepared for the next attempt.

This does not mean that the system will never repeat an error. It means that correcting one manifestation without improving the way of working wastes an opportunity.

A living baseline is not a file that grows without limit. It must be reviewed, consolidated, and kept under a clear hierarchy. What applies across contexts becomes a principle. What is specific remains close to its domain. What can be verified is automated when doing so adds value. What becomes obsolete is corrected or removed.

## The Invitation

I want to contribute to a future in which technology reduces friction and gives time back to people; where more professionals can turn real needs into reliable solutions; and where that capability is not concentrated in a small number of organizations or tools.

That future also needs counterweights. Greater capability without boundaries can amplify errors, abuse, and inequality. ADEV therefore insists on explicit authority, security, supervision, evidence, and recovery. It does not claim to decide for everyone which future is right. It aims to make decisions and consequences visible so that we can answer for them.

This book is an invitation to practice, not merely to agree.

When you finish it, the first step will not be to adopt a complete platform or write an extraordinary prompt. It will be to choose a real repository, introduce a minimum baseline, and deliver one small change through the entire cycle until its behavior has been verified.

The tool contributes capability. You contribute intent, judgment, and responsibility.

That is where ADEV begins.

## Chapter Outcome

After this chapter, the reader can explain ADEV without resorting to promises of magical speed: an open practice for governing delivery with agents, retaining human responsibility, and turning probabilistic execution into verifiable results.

## Bridge to Practice

- The [normative ADEV practice](../../framework/README.md) contains the portable definitions and contracts that support the book.
- The [starter kit](../../starter-kit/README.md) turns those principles into a path that can be applied to real repositories.
- The [evidence index](../../docs/evidence-index.md) separates transferable doctrine from the concrete artifacts that support it.

## Editorial Background

- [Whitepaper: Measuring the Impact of Augmented Development](https://www.linkedin.com/pulse/whitepaper-measuring-impact-augmented-development-canales-espinoza-4kw8e)—an early experiment and set of estimates that this book subjects to a stricter distinction between observed activity and inferred outcomes.
- [aDevelopment: la nueva era del desarrollo aumentado](https://es.linkedin.com/pulse/adevelopment-la-nueva-era-del-desarrollo-aumentado-canales-espinoza-mof8e)—the first public definition of the practice.
- [Manifiesto A-Dev: La Liberación del Arquitecto](https://es.linkedin.com/pulse/manifiesto-a-dev-la-liberaci%C3%B3n-del-arquitecto-sergio-canales-espinoza-c7ihf)—the narrative predecessor of the current manifesto.
