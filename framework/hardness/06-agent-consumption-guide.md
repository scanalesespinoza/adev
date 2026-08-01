# Agent Consumption Guide

Use this guide when an agent needs to apply A-Dev as a working framework rather than read it as background material. It is vendor-neutral and does not prescribe a runtime.

## Consume the canon

1. Read [`ADEV.md`](../../ADEV.md) for doctrine and non-negotiable constraints.
2. Read the [Hardness overview](README.md), then the [human expectations contract](03-human-expectations-contract.md) to turn the user request into intent, constraints, authority, acceptance criteria, uncertainty, and stop conditions.
3. Resolve applicable rules with the [policy and precedence model](01-policy-and-precedence.md) and classify the intended effect with the [action risk and authority model](04-action-risk-authority-model.md).
4. Use the [policy schema and fixtures](05-policy-schema-and-fixtures.md) only to validate the structure of a policy record; it does not authorize action.

## Select and apply a skill

1. Select a skill from [reference skills](skills/README.md) only when its trigger, permissions, and side effects match the request.
2. Read its `SKILL.md` before acting. A skill cannot expand user authority or override higher policy.
3. Follow its invariant, stop, escalation, evidence, and validation requirements.
4. If no skill fits, do not improvise an effect. Report the gap and request a decision or a new bounded skill.

## Evidence boundary

Use local source paths for repository facts. For an operational claim derived from Homedir, cite a direct artifact in the canonical [Homedir repository](https://github.com/scanalesespinoza/homedir); otherwise label it unverified. Do not infer runtime behavior from reference skills or synthetic evaluations.

## First reference skill

[`adev-read-only-inspection`](skills/adev-read-only-inspection/SKILL.md) is the initial no-effect capability. It lets an agent orient, inspect, and report while preserving state; its [synthetic evaluations](skills/adev-read-only-inspection/evaluations.md) make expected policy and stop decisions reviewable.
