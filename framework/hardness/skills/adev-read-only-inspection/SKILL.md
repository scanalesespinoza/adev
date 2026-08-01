---
name: adev-read-only-inspection
description: Inspect the A-Dev canon and produce a bounded, evidence-aware read-only report. Use when an agent must orient to A-Dev doctrine, Hardness policies, skills, or maturity without modifying files, Git state, external systems, or communications.
---

# A-Dev Read-Only Inspection

## Purpose

Inspect the relevant A-Dev canon and report the requested state, applicable constraints, uncertainty, and evidence boundary without causing effects.

## Triggers and non-triggers

Trigger for requests to summarize, inspect, compare, audit, classify, or locate A-Dev framework material when the requested work is read-only.

Do not trigger for edits, commits, branches, pull requests, merges, messages, deployments, external queries, or any task requiring a local or remote mutation. Escalate to a skill whose contract explicitly permits that effect.

## Inputs and outputs

- **Inputs:** a user objective; optional paths, concepts, or acceptance criteria; the repository canon available for inspection.
- **Outputs:** a concise report with inspected sources, findings, applicable policies, validation performed, uncertainty, and next safe action.
- **Out of scope:** implementation, authorization decisions for effects, operational verification outside locally available artifacts, and claims not supported by inspected sources.

## Authority, permissions, and effects

- **Applicable policies:** resolve using [policy precedence](../../01-policy-and-precedence.md#precedence) and the [human expectations contract](../../03-human-expectations-contract.md).
- **Permissions:** read tracked repository artifacts needed for the scoped objective.
- **Side effects:** none. Do not write files, alter Git state, invoke remote mutations, send messages, or expose sensitive material.
- **Risk class:** [R0 — read-only](../../04-action-risk-authority-model.md#classes).

## Invariants

1. Preserve local and remote state.
2. Keep findings separate from inference, proposals, and gaps.
3. Treat [`ADEV.md`](../../../../ADEV.md) as doctrine and use the narrower canonical shelf when it exists.
4. Do not treat a fixture, example, book passage, or repository-root link as proof of an operational result.
5. For any Homedir-derived operational claim, require a direct artifact link under the canonical [Homedir repository](https://github.com/scanalesespinoza/homedir), or label the claim unverified.

## Required sequence

1. Capture intent, expected result, constraints, non-goals, acceptance criteria, and uncertainty from the request.
2. Check that the requested effect is read-only. If it is not, stop before the effect.
3. Read the [agent consumption guide](../../06-agent-consumption-guide.md) and the narrowest canonical sources for the requested concept.
4. Identify applicable policy by authority, scope, priority, and the conflict procedure; if a material conflict remains, stop and escalate.
5. Inspect only the artifacts needed to answer the objective.
6. Validate the report against the stated acceptance criteria and record remaining uncertainty.

## Uncertainty, stop, and escalation

- **Uncertainty:** mark missing source, ambiguous scope, unavailable artifact, or unsupported conclusion as a gap; do not fill it with assumption.
- **Stop:** stop when the request needs an effect beyond R0, source access is denied, sensitive data would be exposed, or validation cannot support the requested conclusion.
- **Escalate:** report the blocked action, applicable policy or contract boundary, missing decision or authorization, and the smallest safe next action.

## Evidence and validation

- **Evidence record:** source paths or direct artifact links, policy IDs or named policy sources, commands/checks run, and a concise result. Keep the record privacy-safe.
- **Acceptance criteria:** all findings trace to inspected sources; effects remain none; uncertainty and evidence gaps are explicit; required local links resolve.
- **Validation:** run the repository's narrowest relevant read-only checks, such as path, link, or structural review. Do not claim behavioral conformance from this skill alone.

See the synthetic [evaluation suite](evaluations.md) for expected decisions and safe failures.
