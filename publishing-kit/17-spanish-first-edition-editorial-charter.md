# Spanish First-Edition Editorial Charter

## Decision

The first edition of *ADEV: La práctica de AI Agentic Development* will be authored canonically in Spanish. This is an explicitly required language edition under the repository language policy. The normative framework and reusable technical assets remain canonical in English. A future English edition will be an editorial adaptation of the completed Spanish manuscript, not a mechanical translation of the historical English draft.

## Reader and transformation

### Primary reader

An experienced software practitioner, architect, technical lead, maintainer, or delivery owner who is already experimenting with AI agents but lacks a consistent system for governing their work.

### Starting condition

- Prompts and practices vary by person.
- Generated changes create review burden or rework.
- Product and architecture context is incomplete or scattered.
- Quality is treated as a downstream check.
- Agent autonomy is granted or restricted without a shared risk model.
- Delivery evidence ends at generated code or a passing local test.

### Promised transformation

After reading and applying the starter path, the reader can establish a minimal shared baseline, express one product behavior as an atomic issue, direct an agent within explicit plans, validate through inner and outer loops, verify the delivered behavior, and convert failures into durable improvements.

### Honest boundary

ADEV does not guarantee speed, correctness, cost reduction, autonomy, or business impact. It provides a practice intended to increase the probability of useful, verifiable, and responsible delivery. Outcomes depend on practitioner judgment, system maturity, risk, constraints, and evidence.

## Editorial thesis

> ADEV turns probabilistic execution into professional software delivery through human responsibility, explicit context, bounded autonomy, continuous verification, and evidence.

Supporting theses:

1. AI is a human-made tool; operational autonomy does not transfer accountability.
2. Software is a habitat, so product intent begins with the people who will live in it.
3. Agents may execute and propose; humans retain intent, judgment, authority, and consequences.
4. A baseline is useful only when it changes future behavior and remains small enough to apply.
5. The prompt should shrink as repeated expectations become durable repository context.
6. Atomicity reduces the context, interaction surface, and recovery cost under uncertainty.
7. Creation and verification are one movement; 50/50 is a symbol of attention, not a timekeeping formula.
8. A change is not delivered until its promised behavior is verified in the relevant environment.
9. Failures should improve code, tests, principles, checks, or specialized knowledge according to their scope.
10. Homedir and EventFlow provide evidence for specific observations, not universal causality.

## Voice and style

- Spanish should be clear, professional, and recognizably Latin American without relying on local slang.
- Preserve the author's first-person voice for experience, doubt, failure, and judgment.
- Use second person sparingly for exercises and direct calls to action.
- Prefer concrete actions, conflict, and evidence over heroic or promotional language.
- Metaphors may open understanding but must not substitute for technical explanation.
- Define English industry terms on first use when no stable Spanish equivalent exists.
- Keep `ADEV`, `ADEV.md`, `inner loop`, `outer loop`, `issue`, and `pull request` consistent throughout the edition.

## Reusable narrative images

| Image | Editorial use | Boundary |
| --- | --- | --- |
| Software as habitat | Explain human-centered product and architecture | Follow with observable product behavior, not only emotion |
| The kitchen that knocks down the house | Show locally correct agent work violating global architecture | Do not imply agents inherently ignore architecture |
| Walking with eyes open | Explain continuous creation and verification | Do not present 50/50 as an exact hourly split |
| The tool and its user | Anchor human responsibility | Avoid reducing complex sociotechnical accountability to a single individual in organizations |
| The branch as a restore point | Explain bounded risk and recoverability | Branches do not replace tests, backups, or production rollback |

## Interview-to-chapter map

| Interview material | Canonical destination |
| --- | --- |
| Origin, tools across human history, responsibility | Chapters 1 and 13 |
| Software as habitat; architect and executor | Chapters 2 and 3 |
| Failure-to-rule loop; `ADEV.md` as index | Chapter 4 |
| Two-to-five-minute narration heuristic; maturity-adjusted size | Chapter 5 |
| Prompt repetition becomes durable context | Chapter 6 |
| Observable user action; 50/50; inner/outer symmetry | Chapter 7 |
| Scoped permissions; malicious intent; human accountability | Chapter 8 |
| Shared instructions, trunk-based delivery, multiple reviewers | Chapter 9 |
| EventFlow metrics and whitepaper limitations | Chapter 10 |
| i18n drift, long branch, operational baseline | Chapter 11 |
| Day zero, maturity, periodic baseline curation | Chapter 12 |
| Skill shifts, education, social vision, limits | Chapter 13 |
| First real repository and first verified change | Chapter 14 |

## Existing-content disposition

| Existing material | Decision | Reason |
| --- | --- | --- |
| Historical English chapter order | Rewrite into the Spanish narrative architecture | The doctrine matured beyond the short, topic-by-topic draft |
| “Architect's liberation” | Retain as an arc and possible subtitle language | Strong emotional frame, but narrower than the full practice |
| Ghost team | Retain only as a labeled metaphor for role perspectives | Avoid anthropomorphism and implied human replacement |
| Living baseline | Retain and deepen | Central operational mechanism supported by repository assets |
| Atomic iterations | Retain and deepen | Central risk and learning mechanism |
| 50/50 quality rule | Rewrite | Interviews define it as continuous attention, not an exact split |
| Digital thread | Retain and connect to delivery verification | Must extend beyond commit/tests to the delivered behavior |
| Quality density | Keep as a research question until measurable | Current definitions do not support a stable metric |
| Weekend marathon | Reframe as an optional exercise | A weekend is not a universal delivery promise |
| Live Alpha | Reframe as controlled progressive delivery | Feature flags reduce risk but do not create zero risk or remove all need for staging |
| Simple Machines | Retain as contextual frugality | Avoid universal technology blacklists |
| EventFlow productivity and cost claims | Verify or remove | Repository activity exists; counterfactual ROI and team equivalence are estimated |
| Homedir proof claims | Retain only at artifact-level evidence | Repository artifacts do not independently prove adoption or business outcomes |
| Company of companies | Move to explicitly labeled future vision | Not an observed result |
| Absolute claims: 100% fidelity, no debt, no repeated error, zero risk | Remove | Professionally indefensible and contradicted by the practice's learning model |

## Claim and evidence register

| Claim area | Current status | Requirement before publication |
| --- | --- | --- |
| EventFlow: 696 commits and 23,308 net lines in the stated window | Secondary source plus public repository | Reproduce from exact boundary commits and record the command |
| EventFlow completed in about six weeks by one primary practitioner | Author account with repository timeline | Define start/end, initial state, delivered scope, and contributor method |
| EventFlow cost savings, ROI, or team equivalence | Estimate only | Exclude unless a valid comparison and measured inputs become available |
| Homedir issue-to-production cycle often completes in minutes | Author estimate | Sample traceable issues with timestamps and production verification |
| ADEV reduced repeated errors or rework | Author longitudinal perception | Define error categories and compare reproducible periods if used quantitatively |
| i18n environment drift | Case narrative with related repository evidence shelf | Link exact failing/fixing artifacts and locale-pinned tests |
| Long-lived branch discarded after intertwined features | Author narrative | Resolve two-day/one-week chronology; label illustrative if no durable artifact exists |
| Approximately 17 PR checks | Mutable repository observation | Capture at a dated commit and classify what risk each check covers |
| Wider team adoption | Limited proving-ground evidence | Treat as intended applicability until independent adoption evidence exists |

## Chapter-to-asset duality

| Book chapter | Technical counterpart |
| --- | --- |
| 2. Software as habitat | Product knowledge contract to be added in a later starter-kit iteration |
| 3. Architect and agent | `framework/hardness/03-human-expectations-contract.md`, `04-action-risk-authority-model.md` |
| 4. Living baseline | `ADEV.md`, `starter-kit/BASELINE_template.json`, `framework/definitions/README.md` |
| 5. Atomic iterations | `starter-kit/examples/minimal-adev-loop/`, `starter-kit/OPERATING_RITUALS.md` |
| 6. Prompt to context | Compatibility and skill contracts under `framework/hardness/` |
| 7. Create, verify, demonstrate | `starter-kit/QUALITY_CYCLE_checklist.md`, `FIRST_RELEASE.md` |
| 8. Autonomy and security | `framework/hardness/01-policy-and-precedence.md`, `04-action-risk-authority-model.md`, policy schema |
| 9. Teams and agents | Repository collaboration rules in `ADEV.md` and operating rituals |
| 10. EventFlow | Public EventFlow artifacts; reproducibility asset still required |
| 11. Homedir | `docs/evidence-index.md`, `docs/case-studies/` |
| 12. Adoption | `starter-kit/DAY_0.md`, `FIRST_WEEK.md`, `FIRST_RELEASE.md` |
| 13. Limits and future | Evidence rules and future research backlog |
| Appendix A | Stable map to framework and starter-kit sources instead of duplicated templates |
| Appendix C | `docs/evidence-index.md` and evidence method |

## Deliberate scope of this consolidation iteration

### In scope

- Establish the Spanish first edition as the editorial source of truth.
- Define the reader, promise, thesis, voice, chapter architecture, content disposition, evidence gaps, and technical-asset mapping.
- Preserve the historical English manuscript unchanged as source material.

### Out of scope

- Full chapter prose.
- Translation of the English manuscript.
- PDF workflow migration.
- New metrics or claims.
- Changes to normative framework rules or starter-kit behavior.
- Deletion or archival of historical sources.

## Next chapter-scoped iteration

Draft `01-manifiesto-adev.md` from the interview material. It should establish the tool perspective, human responsibility, software as habitat, and the practical promise without importing unsupported speed, ROI, zero-risk, or human-replacement claims.
