# Editorial Readiness Backlog

Baseline: [Spanish manuscript developmental audit](18-spanish-manuscript-developmental-audit.md), observed at `main` commit `533bd1b` on 2026-08-16.

## Completed or retired

- The Spanish first edition is the canonical editorial source.
- Portada, preliminary matter, 14 numbered chapters, and three appendices exist.
- Every numbered chapter states an explicit reader outcome.
- EventFlow and Homedir claims are separated by evidence class and linked to dedicated evidence records.
- The historical English manuscript remains source material and is not a competing first-edition canon.
- AI-assisted editing and human accountability are disclosed.
- Unsupported productivity, ROI, team-equivalence, and zero-risk promises are excluded.

## P0 — release-candidate gates

### 1. Whole-manuscript copyedit

- **Scope:** grammar, cadence, punctuation, controlled terminology, repeated rhetoric, and attribution boundaries.
- **Acceptance:** all manifest files are reviewed; meaning-changing edits are traceable; glossary and manuscript agree; no claim changes evidence class silently.

### 2. Spanish publication build

- **Scope:** migrate the PDF workflow from the historical English manifest to `book-es/Book.txt` and establish any required resource paths.
- **Acceptance:** the complete manifest builds reproducibly; the historical source remains preserved; workflow triggers cover Spanish sources; rollback is documented.

### 3. Generated-artifact visual QA

- **Scope:** inspect the candidate PDF page by page and validate headings, tables, lists, code, links, accented characters, page breaks, and blank pages.
- **Acceptance:** findings are corrected or explicitly accepted; artifact identity maps to the reviewed commit; no source-only validation is presented as visual proof.

### 4. Rights and release metadata

- **Scope:** evaluate actual external material, attribution, trademarks, distribution terms, edition metadata, and artifact naming.
- **Acceptance:** the permissions log matches the candidate; unresolved items block release; no ISBN, publisher, date, or endorsement is invented.

## P1 — professional strengthening

- Refresh comparable-title metadata using authoritative publication sources.
- Perform and date an external-link audit.
- Obtain independent editorial and technical review.
- Add only diagrams that improve comprehension and render reliably.
- Define release notes and a correction channel for post-publication learning.

## P2 — evidence-dependent evolution

- Reproduce unresolved Homedir incident narratives at immutable artifacts.
- Collect adoption and outcome observations under a declared method.
- Add a reusable product-knowledge contract if practice demonstrates the need.
- Adapt a future English edition from the completed Spanish canon.

## Working rule

Each item should remain an atomic stage or a sequence of chapter-scoped stages. A release candidate is not a release: build success, visual QA, rights review, and final approval must refer to the same commit and generated artifact.
