# 4. The Living Baseline

## When Documentation Begins to Change the Outcome

A document becomes operational when its defects have consequences and its improvements change future behavior.

That is what happened with `ADEV.md`. At first, it was a collection of recommendations for guiding work with agents. After several weeks, a different signal appeared: fewer interruptions from recurring problems and more time available to move forward. When a supposedly covered error returned, the question was no longer only what had failed in the code. We also had to ask which principle was ambiguous, which context was missing, or why the control had failed to apply it.

The baseline stopped being supporting documentation when it began to be debugged as part of the delivery system.

In ADEV, a *living baseline* is the minimum versioned set of principles, contracts, and references governing how people and agents work in a repository. It is living because it learns from execution. It is a baseline because it provides a shared starting point for deciding, implementing, and verifying.

It is neither a manual that must be read in full before every action nor an infinite memory of everything that has ever happened.

## `ADEV.md` Is a Map, Not an Encyclopedia

The `ADEV.md` file is the entry point. It declares the principles that apply and leads to the sources where the details live.

It may establish, for example, that:

- Every reproducible system behavior should be versioned as code.
- Changes respect existing architecture decisions.
- Quality and security are part of the definition of done.
- Delivery uses atomic, traceable changes.
- Destructive, privileged, or external actions require explicit authority.

It does not need to copy the domain model, every architecture decision, each operating procedure, or the entire test catalog. It should link canonical sources and explain when to consult them.

A healthy structure separates:

- **Practice principles:** how work is performed and what cannot be omitted.
- **Product:** what is being built, for whom, and which behaviors it must preserve.
- **Architecture:** how the system is organized and which decisions are structural.
- **Quality and security:** which properties and controls must be demonstrated.
- **Operations:** how the product is delivered, observed, recovered, and maintained.
- **Iteration:** which specific need is being addressed now.

This separation lets the agent load relevant knowledge without turning every request into an indiscriminate reading of the entire repository.

## Begin with a Small Foundation

It is possible to write hundreds of rules before the first iteration. It is also possible to be wrong hundreds of times about problems that do not yet exist.

ADEV begins with known foundations and the repository's real context. Building before publishing, testing behavior, protecting secrets, limiting privileges, keeping responsibilities separate, and avoiding unauthorized destructive changes are reasonable examples. Execution then reveals what needs greater precision.

The initial baseline does not try to anticipate every situation. It should be sufficient to begin safely and at a small scale.

This avoids two extremes:

- An empty baseline that forces expectations to be reconstructed in every prompt.
- A massive baseline that institutionalizes assumptions, contradictions, and cognitive load before evidence exists.

Maturity is not measured by the number of rules. It appears in how clearly the system guides decisions and prevents consequential failures without obstructing the work.

## From Failure to Durable Protection

A defect corrected only at the point where it appeared can return in another form. Closing the learning requires the complete chain:

> **Incident → understanding → decision → protection → evidence → reuse.**

Imagine that a change works locally but fails during integration because a test depends on the environment's default language. The immediate correction may fix that test. The broader learning requires asking:

- Were user-facing strings hardcoded?
- Was the expected locale declared?
- Were default values consistent?
- Did local and CI environments execute the same contract?
- Do other tests have the same silent dependency?

The answer may produce several assets:

- Corrected code that resolves the defect.
- A regression test that reproduces the case.
- A cross-cutting rule for strings and locale.
- A checklist for environment-specific configuration.
- An automated multilingual-coverage validator.
- A case study that makes the lesson transferable.

Learning does not necessarily belong in one place. Each representation serves a different function.

## Where Each Lesson Lives

Classification prevents every error from becoming another paragraph in `ADEV.md`.

| Nature of the lesson | Primary destination |
| --- | --- |
| Concrete defect | Corrected code |
| Behavior that must not regress | Automated test |
| Cross-cutting working principle | `ADEV.md` or applicable doctrine |
| Contextual check that remains manual | Checklist |
| Technology- or environment-specific detail | Specialized knowledge close to the domain |
| Risk that can be checked repeatedly | Automated outer loop check |
| Transferable conflict, decision, and result | Case study or indexed evidence |

A useful rule is:

> What cuts across contexts becomes a principle; what is contextual is documented near its domain; what can be checked is automated; what recurs must be protected.

This also prevents a detail of Homedir, EventFlow, or a particular tool from accidentally becoming universal doctrine.

## Rules Need Authority and Precedence

A flat list works while every rule points in the same direction. In reality, rules can compete.

One instruction may favor autonomy while another requires approval for external actions. A rapid-delivery rule may collide with mandatory validation. A technology preference may contradict a recorded architecture decision.

The baseline must explain what happens when principles interact:

1. Legal, security, and data-protection constraints are not omitted for speed.
2. Explicit authority limits operational autonomy.
3. The product contract defines intent; architecture limits how it is realized.
4. Domain-specific rules may specialize a general rule without contradicting its guarantees.
5. An exception must record its scope, owner, and exit condition.
6. When a contradiction cannot be resolved, the agent stops and escalates.

The analogy to law is useful: accumulating rules is not enough. The system needs coherence, hierarchy, and a way to interpret conflicts.

A baseline without precedence can produce selective obedience: the agent finds a rule that justifies continuing and ignores another that required it to stop.

## The Written Rule and the Executable Rule

An important principle should not depend only on someone remembering to read it.

If the baseline requires building and testing in the inner loop, the outer loop should repeat those contracts in an independent environment. If it requires secret protection, CI should inspect the change with appropriate controls. If it establishes verifiable architecture boundaries, a check can detect prohibited dependencies or layers crossed incorrectly.

This symmetry does not turn every rule into automation. Some decisions require judgment. It does force us to ask what evidence will support each principle.

We can classify a rule by its strength:

- **Declared:** it exists as a readable expectation.
- **Guided:** a template or skill helps apply it.
- **Reviewed:** another person or agent checks compliance.
- **Executable:** a test or policy can block deviation.
- **Observed:** the final environment confirms the promised behavior.

Maturity means increasing the strength of important rules when cost and risk justify it, not automating everything indiscriminately.

## Curation Also Means Reduction

During delivery, a new rule is often written urgently. That is reasonable: first contain the problem and preserve the learning. If this writing mode continues without review, the baseline accumulates debt.

A useful cadence combines:

- **Immediate capture:** record the lesson while it is fresh.
- **Frequent review:** consolidate recent changes and detect duplication.
- **Periodic structural pause:** evaluate hierarchy, clarity, coverage, and total cost.

As a reference, a weekly review can organize active adjustments, while a deeper monthly review can examine the baseline's architecture. Frequency should fit repository pace and risk; it is not a universal ceremony.

Curation seeks to:

- Merge equivalent rules.
- Separate principles from technical details.
- Resolve contradictions.
- Remove obsolete instructions.
- Turn repeated text into templates or checks.
- Improve links to specialized sources.
- Clarify what is mandatory and what is recommended.
- Record superseded decisions without erasing their history.

A living baseline is not a file that always grows. It is a system that learns and organizes itself.

## The Cost of Context

Every instruction given to an agent consumes attention and context capacity. A long, repetitive, or disorganized file forces the agent to process irrelevant information and can make important principles harder to notice.

The goal is not to minimize words at any cost. A baseline that is too brief can hide assumptions and transfer the cost to questions, errors, and rework. We seek sufficient completeness, understandable structure, and a low cost of application.

Signs of debt include:

- The same rule appears in several places with different wording.
- Prompts repeat instructions that should be durable context.
- Agents read complete documents to find one decision.
- Mandatory rules are indistinguishable from suggestions.
- Nobody can explain which source has authority.
- A correction requires another exception in a growing list.
- Checks exist, but nobody knows which risk they cover.

The answer is usually to establish hierarchy and retrieve context selectively, not to load everything or assume that the model must learn it permanently.

## Learn from Operations Too

People's perceptions are a valuable source, but not the only one. The baseline can improve by observing CI results, retries, recurring failures, rollbacks, integration times, production verification, and repeated requests for context.

These signals require careful interpretation. Many commits do not demonstrate productivity. Many commands do not demonstrate success. A deleted line does not prove rework. Turning activity into learning requires connecting it to observable outcomes.

Data must also be aggregated and sanitized. Doctrine does not need raw histories, secrets, personal paths, or private conversations. It needs transferable patterns supported by sufficient evidence.

## Practice: Audit a Rule

Choose an important rule in your repository and answer:

1. Which incident, risk, or need justifies it?
2. Is it cross-cutting or specific to a domain?
3. Which other rule might contradict it?
4. How does the agent know when to apply it?
5. What evidence demonstrates compliance?
6. Could a test, template, or check make it stronger?
7. What condition would allow it to be changed or removed?

If you cannot explain why a rule exists or how to observe its effect, you probably have a preference, not an operational baseline.

## Chapter Outcome

After this chapter, the reader can use `ADEV.md` as a map of principles; turn a failure into durable protections; decide where each lesson belongs; establish precedence among rules; and keep the baseline complete, understandable, and efficient in context.

## Bridge to Practice

- [`ADEV.md`](../../ADEV.md) is the repository's normative baseline and demonstrates a model of principles with precedence.
- [`starter-kit/BASELINE_template.json`](../../starter-kit/BASELINE_template.json) provides a machine-readable seed.
- [`framework/hardness/01-policy-and-precedence.md`](../../framework/hardness/01-policy-and-precedence.md) develops authority and conflict resolution.
- [`docs/evidence-index.md`](../../docs/evidence-index.md) organizes available signals and keeps the difference between observed artifacts and inferred outcomes explicit.
