# Skill Contract Template

A skill is a bounded capability contract that tells an agent when and how to perform a specialized class of work. It is more than a reusable prompt: it declares applicability, authority, effects, evidence, and failure behavior.

Use this template when creating or reviewing a skill. A concrete implementation may store the contract in `SKILL.md` or an equivalent vendor-neutral format.

## Identity

- **Name:** stable, capability-oriented name.
- **Purpose:** outcome the skill enables.
- **Owner:** role responsible for correctness and review.
- **Version or review trigger:** when the contract must be revalidated.

## Applicability

- **Triggers:** observable requests or artifact types that require this skill.
- **Non-triggers:** adjacent tasks the skill must not claim.
- **Preconditions:** context, files, tools, permissions, or user decisions required before work starts.
- **Out of scope:** effects or deliverables the skill does not authorize.

## Capability contract

- **Inputs:** required and optional inputs, including accepted formats.
- **Outputs:** artifacts, reports, or state changes produced.
- **Tools and permissions:** allowed tools and the minimum required authority.
- **Side effects:** local writes, external writes, messages, deployments, destructive actions, or none.
- **Invariants:** conditions that must remain true throughout execution.
- **Applicable policies:** stable policy identifiers, not copied policy text.

## Execution behavior

- **Required sequence:** only steps whose order is safety- or correctness-critical.
- **Judgment points:** decisions the agent may make autonomously and the evidence required.
- **Approval conditions:** actions that require explicit authorization.
- **Stop or refuse conditions:** missing inputs, conflicting authority, unsafe effects, or unverifiable output.
- **Escalation path:** information the agent must present when it cannot proceed safely.

## Verification and evidence

- **Acceptance criteria:** observable conditions defining success.
- **Validation:** narrowest meaningful checks for the output and effects.
- **Evidence record:** what is retained or reported, with privacy boundaries.
- **Cleanup:** temporary artifacts or permissions that must not survive completion.

## Failure modes

| Failure | Detection | Required response | Evidence |
| --- | --- | --- | --- |
| Missing prerequisite | Preflight check | Stop and identify the missing input | Preflight result |
| Policy conflict | Applicability and precedence check | Follow higher authority or escalate | Policies and decision |
| Unauthorized effect | Permission/effect check | Do not perform the action | Blocked action summary |
| Validation failure | Acceptance check | Contain effects and report failure | Validation output |

## Behavioral evaluations

Every skill should include at least:

1. A successful in-scope request.
2. An adjacent request that must not trigger the skill.
3. A missing-precondition case.
4. A policy-conflict or approval case.
5. A validation-failure or safe-stop case.

Passing evaluations shows conformance to the current contract; it does not prove correctness in every environment.
