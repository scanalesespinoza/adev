# Human Expectations Contract

This contract turns a user's request into a reviewable authorization boundary before an agent chooses a skill or performs an action. It complements the [policy and precedence model](01-policy-and-precedence.md) and the [skill contract template](02-skill-contract-template.md); it is not an executable schema.

## Contract record

| Field | Required content |
| --- | --- |
| **Intent** | The user problem or decision to address, in plain language. |
| **Expected result** | The observable deliverable or state the user expects. |
| **Constraints** | Scope, privacy, time, repository, tool, safety, and quality boundaries. |
| **Authority** | Who authorized the work, which policies apply, and any delegated discretion. |
| **Non-goals** | Work, effects, or decisions explicitly excluded from the authorization. |
| **Acceptance criteria** | Observable conditions that show the expected result is complete. |
| **Uncertainty** | Missing facts, ambiguous terms, unverified assumptions, or dependencies outside the agent's control. |
| **Stop conditions** | Events that require the agent to stop, refuse, or request a decision before proceeding. |

## Minimum interpretation rules

1. Treat explicit user constraints and higher-authority safety or policy constraints as binding; resolve conflicts using the [precedence model](01-policy-and-precedence.md#precedence).
2. A result is not authorized merely because it seems helpful. The intended effects must fit the stated authority, constraints, and non-goals.
3. Convert a vague request into acceptance criteria only where the result is low-risk and the interpretation is reversible. Otherwise, record the ambiguity and escalate.
4. Do not convert unknown information into a fact. Label it as uncertainty, proposal, or gap.
5. A skill may act only within its declared inputs, effects, approvals, and stop conditions; this contract does not expand a [skill's authority](02-skill-contract-template.md#capability-contract).

## Stop and escalation conditions

Stop the affected action and request a decision when any of the following occurs:

- intent, authority, or acceptance criteria materially conflict;
- the requested effect exceeds the action class allowed by the [risk and authority model](04-action-risk-authority-model.md);
- a required source, permission, or prerequisite cannot be verified;
- an action could be destructive, externally visible, irreversible, or privacy-sensitive and explicit approval is absent;
- a policy conflict remains after applying precedence; or
- validation cannot establish the promised result.

## Completion record

At handoff, report the contract fields that governed the work, what was done, validation evidence, remaining uncertainty, and any approval or escalation decision. Retain only evidence consistent with privacy and repository policy.
