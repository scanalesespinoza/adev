# Hardness: Definition and Scope

## Definition

**Hardness** is the degree to which an agent's behavior is constrained by explicit expectations, scoped authority, deterministic policy, bounded capabilities, and observable verification.

A hardened agent is not an infallible agent. It is an agent whose permitted behavior, decision boundaries, effects, failure handling, and evidence requirements are clear enough for a user or reviewer to predict and audit.

## Intended outcomes

Hardness should make it possible to answer:

1. What outcome did the user authorize?
2. Which policies apply, and which one wins if they conflict?
3. Which capability may the agent use, with which tools and effects?
4. When may the agent act autonomously, ask for approval, refuse, or stop?
5. What evidence proves that behavior matched the contract?

## In scope

- Translating user expectations into testable outcomes and constraints.
- Defining policies with explicit scope, authority, precedence, and exceptions.
- Defining skills as bounded capability contracts rather than loose prompt fragments.
- Limiting tools, permissions, side effects, and external communication.
- Specifying stop, refusal, approval, and escalation conditions.
- Capturing evidence and evaluating behavior for regressions.
- Learning from failures without accumulating duplicate or obsolete rules.

## Out of scope

- Claiming that agents can be made deterministic in every environment.
- Replacing human judgment for ambiguous intent or high-impact decisions.
- Treating one vendor's prompt format, tool API, or permission system as universal.
- Turning every operational preference into global doctrine.
- Using policy volume as a proxy for safety or quality.

## Examples

- A repository policy permits read-only inspection but requires approval before external writes; an analysis skill declares that it performs no writes and emits an evidence-backed report.
- A documentation skill is triggered only for document artifacts, lists its required renderer, and must stop if visual verification cannot be completed.
- A destructive operation is blocked because the skill contract does not grant deletion authority, even though deletion might be the fastest implementation path.

## Counterexamples

- A long prompt says "be careful" but does not define permitted effects or acceptance criteria.
- An agent follows a repository convention that conflicts with a higher-authority user constraint without surfacing the conflict.
- Every incident adds another global rule, but no tests, owner, review date, consolidation, or retirement path exist.

## Relationship to the living baseline

The living baseline remains the repository's operating memory. Hardness gives that memory structure:

- doctrine explains durable intent;
- policy states scoped requirements;
- skills state how bounded capabilities behave;
- evaluations test expected behavior;
- evidence shows what occurred;
- review removes or consolidates rules that no longer improve outcomes.

The baseline should become more precise after a meaningful failure, not merely longer.
