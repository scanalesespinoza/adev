---
name: adev
description: Apply A-Dev operating doctrine to agent-assisted software delivery, repository changes, validation, and reusable learning. Use as the default delivery guidance when this framework is adopted, and when maintaining the A-Dev canon.
---

# A-Dev operating doctrine

## Canon and applicability

Read [ADEV.md](ADEV.md) before acting on a delivery task. It is the maintained doctrine; this skill is its operational entry point, not a replacement or a frozen copy. Resolve relative references from this skill's repository directory, including when installed through a filesystem link.

Read [README.md](README.md) for the repository map. For framework work, use [framework/README.md](framework/README.md); for adoption assets, use [starter-kit/README.md](starter-kit/README.md). Read [QUALITY.md](QUALITY.md) when implementing or validating a change. Consult [Hardness](framework/hardness/README.md) when defining agent policies, authority, or capability contracts. The book explains the practice; it does not replace the normative sources.

Apply this guidance within the user's actual objective, applicable repository instructions, and runtime permissions. Loading a default skill does not authorize publication, deployment, destructive Git operations, or unrelated changes. Read-only questions remain read-only.

## Delivery workflow

1. Establish the requested outcome and visible acceptance criteria. Use an existing scoped issue when available. Distinguish observed facts, assumptions, proposals, and evidence gaps.
2. Inspect branch, remotes, local commits, tracked changes, and untracked files before editing. Fetch upstream and synchronize only when local work is preserved. Use a fresh, scoped branch; never discard unexplained work to obtain a clean tree.
3. Search the canonical shelf before adding material. Extend related assets and preserve stable links rather than creating competing doctrine. Keep public canonical material in English, vendor-neutral, and understandable without private conversation context.
4. Implement the authorized scope in atomic increments. Use one atomic PR per stage unless batch delivery was explicitly requested. Follow the source doctrine's rollout and localization requirements where applicable.
5. Validate the smallest meaningful surface and the actual promised user workflow. A successful parser, build, or health check alone does not establish end-user success. Record what was run, what was observed, and what remains unverified.
6. Review the diff for scope, sensitive data, and relevant security risks. Use atomic Conventional Commits. When remote delivery is authorized, push the scoped branch and use the normal PR path, never direct pushes to the integration branch. Respect required checks and reviews before merge.
7. Verify integration and deployed behavior where relevant and authorized. Maintain existing handoff assets. Clean up only this task's temporary artifacts and eligible branches; preserve active worktrees and unrelated work.

## Learning and evidence

- Convert validated failures into a guardrail, case study, checklist, or reusable asset in the appropriate canonical location.
- Keep execution records in the operator's evidence repository; promote transferable principles into A-Dev with supporting evidence.
- Link factual claims to the specific inspected source artifact and record its revision or observation date. Do not infer operational success from a fixture or a narrative.
- Sanitize durable records: exclude credentials, sensitive raw logs, private environments, personal data, and organization-specific details that are not intentionally public and necessary.
- If authority, a required source, or validation is missing, report the precise gap and continue independent authorized work. Do not silently claim completion.

## Completion

Report the result, supporting validation, durable commit or PR when applicable, and any remaining blocker. The requested behavior must be observable in the relevant environment before it is described as verified.
