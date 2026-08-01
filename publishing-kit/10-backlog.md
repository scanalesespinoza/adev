# Editorial Readiness Backlog

Baseline: [repository and manuscript inventory](00-inventory.md), observed 2026-08-01. This backlog distinguishes verified completed work from active editorial gaps.

## Completed or retired

- **Author bio:** completed in book front matter; future changes are editorial refinement, not missing content.
- **Case-study creation:** completed beyond the original target; eight case-study files are present. Evidence quality and book integration remain separate work.
- **Initial comparable-title matrix:** completed. Metadata completeness remains active.
- **UI consistency and decision-history guidance:** completed in existing framework and starter assets.
- **Starter-kit entry path:** completed through the repository map and starter-kit README.
- **Permissions log initialization:** completed; ongoing maintenance remains required when third-party material is added.
- **Spanish root README requirement:** retired. Canonical public content is English unless a bilingual mirror is explicitly approved.
- **Unsourced adoption targets:** retired as readiness evidence. Targets may exist in a future measurement plan, but must not be reported as observed results.

## P0 — next atomic editorial cycles

### 1. Resolve canonical manuscript ambiguity

- **Scope:** document whether `manuscript/` is archival, then identify substantive divergence from `adevelopment-book/book/`.
- **Acceptance:** one canonical-source statement is visible from both surfaces; a reproducible comparison lists divergent files; no manuscript prose is silently discarded.

### 2. Complete comparable-title evidence

- **Scope:** verify publication year, publisher, identifier or authoritative link, audience, and differentiation for existing entries; add only relevant verified AI-era titles.
- **Acceptance:** every retained title has sourced publication metadata; duplicates are removed; unsupported market claims are absent.

### 3. Define chapter outcomes

- **Scope:** add a concise reader outcome to every manifest chapter introduction.
- **Acceptance:** each numbered chapter in `Book.txt` has one testable outcome statement; tone and terminology match ADEV; appendices remain out of scope.

### 4. Audit evidence links

- **Scope:** map material book and publishing claims to current evidence or label them as proposals.
- **Acceptance:** each audited claim has a working repository link, a named external source, or an explicit “proposal/not yet observed” label.

## P1 — after P0

- **Chapter depth and transitions:** expand thin sections and add intentional cross-references without changing the framework doctrine. Acceptance: each edit states its reader outcome and passes book link/build checks.
- **Measurement plan:** define adoption/readership signals without inventing results. Acceptance: each signal names a source, collection method, owner, cadence, and observation date field.
- **Document checks:** add narrow Markdown/link validation appropriate to publishing changes. Acceptance: the documented local command and CI result agree on a known-good branch.
- **Release inventory ritual:** refresh this snapshot when a release is prepared. Acceptance: commit, tag, manifest count, word count, and generated-artifact page count (when available) are recorded from the same release candidate.

## P2 — optional and evidence-dependent

- Decide whether an explicitly maintained bilingual mirror is worth its translation and drift cost.
- Add diagrams only where they improve comprehension and remain maintainable in the publishing toolchain.
- Add testimonials, quotes, or adoption observations only with permission and traceable provenance.

## Out of scope for this backlog refresh

This cycle does not revise book prose, Hardness doctrine, starter-kit assets, case-study content, or evidence records. Their links appear only to establish the current inventory.
