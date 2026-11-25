# Candidate patterns: operational workflow

**Status:** candidate, unless marked otherwise below. These patterns come from a sanitized, aggregate analysis of interactive development telemetry. They describe workflow friction, not proven improvements.

**Context:** any person or agent working interactively across repositories, tools, and sessions.

**Evidence:** [operational workflow telemetry](../docs/evidence/operational-workflow-telemetry.md), one local operating context. The source did not capture exit status, duration, or user-observed outcome, so no pattern below has outcome evidence yet. Each needs evidence that following it changes results before it is adopted.

## Discovery and preflight

### W1. Discover workspace capabilities before choosing a path

Discover the repository root, branch, working-tree state, manifests, and local instructions before choosing tools or commands. Derive build, test, lint, and run capabilities from repository evidence instead of assuming a language, platform, or vendor.

### W2. Run an environment preflight before expensive or state-changing workflows

Verify required capabilities, versions, wrappers, services, permissions, and configuration before starting. Report a missing prerequisite as a capability gap and offer a repository-supported alternative instead of silently substituting a tool. Check credentials only through non-secret metadata; never read, echo, or persist their values.

## Continuity

### W3. Preserve explicit task state across tools, sessions, and agents

Persist the objective, scope, decisions, changed assets, completed validations, blockers, and next safe action at meaningful checkpoints. Resume from observable state and reconcile it with the saved handoff. Treat a provider or agent change as a handoff, not a new task. Related: [shared handoff overlay](../overlays/multi-agent-handoff.md).

## Authority

### W4. Replace global bypasses with scoped authority

**Status: adopted** in the [action risk and authority model](../hardness/04-action-risk-authority-model.md) and the [baseline profiles](../profiles/README.md). Grant reusable authority by action class, risk, target, and time window instead of disabling protections globally; require fresh confirmation when an action crosses its approved boundary.

## Execution evidence

### W5. Capture structured outcomes, not only command text

Record a sanitized action signature, start and end time, result class, exit status, affected scope, and causal predecessor. Separate attempted, completed, validated, and user-observed outcomes. Never learn success from frequency alone; discount duplicate captures and retries without a state change.

### W6. Retry only after a relevant change

Retry only when state, inputs, implementation, environment, or strategy changed in a way that can affect the result. Stop repeated equivalent attempts, classify the blocker, and keep the smallest diagnostic evidence for the handoff. Convert recurring failure and remediation pairs into a preflight check, guardrail, test, or checklist item.

## Promotion

### W7. Promote repeated sequences into workflows only after outcome validation

A sequence that recurs is a candidate workflow, not a proven one. Promote it only after outcome evidence and human review. This is the [pattern lifecycle](README.md) applied to operational routines.

### W8. Aggregate evidence locally; interpret only small, sanitized sets

Normalize and aggregate raw telemetry locally, filter secrets before persistence and again before publication, and use generative interpretation only on small, sanitized candidate sets. Related: [data protection](../practices/data-protection.md).
