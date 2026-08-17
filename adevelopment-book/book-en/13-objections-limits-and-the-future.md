# 13. Objections, Limits, and the Future

## A Serious Practice Must Be Able to Say “We Don't Know”

ADEV began from an optimistic conviction: artificial intelligence can help us build better technology and, through it, improve people's lives. That conviction does not authorize us to ignore risks or present personal experience as law.

A professional practice must withstand uncomfortable questions:

- Are we losing technical skills?
- Will agents replace people?
- Can we trust them with critical systems?
- Does the baseline create safety or a new illusion of control?
- Does ADEV actually improve productivity and cost?
- Are we trading professional autonomy for provider dependency?
- Who benefits, and who absorbs the harm?

Not all these questions have settled answers. In some cases, ADEV offers controls. In others, it offers a hypothesis that still requires measurement. Recognizing that difference is part of the doctrine.

## Objection 1: “Professionals Will Lose Technical Skills”

Some skills will probably be practiced less. A person who delegates code generation may lose fluency in recalling APIs, syntax, or details once used every day. Denying this would be as unrealistic as claiming that none of those skills will matter.

At the same time, new competencies emerge:

- designing context and working contracts;
- understanding the capabilities and limits of models and agents;
- integrating tools, protocols, and services;
- governing permissions, data, and external effects;
- evaluating architecture alternatives quickly;
- reviewing changes produced at greater scale;
- building evidence, observability, and recovery;
- detecting when a plausible explanation lacks support.

The transformation is not automatic. Someone may stop practicing deep coding without acquiring architectural judgment. Using agents does not guarantee professional growth.

ADEV proposes a deliberate exchange. The team should decide which competencies must be preserved through direct practice because they are needed for review, diagnosis, or emergencies; which can be delegated; and which new capabilities must be developed.

A warning sign appears when nobody can explain the system without asking the same agent that built it. Abstraction is useful while humans retain the capacity to validate contracts, investigate failures, and recover the service.

## Objection 2: “This Will Replace Developers”

Agents automate tasks that once consumed human labor. It would be irresponsible to promise that this will not affect roles, hiring, or the distribution of opportunities.

ADEV cannot by itself resolve the labor consequences of automation. Nor should it justify replacement through weak comparisons such as “one person equals a department.” EventFlow showed intense activity by an experienced driver; it did not demonstrate that complete teams are unnecessary.

Professional software includes more than implementation: understanding people, negotiating constraints, architecture, security, operations, research, stewardship of data, incident response, and institutional accountability. Agents can participate in many of these tasks, but their participation does not eliminate the need for authority, diverse perspectives, and accountability.

The important organizational decision is not how many people can be removed after purchasing a tool. It is what new capacity can be created, how work is redistributed, and which mechanisms protect quality, learning, and professional dignity.

The future is not determined by technology alone. It also depends on the economic and social choices we make around it.

## Objection 3: “A Baseline Does Not Make an Agent Safe”

Correct.

An instruction file may be incomplete, contain conflicts, or be ignored by a tool. A check may have false negatives. A reviewer may share the implementer's biases. An agent may receive manipulated instructions from an external source.

ADEV uses the baseline as memory and an entry point to the control system, not as an infallible barrier. Safety requires multiple layers:

- verified identity and authority;
- least privilege;
- isolation;
- separation of duties;
- independent tests and analysis;
- approval proportional to effect;
- observability;
- containment and recovery;
- review of rules and permissions.

Agent *hardness* does not mean perfect determinism. It means expectations, authority, capabilities, effects, and evidence are explicit enough to anticipate and audit behavior with greater confidence.

When a consequence would be unacceptable, the answer is not a more solemn prompt. We must reduce autonomy, introduce technical barriers, or avoid using the agent for that action.

## Objection 4: “We Should Not Use Agents in Critical Systems”

Caution is reasonable. Healthcare, finance, infrastructure, identity, physical safety, and essential services can produce harms that a short-lived branch and rollback cannot repair.

ADEV does not provide blanket authorization to introduce agents into these systems. The decision must consider:

- severity and reversibility of harm;
- legal and regulatory obligations;
- data sensitivity;
- ability to isolate execution;
- quality of tests and simulations;
- independence of review;
- required traceability and explainability;
- competence of approvers;
- available response and recovery.

In a critical context, gradual adoption may begin with reading, analysis, documentation, test generation, or proposals that cannot modify the system. Autonomy increases only when evidence and governance justify the next effect.

Some situations may continue to require no delegation: clinical decisions, irreversible authorizations, production changes without adequate recovery, or actions whose compliance cannot be audited. ADEV helps express that boundary; it does not require crossing it.

## Objection 5: “Productivity and Return Have Not Been Proven”

In general terms, this is also correct.

EventFlow and Homedir demonstrate activity, artifacts, and learning patterns. They are not a controlled experiment isolating ADEV's effect. Historical estimates of cost, return, and team equivalence lack a measured counterfactual.

A responsible evaluation should record:

- actual human time, not time inferred from timestamps;
- costs of models, tools, review, and infrastructure;
- comparable scope and quality;
- defects, incidents, and later maintenance;
- team experience and composition;
- discarded or reworked effort;
- value observed by users;
- a period long enough to measure learning and operations.

Until such evidence exists, ADEV promises a practice, not a percentage: explicit context, bounded autonomy, small iterations, continuous verification, and durable learning. These properties can be evaluated even when economic outcomes vary.

Return may be negative during adoption. It may remain negative if the product does not need agents, the team lacks foundations, or review costs exceed the capacity created.

## Objection 6: “The Practice May Increase Technology Dependency”

Agents often depend on models, platforms, accounts, formats, and services controlled by third parties. Changes in price, availability, policy, or capability can alter a workflow overnight.

ADEV seeks to reduce part of that dependency through assets stored in the repository:

- product intent;
- architecture decisions;
- rules and policies;
- skill contracts;
- acceptance criteria;
- tests and checks;
- decision and evidence records.

That knowledge can accompany the product when the agent changes. Portability is never perfect, however. Different tools interpret context, permissions, and protocols differently.

Mitigation requires:

- neutral language in the doctrine;
- tool-specific adapters separated from core knowledge;
- inspectable, versioned formats;
- evidence export;
- compatibility tests across runtimes;
- plans to degrade to a human or alternate flow;
- review of cost and terms of service.

Independence does not mean avoiding providers. It means retaining the ability to decide and migrate.

## Objection 7: “More Automation Concentrates Power”

If a small number of organizations control models, compute, distribution, and data, they can influence who accesses capability and under what conditions. ADEV does not neutralize that concentration.

An open, portable specification can provide a modest counterweight: teams retain their principles, evidence, and way of working outside a particular product. It can also allow different providers to implement compatible capabilities.

But open documentation does not solve unequal access, data extraction, labor conditions, environmental impact, or market dominance. Those problems require competition, public policy, standards, audit, and social participation.

The objective should not be technology without problems—there is no such thing—but a system with enough counterweights to detect abuse, limit harm, and distribute benefits.

## The Education We Need

Technical education cannot be reduced to memorizing syntax or jumping directly to “prompting.” Developers, architects, and leaders need a broader combination.

### Developers

They should preserve foundations in programming, data, networks, security, testing, and operations; learn to inspect agentic changes; and practice diagnosis without relying on a generated explanation.

### Architects

They need to understand those who inhabit the software, design boundaries and contracts, evaluate alternatives, manage uncertainty, and connect decisions across product, technology, and operations.

### Leaders

They must govern incentives, risk, authority, learning, and measurement. Buying licenses is not a transformation. Leadership creates time to experiment, protects those who report failures, and avoids rewarding volume over outcomes.

### Every Role

Everyone needs communication. Providing context, describing a need, expressing uncertainty, and discussing evidence remain central skills. A person who communicates vaguely with a team will probably create the same ambiguity with an agent.

Education should assess complete deliveries: definition, decision, implementation, testing, review, operation, and learning. A line of code is one part, not the complete unit of competence.

## The Future ADEV Seeks to Help Build

The author's vision is technology that reduces unnecessary friction: simpler procedures, accessible information, clearer public services, faster research, and better opportunities to learn, build businesses, and care for health.

It is an aspiration, not a prediction. The same capability can automate exclusion, surveillance, manipulation, or opaque decisions.

The desirable future is not one in which people disappear from work, but one in which they spend less energy on purposeless repetition and more on understanding, creating, caring, and deciding. Agents should expand human capability without diluting human responsibility.

ADEV contributes in a bounded way: it proposes that agent-assisted software preserve human intent, explicit limits, evidence, and open learning. That is not enough to guarantee a good future, but it helps make technical decisions visible and debatable.

## An Agenda That Remains Open

The first edition leaves questions unresolved:

- Which controls best predict reliable agentic delivery?
- How can rework and quality be measured without confusing them with code volume?
- Which skills degrade and which emerge through prolonged use?
- How does ADEV change in large, regulated, or distributed teams?
- What level of autonomy is appropriate for each class of effect?
- How can potentially harmful intent be evaluated without pretending to possess infallible moral understanding?
- Which formats allow policies and skills to move across tools?
- What economic and environmental costs does the practice introduce?
- What outcomes do teams that did not create the practice achieve?

These questions require studies, data, external adoption, and published failures. ADEV's next stage should not accumulate bolder claims, but produce more independent evidence.

## Practice: Write Your Conditions for Non-Adoption

Before expanding agent use, define three lists:

1. **Use now:** reversible actions whose outcomes can be verified.
2. **Experiment within limits:** actions requiring isolation, additional review, or new evidence.
3. **Do not delegate yet:** effects whose harm, authority, or auditability exceed current capacity.

For each boundary, record what would need to change before reconsideration: a test, narrower permission, isolated environment, specialist approval, recovery mechanism, or external evidence.

A mature practice is recognized not only by what it automates, but by the clarity with which it decides what not to automate.

## Chapter Outcome

After this chapter, the reader can evaluate ADEV without idealization; recognize risks involving skill loss, displacement, security, criticality, dependency, and concentration; distinguish observed practice from unproven return; design gradual adoption; and formulate research questions with required evidence.

## Bridge to Practice

- [`docs/research-agenda.md`](../../docs/research-agenda.md) turns open questions into an evidence backlog.
- [`framework/evidence/README.md`](../../framework/evidence/README.md) defines the preferred proof chain.
- [`framework/hardness/00-definition-and-scope.md`](../../framework/hardness/00-definition-and-scope.md) clarifies what a hardened agent can and cannot promise.
- [`framework/hardness/07-compatibility-layer.md`](../../framework/hardness/07-compatibility-layer.md) separates portable doctrine from tool-specific adapters.
- [`docs/adoption-maturity-model.md`](../../docs/adoption-maturity-model.md) supports gradual increases in capability.
