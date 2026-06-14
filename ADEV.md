# ADEV.md

Upstream source of truth: `https://github.com/scanalesespinoza/adev`

## Mission
A-Dev is the canonical operating doctrine for model- and agent-assisted software delivery. It consolidates the transferable system extracted from real execution, especially the high-friction operational lessons gathered in Homedir.

## Applicability
- Use this file as the upstream source of truth for all downstream `ADEV.md` copies.
- Keep downstream copies synchronized with this file unless a repository requires an explicitly documented local overlay.
- Treat Homedir as the proving ground and A-Dev as the reusable operating system.

## Non-Negotiable Rules
1. Default mode: each iteration must ship from a dedicated branch and a single atomic PR with a clear objective.
1. When a scoped issue exists, treat it as the source of truth for the implementation objective and branch directly from that issue into a dedicated feature branch and PR; do not invent a parallel task framing.
2. Every change must land through a PR; direct pushes to `main` are not allowed.
3. Commits must be atomic and use Conventional Commits.
4. Do not mix refactor, feature, visual changes, infrastructure, doctrine updates, and release mechanics in the same PR unless batch delivery is explicitly requested.
5. Prefer new canonical assets over broad rewrites of stable files when codifying new lessons.
6. Every framework claim must map to a repository asset, validated release flow, or real operational evidence.
7. Every failure worth remembering must become one of: a guardrail, a case study, a checklist item, a starter-kit update, or a durable rule.
8. English is the only valid language for committed repository content unless a bilingual mirror is explicitly required.
9. If another person or agent is already changing a file locally, avoid parallel edits on that file unless coordination is explicit.
10. Do not institutionalize guessed workflows. If the repository or evidence does not support a claim, mark it as a gap.
11. Run the narrowest validation that proves the change is sound for its scope before commit.
12. CI must be green before merge.
13. Do not advance to a new iteration without validating the previous one in production when the change has production impact.
14. Versioning and tagging happen on a manual initiative cadence; do not assume a tag or public release for every PR or minor change.
15. When versioning, update version references across the repository, starting with the canonical version source such as `pom.xml` when applicable.
16. Every result must be followed through to deployment verification, not left at analysis or local edits only.
17. For new features, endpoints, or APIs, use a mandatory 3-iteration incremental rollout: hidden or non-production, progressive integration, then legacy cleanup after production validation.
18. If the project is multilingual, all visible text must be implemented through language bundles or equivalent localization assets; avoid globally hardcoded text in templates, JS, backend code, and UI messages.
19. If batch delivery is explicitly requested, multiple atomic iterations may live in one PR, but each stage still requires explicit validation and a rollback point.
20. Every PR failure, integration block, or incident caused by a change must be closed by incorporating the resulting learning into this upstream rule set or another durable canonical asset.
21. Every change touching templates, visible copy, i18n, public routes, or admin views must update or create tests for the affected behavior in the same iteration.
22. Before opening a PR, review changes against common security and CodeQL patterns such as logs with input or paths, redirects, auth or session, persistence, and input-derived URLs; sanitize or encapsulate those cases in the same iteration.
23. Marketing automation and social publishing require staged rollout: internal drafts, controlled approval or scheduling, then autopublishing only after production validation.
24. Automated marketing may use only real and verifiable product data; never invent numbers, milestones, or claims.
25. Every integration with external publishing or automation channels must use secrets managed outside the repository, deduplication, channel rate limiting, and a global kill switch before any production scheduler is enabled.
26. Every iteration, batch, or objective must end with an updated handoff in the shared workspace and an open or updated PR when that workspace model is part of the repository operating system.
27. The shared workspace must remain consistent at relevant checkpoints and must be refreshed at least once per hour during active work, including `LATEST.txt`, `HANDOFF.md`, `state.json`, `SESSION-LOG.md`, and `DECISIONS.md` when those assets exist in the repo or external context workspace.
28. Before requesting approval, merge, or production promotion, complete the quality tasks needed to sustain high PR success: local validation, targeted tests, risk preflight, and updated verification notes.
29. Every PR should be configured with auto-merge when the repository workflow supports it, unless an explicit documented blocker prevents it.
30. Create draft PRs only when scope is still unclear or the change intentionally needs staged review; if the scope comes from a complete issue, open the PR ready for review by default. When an issue is already scoped, treat that issue as locked for the active branch; if new work appears, split it into a new issue and a new PR instead of expanding the original branch. For traceability, every implementation PR must reference its source issue, and the issue record should reference the PR once it exists.
31. Every change must finish in a PR at the close of an iteration or objective; do not leave completed work only in a local branch, local handoff, or chat transcript.
32. Every approved and merged PR to `main` must end with operational cleanup: verify the merge, update handoff if used, and remove no-longer-needed source branches.
33. Any local branch already merged into `main` must be deleted during cleanup unless it is still attached to an active worktree or another documented hold condition.
34. PR quality, release gates, and production-promotion validations belong to the SDLC and delivery operation, not to the user-facing product, unless explicitly scoped otherwise.
35. If there is an active PRD or product roadmap, iterations must prioritize visible end-user value and avoid diverting scope toward internal tooling, release evidence, or operational layers that are outside the agreed product.
36. Keep canonical public content understandable without requiring private chat context.
37. The strongest material in this system is disciplined learning under failure, delivery pressure, and verification, not abstract optimism.
38. Never store secrets, credentials, sensitive raw outputs, personal data, or company-specific data in durable knowledge, doctrine, handoffs, commits, issues, PRs, or agent memory. Record lessons generically and impersonally by default.
39. Replace specific people, customers, employers, vendors, companies, environments, and private projects with neutral roles or sanitized descriptors unless the information is already intentionally public and strictly required for repository function.
40. Apply KISS and repository housekeeping after every task. Remove temporary markdown files, scratch scripts, test manifests, generated probes, one-off notes, and other transient artifacts once their function is complete, or consolidate the useful content into canonical documentation, tests, scripts, or runbooks.
41. Act as a librarian before adding durable content. Search existing sections and related files using grep, glob, or file structure review. If related content exists, consolidate into the existing asset rather than creating fragments. Create new entries only when content is genuinely distinct. Preserve clear structure, taxonomy, naming, and cross-references. Avoid semantic duplication, fragmentation, and scattered knowledge.
42. Technical debt is the silent accumulation of deferred decisions that progressively erodes prior work; continuously reduce it by re-evaluating design, structure, dependencies, and libraries whenever new change is introduced.
43. Decision principles should define the what and why before the how: reduce the number of viable options enough to improve clarity, but preserve room for judgment, innovation, and context-specific implementation.
44. Prefer process patterns over rigid step sequences: use steps and stages as reusable guidance, while allowing additional intermediate steps when they improve safety, quality, or coordination.
45. Before handing work for review, validate the full end-user path as a real user would: run the actual build, follow the observable workflow, and confirm the promised behavior is functional in practice. Technical correctness alone is not sufficient for delivery.
46. Canonical public content must stay vendor-neutral and industry-agnostic: prefer role-based, capability-based, and process-based language over tool, model, or company names unless the name is required by verifiable evidence or external citation.
47. If a claim only holds for one vendor, one assistant, one product, or one sector, treat it as an example or evidence note rather than doctrine. Framework rules must transfer across tools, industries, and delivery contexts.

## Multi-Agent Collaboration

When working with multiple AI agents (local and remote) on the same repository:

1. **Start with situational awareness**: Inspect branch, remotes, working tree status, untracked files, local commits, and recent upstream changes before editing.
2. **Fetch before work**: Run `git fetch` first. Pull, merge, or rebase only when the working tree is clean or local changes are safely committed, stashed, or otherwise preserved.
3. **Never overwrite unreviewed local work**: Treat local edits from another human or AI agent as active work until proven otherwise.
4. **Coordinate file-level edits**: If another agent is editing a file, avoid parallel changes unless coordination is explicit.
5. **Use continuous integration discipline**: Keep branches small, integrate frequently, validate changed surfaces, and resolve conflicts promptly.
6. **Communicate state changes**: When completing work, update handoff files (`HANDOFF.md`, `LATEST.txt`, etc.) so other agents know what was done.
7. **Verify before push**: Check `git status`, `git log`, and the diff against the integration branch before pushing.
8. **Pull before push only when safe**: Re-sync immediately before push, but do not run pull or rebase over a dirty or unexplained tree.
9. **Use atomic commits**: Each commit should be self-contained and independently revertible in case of conflicts.
10. **Document agent actions**: Mark which agent made changes in commit messages, PR descriptions, or handoff notes for traceability.
11. **Validate after integration**: Run tests or focused validation after merging or rebasing remote changes to ensure integration did not break behavior.
12. **Avoid force push**: Never use `git push --force` on shared branches unless coordinated with all active humans and agents.
13. **Lock critical operations**: For releases, schema changes, migrations, and production promotions, establish a coordination protocol before execution.
14. **Refresh active context hourly**: During active work, update the repository context workspace at least once per hour and whenever changing agents, stopping work, opening a PR, merging, or changing production state. External context roots such as `E:\codex-context\<repo>` are valid when the repository does not carry its own handoff assets.

**Evidence:** scanales-kb/daily/2026-05-17.md - Multi-agent workflow established
**Principle:** CI/CD practices apply to AI agents just as they do to human developers. Treat each agent as a team member that must sync, preserve local work, validate, and coordinate.

## Privacy and Data Protection

All documented work, evidence, code, commits, PRs, and knowledge base entries must protect sensitive information:

1. **Never commit sensitive data**: No API keys, passwords, tokens, credentials, connection strings, or secrets in any repository, regardless of privacy settings.
2. **Anonymize personal information**: Replace real names, email addresses, phone numbers, and personal identifiers with generic placeholders (e.g., "User A", "user@example.com").
3. **Generalize company data**: Replace specific company names, client names, and proprietary information with generic descriptors (e.g., "Client X", "Enterprise customer", "Financial services company").
4. **Sanitize domain-specific data**: Remove or generalize specific domain names, IP addresses, internal URLs, server names, and infrastructure details.
5. **Abstract financial and business data**: Replace specific revenue numbers, costs, metrics, and business-sensitive data with ranges or generic descriptions (e.g., "high-traffic endpoint", "enterprise-scale deployment").
6. **Protect intellectual property**: Do not include proprietary algorithms, trade secrets, or confidential business logic in public or shared documentation.
7. **Use generic examples**: When documenting solutions, use fictional but realistic examples that convey the pattern without exposing real data.
8. **Redact before commit**: Review all changes with `git diff` before commit to ensure no sensitive data slipped through.
9. **Impersonal documentation**: Write all documentation, commit messages, and evidence in an impersonal, generic style that focuses on the pattern, not the specific instance.
10. **Private repos are not exempt**: Even in private repositories, treat data protection as mandatory. Repository access can change, and habits formed in private repos affect public work.
11. **Audit existing content**: If sensitive data is discovered in committed history, do not force-push to rewrite history. Instead, rotate the exposed credentials immediately and document the incident.
12. **Template-based redaction**: For knowledge base entries, use templates that enforce generic, anonymized documentation from the start.

**Principle:** Documentation captures transferable patterns, not sensitive specifics. Protect people, companies, and systems regardless of repository visibility.

**Evidence:** scanales-kb/daily/2026-05-17.md - Privacy rule established
**Enforcement:** All agents (human and AI) must follow these rules when creating commits, PRs, documentation, and knowledge base entries.

## Stage Model
### Stage 1: Canon
- Convert operational evidence into reusable doctrine.
- Favor evidence indexes, guardrails, and failure-derived case studies.

### Stage 2: Productize the method
- Improve starter-kit adoption paths, rituals, templates, and reusable operating assets.
- Make A-Dev portable beyond the original proving ground.

### Stage 3: Authority and publishability
- Expand the manuscript, proof packaging, and positioning.
- Strengthen external credibility without diluting the framework.

## Operating Flow
1. Inspect branch, remotes, working tree status, local commits, and recent upstream changes before editing.
2. Fetch from the relevant remote before work. Pull, merge, or rebase only when local changes are clean or safely preserved.
3. Sync with `origin/main` or the agreed integration branch and open a dedicated branch with explicit scope.
4. Define the exact scope for the current iteration, stage, or PR.
5. Choose the delivery mode: default one-iteration-one-PR, or explicit batch delivery.
5a. Before adding doctrine to ADEV or evidence to knowledge-base, search for related existing content to avoid duplication and maintain organization. Use grep for keywords, glob for file patterns, and review directory structure. Consolidate into existing assets when possible; create new files only when the content is truly distinct.
6. Implement only the agreed scope for the iteration or current batch stage.
7. For new features, endpoints, or APIs, use the incremental rollout sequence: hidden or unused -> integrated or consumed -> legacy cleanup or deprecation.
8. In batch delivery mode, create a restore point at the start of the batch and maintain checkpoints by stage.
9. Validate the changed surface with the narrowest meaningful build, test, or review step.
10. Commit atomically.
11. Push the branch.
12. Update the shared workspace handoff at least once per hour during active work and before requesting review or changing assistant or session, when that workspace model exists.
13. Create or update the PR with summary, why, scope in/out, validation, production verification plan, rollback plan, and follow-up stage when relevant.
14. Enable auto-merge when checks are ready and approval requirements are satisfied.
15. Monitor PR validation and any required release or production workflows.
16. Before merge or production promotion, run and record validations focused on scope, including targeted UI, i18n, backend, and operational tests when applicable.
17. If a quality gate, readiness, or release-evidence need appears, solve it in the SDLC and delivery layer through scripts, CI, operational docs, runbooks, or shared handoff unless product scope explicitly says otherwise.
18. After approval and merge, verify the deployed behavior in production or the highest relevant target environment.
19. After merge verification, delete local branches already merged into `main` as part of routine cleanup.
20. Update handoff again with merge result, verification result, and cleanup when the repo uses a shared workspace model.
21. Remove or consolidate temporary artifacts created during the iteration before handoff, PR, or merge.
22. Before adding doctrine, evidence, docs, scripts, or runbooks, search the likely local section and neighboring assets for similar content. Prefer extending or linking the canonical asset over creating a duplicate.
23. If production fails, stop new iterations, revert or roll back to a stable version, and open a corrective PR with root cause and prevention.

## Evidence Rules
1. Prefer proof chains of the form: incident -> decision -> guardrail -> reusable asset.
2. When using project-specific source material such as Homedir, extract the transferable principle; do not let project-specific detail replace doctrine.
3. Case studies should show conflict, constraint, decision, evidence, and reusable lesson.
4. Starter-kit assets should tell a practitioner what to do on day 0, in the first week, and before the first production release.
5. Traceability matters: roadmap, doctrine, templates, runbooks, and releases should agree with each other.
6. Multi-agent collaboration evidence should capture branch state, local dirty files, upstream divergence, integration decisions, and validation after sync.
7. Knowledge organization matters: related lessons should live together, use stable names, and link to supporting evidence so future agents can search by topic before adding new content.
7. Before adding new evidence or doctrine, act as librarian: search existing content for similar topics using grep and file structure review. Consolidate into existing entries to prevent fragmentation. New files should only be created when content is genuinely distinct and cannot be merged into an existing canonical asset.

## Operational Lessons Consolidated From Homedir
1. If a rule, template, or automation contradicts the actual repository flow, fix the rule or documentation first before institutionalizing the error.
2. Document and automate only commands, workflows, and assumptions backed by the repository or real operation; if context is missing, mark it explicitly as `TODO`.
3. For scripts, operations, and disaster recovery, syntactic validation is not enough: run real smoke tests in the environment that matters and separate harness failures from functional failures.
4. For performance work, compare apples to apples against a concrete baseline, measure latency, error, and payload, and state uncertainty when fixtures, traces, or production data are missing.
5. Always prioritize the highest-leverage fix demonstrated by evidence; avoid broad optimizations or redesigns without measurement that justifies them.
6. For visual customizations by event or context, apply branding overrides only within that scope and preserve the global product identity outside it.
7. For backup and disaster recovery, validate full restorability of the service; a backup is not sufficient unless the service can actually be reconstructed with tested procedure and artifacts.
8. Keep workstreams clean: branch from a stable base, avoid mixing unrelated changes, and revalidate whenever flags, commands, or tools change.
9. In multilingual pages, tests must pin the expected locale explicitly and validate the corresponding localized content.
10. When the narrative, hierarchy, or copy of a view changes, review sibling tests of the same resource as well so outdated expectations do not survive until CI.
11. When a refactor changes the UI interaction model, update tests in the same iteration to validate the new observable behavior and remove dependencies on legacy markup.
12. If a change introduces new logs about routes, identifiers, or values derived from input or state, record only sanitized labels and not absolute paths or raw values.
13. When shared services already write fields to logs, treat those fields as indirect security sinks and use constant or sanitized identifiers for auxiliary attributes.
14. If workflows or checks emit runtime or deprecation warnings, treat them as operational debt: update supported actions or dependencies before adding more capability.
15. In social marketing, validate drafts and claims internally before linking external channels; higher-risk networks should remain in explicit-approval mode until sustained quality is proven.
16. When an admin or public view derives summaries or statuses from optional codes, re-sanitize the value after each derived assignment and cover the exact production state in tests to avoid null-handling defects.
17. Do not turn PR stabilization, production-promotion steps, or rollout tracking needs into product features unless there is an explicit business requirement.
18. Production releases should not depend on a single container registry; keep at least one secondary registry operational for push and pull.
19. When editing Helm charts or multi-document YAML manifests, verify that document separators (`---`) are present between each resource definition; omitting separators causes parsing failures and can generate user-reported production regressions. Validation must render or parse the final YAML as multiple documents, not only check that the file is syntactically readable.
20. Temporary files are a repository liability after their diagnostic function ends. Scratch markdown, exploratory scripts, temporary manifests, generated checks, and one-off notes must be deleted or consolidated into canonical assets before the work is considered complete.
21. A repository is a library, not a pile of notes. Before adding content, classify it, search for related material, choose the canonical shelf, and avoid creating parallel fragments that future agents cannot reconcile.
22. Self-hosted CI/CD platforms often block webhooks to cluster-internal services by default for security. Bootstrap automation must configure network whitelisting (using API or admin tools) to allow webhooks to event listeners, pipeline triggers, or other cluster-internal routes before activating CI pipelines. Use targeted whitelists (specific cluster domain patterns) rather than blanket "allow all local requests."
23. Platform bootstrap should support modular installation through component disable flags (e.g., `--disable-registry`, `--disable-vault`, `--disable-terminal`). Wire flags into GitOps manifests, treat disabled components as intentionally skipped in validation logic, and document supported flags clearly. This enables minimal installations, component-specific testing, and gradual rollout.
24. Bootstrap validation should inspect live external service state using temporary admin credentials (API tokens, root passwords) rather than relying on indirect health signals. Validate concrete contracts (client IDs, user claims, scopes, roles) and report actual configuration values in bootstrap summary. Vague "service appears healthy" checks miss configuration drift.
25. Language-specific wrapper scripts (mvnw, gradlew, etc.) must have execute permissions set in git. Use `git update-index --chmod=+x <wrapper>` to set the executable bit. Windows developers often miss this since Windows ignores the execute bit, but Linux/Mac builds will fail without it.
26. ConfigMaps containing scripts or multi-line data are YAML formatting hotspots. Validate structure with `kubectl --dry-run`, `helm template --debug`, or equivalent tooling before commit. Review indentation, line endings, and data block formatting carefully. A syntactically valid YAML file can still produce broken ConfigMaps if data blocks are malformed.

## Homedir Overlay
- Homedir is the main proving ground for this doctrine.
- When operating specifically in Homedir, keep the shared handoff workspace current and verify public-site behavior after merge.
- Homedir-specific validation targets such as `/`, `/comunidad`, `/eventos`, and `/proyectos` remain valid as project-level checks, not universal A-Dev requirements.

## Editorial Positioning
1. Homedir is the proving ground. A-Dev is the transferable system.
2. The book, doctrine, and starter kit should not depend on private chat context to make sense.
3. The most valuable content in this repository is disciplined learning under failure, delivery pressure, and verification.
