# Appendix B. Glossary

## Using the Glossary

This glossary defines the vocabulary of the first English edition. Definitions summarize ADEV usage; they neither replace external standards nor impose universal industry terminology. Where a normative or contractual definition exists, the corresponding technical source is linked.

## A

### ADEV

**AI Agentic Development**: a practice for directing software delivery with agents through human responsibility, explicit context, bounded autonomy, continuous verification, and evidence. ADEV is not a model, provider, tool, or prompt collection.

### `ADEV.md`

Entry file for a repository's operating context. It summarizes principles and directs the agent to product, architecture, quality, security, and operations sources. It should remain small and navigable; it is not synonymous with the whole ADEV practice.

### Agent

An AI system capable of pursuing an objective through multiple steps and using tools to observe or modify an environment. Technical autonomy does not transfer moral, legal, or organizational responsibility to it.

### Agentic

Pertaining to systems that can plan, select actions, use tools, and adjust execution during a task. It does not imply human intention, consciousness, or independent authority.

### Architect

The role accountable for understanding the need, preserving intent, defining structural decisions, and evaluating consequences across product, technology, and operations. Execution may be delegated; judgment and responsibility remain within the architect's authority.

### Atomic Iteration

A small cycle that defines, implements, verifies, and records one coherent objective. Its size follows maturity and complexity; the two-to-five-minute narration heuristic is a starting point, not a universal rule.

### Atomicity

The property of an iteration whose objective, context, effects, and evidence can be understood, reviewed, and recovered as a unit. It does not depend on a fixed number of lines, files, or hours.

### Authority

The granted right to order, approve, or execute an effect within a scope. It differs from technical capability: an agent's ability to do something does not mean it is authorized.

### Autonomy

An agent's freedom to decide and execute steps within designed boundaries. In ADEV it depends on scope, risk, reversibility, permissions, evidence, and escalation conditions.

## B

### Baseline

A versioned set of principles, sources, and guardrails governing work in a repository. It is both operational memory and a shared contract.

### Blueprints

The narrative name for product, architecture, quality, and security sources that distinguish structural decisions from local adjustments.

### Living Baseline

A baseline that changes when execution supplies relevant evidence and is consolidated, reviewed, or pruned to prevent uncontrolled growth. It improves in precision, not merely length.

## C

### Capability

An operation a tool or skill can perform. It must be evaluated separately from the authority, intent, and permission under which it is used.

### Check

A manual or automated control answering a specific question about a change, such as compilation, testing, architecture, or security. Check count is not a maturity measure; coverage, reliability, and purpose matter.

### CI/CD

Continuous integration and continuous delivery or deployment. In ADEV, CI, delivery, and deployment are related but not equivalent. A successful pipeline does not replace verification of delivered behavior.

### Counterfactual

An alternative scenario used to compare what would have happened without an intervention. EventFlow and Homedir repositories alone do not contain a valid counterfactual for causal calculations of productivity, savings, or return.

## D

### Definition of Done

The conditions required to consider an iteration complete. It includes technical evidence and, when applicable, verification of behavior in the relevant environment.

### Delivery

The process of taking a validated change to a state available to its consumer. It is distinguished from deployment when that distinction is useful.

### Delivery Verification

Confirmation that promised behavior can be executed in the relevant environment. It closes the distance between technical artifact and observable outcome.

### Deployment

Installation or promotion of an artifact into an environment. Successful deployment shows that the artifact arrived and runs; it does not by itself show that a person can complete the promised action.

### Doctrine

Durable principles governing ADEV. Within scope, doctrine has greater authority than explanatory practices and examples. It should be portable and not silently depend on a stack or project.

### Durable Context

Versioned, shared information that outlives a conversation: product decisions, architecture, policies, templates, tests, and records. It reduces repeated instructions in prompts.

## E

### Escalation

Transfer of a decision to a person or role with authority and competence when ambiguity, risk, policy conflict, or insufficient evidence exists.

### Evidence

An observable artifact showing what was intended, what occurred, and what was verified: a diff, test, check, review, deployment, or user walkthrough. Its strength is limited to the property it actually demonstrates.

### Evidence Chain

A traceable relationship among need, decision, policy or skill, action, validation, delivery, and reusable learning. Its required length depends on the claim: a commit demonstrates a modification, not necessarily a product outcome.

### Expectations Contract

A structure expressing intent, authority, constraints, non-goals, acceptance criteria, uncertainty, and stop conditions. It turns a human request into a reviewable basis for agent work.

### External Effect

An action modifying a system outside the workspace or affecting third parties, such as publishing, deploying, sending, purchasing, or changing remote state. It requires specific authorization unless a contract grants that exact effect.

## G

### Gate

A control boundary preventing progress until defined conditions are satisfied. It may govern integration, promotion, or deployment and should explain the risk it covers and evidence it accepts.

### Guardrail

A boundary that reduces options or contains effects to keep work within acceptable conditions. It may be expressed through policy, permission, tests, checks, isolation, or approval.

## H

### Handoff

A transfer of work among people, agents, or sessions. It records the objective, observable state, decisions, validation, uncertainty, and next step without replacing the repository as the source of truth.

### Hardness

The degree to which agent behavior is bounded by explicit expectations, authority, policies, limited capabilities, and observable verification. It does not mean infallibility or total determinism. See the [technical definition](../../../framework/hardness/00-definition-and-scope.md).

## I

### Inner Loop

The feedback cycle closest to implementation, before a change is published. It contains fast, focused checks that remove uncertainty while correction remains inexpensive.

### Issue

A record of a need or problem with expected behavior, scope, constraints, and acceptance. In parallel work, it also reserves intent for a recognizable owner.

## L

### Least Privilege

The principle of granting only the tools, functions, data, and permissions required for the corresponding objective and period. It limits the impact of error, manipulation, or misuse.

## M

### Micro-Iteration

An implementation-and-validation step small enough to provide rapid feedback. Several micro-iterations may form one atomic iteration without losing its shared objective.

## O

### Observable Action

Behavior a person or consuming system can perform or perceive. It connects a product need with acceptance criteria and enables verification of the delivery promise.

### Outer Loop

The independent cycle beginning when a change leaves the local session. It includes CI, reviews, policies, integration, and environment controls, mirroring or extending important inner loop contracts.

### Overlay

A local specialization of doctrine for a repository, team, tool, or environment. It may define stack, commands, gates, and ownership but must not silently weaken a higher rule.

### Owner

The person or role accountable for maintaining a decision, policy, evidence item, or iteration within scope. In ADEV, the term indicates operational accountability, not necessarily legal ownership.

## P

### Policy

A bounded, reviewable rule with authority, priority, rationale, exceptions, evidence, and an owner. A recommendation does not become policy merely because it is written emphatically.

### Practice

A repeatable pattern for applying doctrine in context. It is guidance unless a local policy explicitly promotes it to an obligation.

### Prompt

A temporary instruction given to an agent. In ADEV it should increasingly focus on the particular need while recurring patterns migrate to durable context.

### Pull Request (PR)

A reviewable proposal to integrate a change into a shared branch. It connects issue, diff, decisions, evidence, conversation, and controls. A green PR alone does not demonstrate the product outcome.

## R

### Relevant Environment

The place where a claim must be verified: local, integration, sandbox, controlled audience, or production. It is selected according to risk and stage and does not always mean public production.

### Rollback

Return to an earlier trusted state after a change. It is not synonymous with deleting a branch; depending on the effect, it may require reverting code, disabling a feature, restoring data, or containing an external system.

### Runbook

An operational guide for responding to a known condition such as an incident, recovery, or promotion. It defines signals, actions, roles, evidence, and escalation.

## S

### Skill

A reusable capability contract defining purpose, triggers, inputs, permissions, effects, invariants, stop conditions, evidence, and validation. It is not merely a stored prompt and cannot expand user authority.

### Software Habitat

A metaphor for software as a space inhabited by people and systems through repeated actions. It forces architecture to connect with experience and needs, not only technical components.

### Stop Condition

A defined event requiring the agent to stop, refuse, or request a decision: uncertain authority, conflicting objective, unapproved destructive effect, or insufficient validation.

### Stop the Line

The principle of stopping new scope when confidence in the system or delivery path disappears. Contain, understand, and recover before resuming. It does not impose a universal incident duration.

### Structural Decision

A choice affecting multiple parts of the product or costly to reverse, such as component boundaries, data model, identity, interfaces, or operational strategy. It requires greater authority and review than a reversible local decision.

## T

### Technical Asset

A reusable artifact bringing the practice into a repository: baseline, template, skill, policy, checklist, test, script, runbook, or example.

### Traceability

The ability to reconstruct why a change occurred, under which authority, from which sources, with what effects, and through which evidence it was accepted.

### Traceability Thread / Digital Thread

The chain connecting intent, decisions, prompts, changes, tests, integration, deployment, and verification. Mature ADEV extends it to delivered behavior; it need not end at the commit.

### Trunk-Based Development

A model in which work frequently converges on a main branch through short-lived branches or equivalent mechanisms. It has served ADEV's founding cases well but is not a universal topology.

## V

### Validation

An activity comparing a change, control, or artifact with a defined requirement. It may include tests, checks, and inspection. Each validation should state which property it demonstrates.

### 50/50

A symbol of balance between creation and verification. It means advancing with continuous attention, not mathematically dividing time or imposing a fixed iteration duration.
