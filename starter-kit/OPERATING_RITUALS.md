# Operating Rituals

These rituals convert A-Dev from aspiration into repeatable behavior.

## 1. Pre-iteration ritual
- State scope in one paragraph.
- State the validation path before implementation.
- Confirm the baseline still matches repo reality.

## 2. Failure-to-rule ritual
- When something breaks, stop adding scope.
- Identify whether the failure came from definition, implementation, validation, or environment.
- Write the smallest reusable rule that would have prevented repetition.

## 3. Multilingual sweep ritual
- Review touched UI surfaces for hardcoded text.
- Check edge views, admin surfaces, and recently added flows.
- Treat language drift as product debt, not a cosmetic follow-up.

## 4. CI/CD recovery ritual
- Confirm the build path, image path, and deployment path tell the same story.
- Validate user-visible behavior, not only process liveness.
- Update documentation if the real delivery path differs from the written one.

## 5. Performance ritual
- Compare against a concrete baseline.
- Measure error rate and latency before proposing redesign.
- Rank fixes by measured leverage.

## 6. Backup/DR ritual
- Validate restore viability, not only backup generation.
- Treat retention and rotation as part of reliability.
- Preserve the recovery procedure as a reusable asset.

## 7. Workspace discovery ritual
- Discover the repository root, current branch, working-tree state, project manifests, and local instructions before choosing tools or commands.
- Derive build, test, lint, and run capabilities from repository evidence instead of assuming a language, platform, or vendor.
- Preserve task context across directory, process, interface, or agent transitions so navigation does not become lost state.

## 8. Environment preflight ritual
- Verify required capabilities, versions, wrappers, services, permissions, and configuration presence before starting a workflow.
- Report missing prerequisites as capability gaps and offer repository-supported alternatives; do not silently substitute tools.
- Check that credentials exist only through non-secret metadata. Never read, echo, persist, or infer credential values during preflight.

## 9. Task continuity ritual
- Persist the objective, scope, decisions, changed assets, completed validations, blockers, and next safe action at meaningful checkpoints.
- Resume from observable repository and task state, then reconcile it with the saved handoff before taking action.
- Treat a provider, interface, or agent change as a handoff, not as a new task with reconstructed assumptions.

## 10. Scoped authority ritual
- Grant reusable authority by action class, risk, target boundary, and time window rather than disabling protections globally.
- Keep read-only discovery, reversible workspace changes, destructive operations, and external side effects as distinct authority classes.
- Require fresh confirmation when an action crosses its approved repository, data, identity, financial, publication, or production boundary.

## 11. Evidence-bearing execution ritual
- Record a sanitized command or action signature, start and end time, duration, result class, exit status, affected scope, and causal predecessor.
- Separate attempted, completed, validated, and user-observed outcomes; process completion alone is not proof of value.
- Never learn success from frequency alone. Discount duplicate captures, retries without state change, and events with missing outcome data.

## 12. Bounded retry ritual
- Retry only when state, inputs, implementation, environment, or strategy changed in a way that can affect the result.
- Stop repeated equivalent attempts, classify the blocker, and preserve the smallest diagnostic evidence needed for handoff.
- Convert recurring failure-remediation pairs into a preflight check, guardrail, test, checklist item, or documented capability.

## 13. Workflow promotion ritual
- Detect repeated behavior locally from sanitized, normalized event signatures before using generative interpretation.
- Propose a reusable workflow only when the sequence recurs across independent sessions or contexts and has observable outcomes.
- Keep promotion reviewable: show supporting frequency, context diversity, failure rate, safety boundary, rollback path, and unresolved uncertainty.
- Automate stable capabilities and decision points, not machine-specific paths, vendor-specific commands, or copied secrets.
