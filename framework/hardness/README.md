# Hardness

Hardness is A-Dev's emerging framework for operationally governing agents so their behavior is bounded, explainable, verifiable, and aligned with user expectations.

It is not presented as an external technical standard. It is a working A-Dev term for turning intent into durable behavior through explicit policies, capability contracts, authority boundaries, and evidence.

## Start here

1. [`00-definition-and-scope.md`](00-definition-and-scope.md) defines the concept, intended outcomes, and boundaries.
2. [`01-policy-and-precedence.md`](01-policy-and-precedence.md) defines the minimum policy model and deterministic conflict resolution.
3. [`02-skill-contract-template.md`](02-skill-contract-template.md) defines the minimum contract for creating or reviewing an agent skill.
4. [`03-human-expectations-contract.md`](03-human-expectations-contract.md) turns a user request into explicit intent, authority, constraints, uncertainty, and stop conditions.
5. [`04-action-risk-authority-model.md`](04-action-risk-authority-model.md) classifies action effects and the approval, evidence, and escalation required for each.
6. [`05-policy-schema-and-fixtures.md`](05-policy-schema-and-fixtures.md) provides a local policy-record schema, fixtures, and reproducible structural validation.
7. [`06-agent-consumption-guide.md`](06-agent-consumption-guide.md) explains how an agent reads canon, selects a bounded skill, and applies policy without assuming a runtime.

## Relationship to A-Dev

A-Dev governs disciplined delivery. Hardness makes the agent-facing part of that governance explicit:

`user expectation -> applicable policy -> bounded skill -> authorized action -> evidence -> evaluation`

The existing baseline remains useful, but Hardness distinguishes universal doctrine, scoped policy, project overlay, reusable skill, and behavioral evidence so the baseline does not grow into an unreviewable list of rules.

## Current maturity

This is a foundation, not a completeness claim. The initial expectation contract, action risk classes, policy-record schema, and first reference skill are defined; enforcement, runtime-backed evaluations, lifecycle management, and cross-agent proof are intentionally left for later phases.
