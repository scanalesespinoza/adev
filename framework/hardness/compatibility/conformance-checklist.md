# Local Conformance Checklist

Run this checklist locally for a proposed runtime adaptation. It does not require network access or a vendor account.

- [ ] The profile names the A-Dev canon and the Hardness compatibility layer.
- [ ] The profile maps policy IDs, scope, authority, precedence, exceptions, owner, review, expiry, and evidence requirements.
- [ ] The profile maps skill triggers, non-triggers, permissions, effects, invariants, uncertainty, stop/escalate, evidence, and validation.
- [ ] The profile preserves the human expectation and action-risk boundaries or records a gap.
- [ ] The profile records how evaluations keep scenario, expected decision, evidence, and safe failure separate from runtime proof.
- [ ] The profile states unsupported fields and does not silently weaken a portable boundary.
- [ ] The profile does not claim official support, certification, or a vendor dependency.
- [ ] Local links to the selected skill, policy schema, expectation contract, and consumption guide resolve.

Use [`validate-compatibility-surface.ps1`](../scripts/validate-compatibility-surface.ps1) to check this repository reference surface; use the checklist itself for a future adapter profile.
