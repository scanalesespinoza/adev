# A-Dev Maturity Assessment and Homedir-Derived Roadmap

Date: 2026-03-12

## Scope and inputs
- Repository state in `README.md`, `QUALITY.md`, `docs/`, `publishing-kit/`, `starter-kit/`, and `adevelopment-book/`.
- Local Codex CLI history related to Homedir, primarily:
  - `019acd2f-3b33-77a2-8f46-f1a7e0406b28` (late 2025 operational and deployment work)
  - `019b93b2-2ac1-7e61-b2d8-b66a03d685ce` (Jan-Mar 2026 product evolution, UX, multilingual, performance, CI)
  - `019b9489-d492-7603-87c6-614db4fbae67` (A-Dev book/productization work using Homedir as proof source)
- Existing distilled artifacts:
  - `docs/homedir-derived-guardrails.md`
  - `docs/case-studies/*.md`
  - `publishing-kit/01-readiness-rubric.md`
  - `publishing-kit/09-manuscript-improvement-plan.md`
  - `publishing-kit/10-backlog.md`

## Executive assessment
The study is real, differentiated, and already stronger than a manifesto. It now has three hard assets that many AI-development books do not have:
- operational evidence from a live product,
- a starter kit that translates principles into practice,
- repeated failure-to-guardrail learning loops.

The limiting factor is no longer lack of ideas. It is lack of consolidation.

Homedir has generated enough operational history to validate A-Dev as a serious practice, but the book and collateral still lag behind the depth of that history. The repository already captures the language of the framework well. What it does not yet capture consistently is the full progression from:

incident -> decision -> guardrail -> repeatable template -> measurable outcome.

Current editorial verdict:
- **Practice maturity:** strong emerging system.
- **Book maturity:** credible beta / early v1 foundation.
- **Teaching maturity:** medium; useful for practitioners, still too implicit for broader adoption.
- **Market maturity:** promising, not yet fully packaged.

## Maturity score (0-5)
| Dimension | Score | Why it matters now |
| --- | --- | --- |
| Framework clarity | 4.5 | Core language is coherent: baseline, 50/50, digital thread, simple machines, live alpha. |
| Operational proof | 5.0 | Homedir conversations show repeated use in deployment, UX, CI, backup/DR, performance, multilingual, and product capability work. |
| Baseline extraction | 4.0 | `docs/homedir-derived-guardrails.md` is a meaningful distillation, but still selective rather than comprehensive. |
| Editorial depth | 3.0 | Manuscript remains short and still under-expresses the depth of the operating history. |
| Case-study quality | 3.5 | Existing case studies are directionally right, but still summary-heavy and light on conflict/decision/outcome detail. |
| Reusability for new teams | 3.5 | Starter kit exists, but the bridge from proof project to generic adoption can be stronger. |
| Metrics and evidence packaging | 2.5 | Evidence exists in conversations, commits, releases, and production stories, but it is not yet packaged into a compelling evidence system. |
| Publisher/readiness packaging | 3.5 | Proposal, rubric, backlog, and releases exist; stronger comps, authority signals, and quantified outcomes are still needed. |

## What the local Homedir conversations prove
The local Codex CLI record shows that Homedir was not used as a toy demo. It was used as a proving ground across the full delivery chain.

Recurring themes in the local history:
- release and production operations,
- CI/CD and failing-check remediation,
- UI/UX refinement in public and admin surfaces,
- multilingual consistency,
- performance and rate-limiting analysis,
- backup, restore, and disaster-recovery concerns,
- progressive product capability expansion: Community, CFP, Volunteers, Insights, Staff/Spaces, Speaker lifecycle.

This matters because it validates the central A-Dev claim: disciplined orchestration can sustain delivery beyond code generation into verification, release, rollback, and iteration under pressure.

## Current strengths
### 1. The framework has a real proving ground
Homedir gives A-Dev legitimacy. The project history demonstrates that the method was exercised against:
- real breakages,
- production behavior,
- deployment friction,
- UX inconsistencies,
- multilingual drift,
- scaling and rate-limit problems,
- evolving business requirements.

### 2. The repo already contains the right editorial architecture
The project is no longer just a manuscript folder. It has:
- book chapters,
- docs site,
- case studies,
- starter kit,
- publishing kit,
- release flow.

That structure is a strong foundation for maturing from "ideas repo" to "operating system + book + evidence kit".

### 3. Guardrails are starting to emerge from reality
The strongest recent improvement is the move from abstract principle to repo-grounded guardrail. `docs/homedir-derived-guardrails.md` is one of the best signals in the repo because it turns repeated operational pain into reusable discipline.

### 4. A-Dev already has a distinctive angle
The combination of:
- solo architect positioning,
- anti-coordination-tax framing,
- evidence over simulation,
- living baseline as operational code,
is differentiated enough to stand out if the proof is packaged better.

## Current weaknesses
### 1. Too much proof still lives in chat history, not in canonical assets
The conversations contain a much richer body of evidence than the manuscript and case studies currently expose. Important lessons are still buried in execution transcripts.

### 2. Homedir still overwhelms the teaching layer
The product is useful as proof, but the book risks becoming too dependent on one project's details. The best editorial direction is not "remove Homedir", but "convert Homedir into a structured evidence source".

### 3. The evidence chain is not yet explicit enough
A-Dev talks about traceability, but the repository still needs clearer public artifacts that show:
- the decision,
- the baseline update,
- the validation method,
- the observed outcome,
- the reusable takeaway.

### 4. Editorial density remains below the maturity of the practice
The practice looks more mature than the book. That gap creates strategic risk: readers may underestimate the framework because the operational richness is not yet fully narrated.

## Strategic diagnosis
The study has passed the "is there something real here?" stage.

It is now in the harder transition:

from validated practice
to transferable doctrine.

That transition requires converting operational repetition into a compact, teachable, and defensible body of knowledge.

## Maturity map
### Stage 1: Consolidate the canon (next 30 days)
Goal: make the current body of work internally coherent.

Priority moves:
1. Promote the most important Homedir lessons into first-class canonical assets.
   - Add 3-5 new "failure -> guardrail" writeups.
   - Cover at least: CI/CD failure recovery, multilingual drift, performance/rate-limiting, DR/backup validation, admin/public UX divergence.
2. Strengthen case studies from summaries into decision narratives.
   - Each case should include: context, constraint, failed assumption, intervention, evidence, reusable rule.
3. Create a visible evidence index.
   - One document that maps A-Dev principles to concrete Homedir proof points and repo locations.
4. Tighten the book's chapter intros with explicit outcome sentences and richer narrative links.

Exit criteria:
- A reader can see how A-Dev behaves under failure, not just under ideal design.
- The repo has a canonical path from principle to proof.

### Stage 2: Productize the method (30-60 days)
Goal: make A-Dev easier to adopt without requiring deep prior context.

Priority moves:
1. Expand the starter kit from templates into guided adoption.
   - Include "day 0", "first week", and "first production release" paths.
2. Add a maturity model for adopters.
   - Example levels: assisted experimentation, disciplined iteration, production-ready orchestration, evidence-driven scaling.
3. Package common checks as operational rituals.
   - Multilingual sweep.
   - CI failing-check triage.
   - DR validation.
   - performance evidence before tuning.
4. Add one small end-to-end example repo or simulated sample using only the starter kit.

Exit criteria:
- A new practitioner can start with A-Dev without needing Homedir-specific lore.
- The method feels portable, not project-bound.

### Stage 3: Deepen authority and publishability (60-90 days)
Goal: close the gap between a strong framework repo and a publishable authority product.

Priority moves:
1. Expand the manuscript beyond primer length.
   - The current manuscript is still too short for the amount of authority the practice has earned.
2. Convert operational proof into stronger public evidence.
   - Before/after snapshots, release trail, selected metrics, production incidents turned into rules.
3. Strengthen market packaging.
   - Better comp-title metadata.
   - More explicit audience pains.
   - Clear promise by reader segment.
4. Add external proof where possible.
   - Testimonials, downloads, usage stories, talks, workshops, or adoption examples.

Exit criteria:
- The book reads like an authority text, not only a sharp internal doctrine.
- The proposal can defend both originality and practical relevance.

## Recommended canonical assets to add next
1. `docs/evidence-index.md`
   - Principle -> Homedir proof -> repo/doc source -> reusable takeaway.
2. `docs/case-studies/ci-cd-recovery.md`
   - Failing check / production path / repair loop / guardrail extracted.
3. `docs/case-studies/multilingual-drift.md`
   - Hardcoded text, edge surfaces, admin views, and the resulting baseline rule.
4. `docs/case-studies/performance-evidence.md`
   - Rate limit problem, false leads avoided, evidence-based prioritization.
5. `docs/case-studies/disaster-recovery.md`
   - Backup, restore compatibility, retention, and why smoke tests matter.
6. `starter-kit/OPERATING_RITUALS.md`
   - Short reproducible rituals derived from the Homedir history.

## Editorial positioning recommendation
Use Homedir in the book as:
- proof of repeated practice,
- source of failure-derived rules,
- evidence that A-Dev survives contact with reality.

Do not use Homedir as:
- the center of every explanation,
- a prerequisite for understanding the framework,
- a substitute for generalized teaching material.

Best framing:
"Homedir is the proving ground. A-Dev is the transferable system."

## Final verdict
A-Dev is no longer an idea looking for proof. It is a working discipline looking for tighter codification.

The next maturation step is not more invention. It is editorial compression of operational truth:
- fewer implicit lessons,
- more canonical artifacts,
- stronger evidence packaging,
- clearer transfer from one proving ground to many future projects.

If the next iteration focuses on canon, evidence index, and richer failure-derived case studies, the project can move from "strong emerging framework" to "serious reference work with reusable operating practice".
