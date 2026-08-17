# 8. Autonomy, Security, and Responsibility

## Autonomy Does Not Remove Accountability

An agent can analyze a problem, modify files, run commands, and coordinate tools for extended periods. That capability creates an impression of independence. Yet acting with technical autonomy does not make the agent an accountable subject.

The person or organization that chooses to use the tool remains accountable for the conditions it designed, the permissions it granted, the supervision it applied, and the effects it accepted. If an agent introduces a serious defect while correctly following a human instruction, we cannot transfer blame to it. We must examine the human decision, context, and controls that made the outcome possible.

This distinction does not deny the system's complexity. Within an organization, responsibility is distributed among those who define the product, design the architecture, administer access, implement, review, and authorize a delivery. Each role answers for a part. What does not happen is responsibility disappearing inside the model.

A tool capable of acting demands greater clarity about accountability, not less.

## Freedom Within Designed Boundaries

ADEV does not seek to reduce an agent to autocomplete that asks permission before every move. That form of control destroys the benefit of delegation and transfers all friction back to the person.

Useful autonomy is freedom within previously designed boundaries:

- a recognizable objective and scope;
- a bounded workspace;
- product, architecture, quality, and security sources;
- permissions proportional to the task;
- actions that require explicit approval;
- observable evidence of the work performed;
- conditions for stopping and escalating.

Within those boundaries, the agent can explore, propose, edit, test, and correct. When an effect exceeds the contract, it must stop.

The boundary is not an expression of emotional distrust. It is operational design. NIST's *zero trust* principles remind us that the location or ownership of a resource does not confer implicit trust: authentication and authorization must be verified for the corresponding access. Applied to agent work, running on our computer or inside our repository does not justify unlimited access.

## The Laboratory Is Not the Professional Baseline

During ADEV's initial exploration, a personal environment was deliberately used with broad permissions, no important information, and enough freedom to discover which actions needed restriction. It was a conscious choice: accepting greater risk in a controlled laboratory to accelerate learning.

That experiment is not a general recommendation.

A professional team should begin with a safer baseline:

- run the agent under a non-administrative identity;
- restrict writes to the authorized repository or workspace;
- keep secrets, credentials, and sensitive data out of the repository and durable context;
- expose only the tools required for the objective;
- separate development, integration, and production;
- require approval for destructive, privileged, or external effects;
- record actions and preserve a recovery path.

A broad-permission laboratory is reasonable only when the environment is disposable, isolated, free of secrets and sensitive connections, and the person explicitly accepts its possible loss. Even there, every effect should be observed so that learning can become a durable restriction.

## Capability Does Not Mean Authority

The fact that a tool can perform an action does not mean it is authorized to do so. This separation prevents one of the most dangerous confusions in agentic development.

We can classify actions by their effects:

| Class | Example | Default autonomy | Minimum evidence |
| --- | --- | --- | --- |
| Read | Inspect in-scope files, state, or documentation | Allowed | Source consulted and relevant finding |
| Reversible local write | Edit recoverable files in the authorized workspace | Allowed when the task includes implementation | Diff, validation, and rollback path |
| Destructive or difficult-to-recover action | Delete, overwrite, rotate, migrate, or rewrite history | Not autonomous | Exact target, approval, and prepared recovery |
| External effect | Publish, deploy, send, purchase, or modify a remote system | Only when the contract authorizes that exact effect | Destination, authorization, result, and containment |

Classification follows the greatest plausible effect. Drafting a message locally may be reversible; sending it changes the external world. Creating a migration does not grant authority to execute it in production. Having a credential available is not the same as having approval to use it.

OWASP uses the term *excessive agency* for the risk that emerges when an application combines excessive functionality, permissions, or autonomy. Its guidance is direct: give the agent only the tools and operations it needs, grant each integration the least sufficient privilege, and introduce human approval for high-impact actions.

ADEV adds a practical question: **What evidence would later demonstrate that the agent acted within its authority?** Without that evidence, the permission cannot be governed.

## The Red Line of Intent

Traditional technical controls verify important properties: compilation, types, dependencies, known vulnerabilities, permissions, contracts, and tests. Yet a change can be technically correct while pursuing a harmful purpose.

An issue could request a feature that extracts information, deliberately weakens a control, or enables abuse. A capable agent may implement it to a high standard if the system treats every instruction as legitimate by default. It may also receive manipulated instructions through external content, compromised dependencies, or prompt injection.

ADEV therefore proposes developing a layer of operational discernment. This is not an artificial “conscience” capable of resolving good and evil, nor a guarantee that the system will understand every intention. It is a set of questions and controls that increases the likelihood of detecting a request incompatible with the product's purpose:

- Who is requesting the change, and do they have authority to do so?
- What legitimate need and product behavior justify it?
- Which data, users, and systems could it affect?
- Does it expand privileges, attack surface, or destructive capability?
- Can its effect be explained and reviewed before execution?
- Is there a lower-risk alternative?
- Should someone accountable for product, security, or legal matters participate?

When intent or authority cannot be established, the safe behavior is to stop the affected action and escalate. The agent must not invent a justification to proceed.

## Defense in Depth for Agents

No single control makes an agentic operation safe. Human approval may be superficial. A sandbox may be misconfigured. A test may cover only expected behavior. A reviewer may share the implementer's assumptions.

Security is built in layers:

1. **Identity and authority:** authenticate the requester and verify that they may order the effect.
2. **Traceable intent:** connect the action to a need, issue, and acceptance criteria.
3. **Scope and least privilege:** limit files, tools, data, networks, and environments.
4. **Separation of duties:** distinguish implementation, review, and approval of sensitive effects.
5. **Independent validation:** combine tests, static analysis, dependency and secret checks, architecture controls, and change review.
6. **Isolation:** execute uncertain work in bounded, disposable environments.
7. **Observability:** record what was attempted, which tool acted, and the result, without storing secrets.
8. **Containment and recovery:** provide rollback, a stop mechanism, or access revocation.
9. **Human escalation:** reserve high-impact decisions for roles with the necessary competence and authority.

These layers should not become an identical ceremony for every action. Reading a public document does not deserve the same flow as deleting data or deploying to production. Control should be proportional to the effect and the ability to recover.

## When an Agent Causes an Incident

After a serious defect, blaming the tool prevents learning. It would also be insufficient to assign blame quickly to one person without examining the system that shaped their action.

The response follows a disciplined sequence:

1. **Contain:** stop the effect, temporarily revoke capabilities, or return to the last trusted state.
2. **Protect:** safeguard users, data, and services before continuing the investigation.
3. **Understand:** reconstruct the need, instructions, context, permissions, actions, and validations.
4. **Accept responsibility:** identify which roles should have decided, supervised, or authorized each part.
5. **Correct:** repair the product and demonstrate that expected behavior has been restored.
6. **Prevent:** turn the lesson into the smallest durable control that would have changed the outcome.

Prevention may belong in code, a test, a permission policy, a checklist, an ADEV rule, or several coordinated layers. Severity does not automatically justify a global rule. The new barrier needs a scope, an owner, evidence, and a review condition.

The goal is not to promise that the incident can never recur. It is to reduce its probability, limit its impact, and improve our ability to detect it and recover.

## Practice: Create Your Authority Map

Before assigning the next task to an agent, list the capabilities it might use and classify each action as read, reversible write, destructive, or external.

For each one, record:

- the objective that justifies it;
- reachable resources and environments;
- the identity under which it runs;
- the minimum required permission;
- required approval;
- expected evidence;
- the stopping condition;
- the rollback or containment mechanism.

Then try to remove one tool, permission, or destination that is unnecessary. Also simulate an ambiguous or manipulated instruction and verify that the flow stops before producing a sensitive effect.

The exercise has succeeded if the agent retains autonomy for everyday work while encountering clear limits before an action it cannot justify.

## Chapter Outcome

After this chapter, the reader can separate capability from authority; define autonomy within a scope; distinguish an experimental laboratory from a professional baseline; apply least privilege and proportional approval; design defense in depth; and respond to incidents without transferring responsibility to the tool.

## Bridge to Practice

- [`framework/hardness/04-action-risk-authority-model.md`](../../framework/hardness/04-action-risk-authority-model.md) provides a reusable classification of effects, approvals, and evidence.
- [`framework/hardness/01-policy-and-precedence.md`](../../framework/hardness/01-policy-and-precedence.md) resolves conflicts among policies and authorities.
- [`framework/hardness/03-human-expectations-contract.md`](../../framework/hardness/03-human-expectations-contract.md) turns intent, scope, and uncertainty into a verifiable contract.
- [`starter-kit/BASELINE_template.json`](../../starter-kit/BASELINE_template.json) brings boundaries and requirements into the repository.

## Security References

- [NIST SP 800-207: *Zero Trust Architecture*](https://csrc.nist.gov/pubs/sp/800/207/final).
- [NIST AI 600-1: *Artificial Intelligence Risk Management Framework: Generative Artificial Intelligence Profile*](https://nvlpubs.nist.gov/nistpubs/ai/NIST.AI.600-1.pdf).
- [OWASP LLM06:2025: *Excessive Agency*](https://genai.owasp.org/llmrisk/llm062025-excessive-agency/).
