# Spanish Manuscript Developmental Audit

## Decision

The Spanish first-edition manuscript is **developmentally complete and ready for copyediting**, but it is not yet release-ready. All planned chapters and appendices exist, the narrative sequence is coherent, and the reader transformation promised by the editorial charter is represented in the manuscript. Remaining work belongs to copyediting, publication mechanics, rights review, and release validation rather than chapter drafting.

Observed baseline: `main` at `533bd1b` on 2026-08-16.

## Reproducible inventory

| Surface | Observed result |
| --- | ---: |
| Preliminary files | 2 |
| Numbered chapters | 14 |
| Appendices | 3 |
| Manifest entries | 19 |
| Main-matter words | 26,660 |
| Appendix words | 5,561 |
| Total manuscript words | 32,221 |
| Numbered chapters with an explicit outcome | 14 of 14 |
| Missing files referenced by `Book.txt` | 0 |
| Broken relative Markdown links | 0 |
| Exact repeated prose blocks of 120+ characters | 0 |

Word counts split text on whitespace and describe the Markdown source, not a typeset page count. They are inventory, not a quality or market claim.

## Developmental assessment

### Reader promise and audience — pass

The preliminary matter names an experienced software practitioner as the primary reader and states a bounded transformation: establish a baseline, express an atomic behavior, direct an agent within plans, verify the change, and preserve the learning. It explicitly excludes universal productivity, savings, and correctness promises.

### Narrative architecture — pass

The sequence advances through five intentional movements:

1. human responsibility and software as habitat;
2. baseline, atomicity, durable context, and verification;
3. autonomy and team coordination;
4. EventFlow and Homedir as bounded evidence;
5. adoption, objections, future, and first action.

The final chapter returns to the action promised in the opening: use a real, low-risk repository and complete one verified cycle. This closes the main narrative rather than introducing a new doctrine at the end.

### Chapter utility — pass with copyedit follow-up

Every numbered chapter ends with a reader outcome and a bridge to a technical asset or evidence shelf. Most chapters also contain a concrete practice. Their lengths are sufficiently balanced for this concise practice-book format; no isolated chapter is acting as an undeveloped placeholder.

A final copyedit should still reduce repeated connective phrases, review sentence length, normalize punctuation around English technical terms, and verify that first-person experience remains clearly separated from general guidance.

### Terminology — pass with controlled-language follow-up

The manuscript consistently uses `ADEV` for the practice and `ADEV.md` for a repository entry point. The glossary establishes preferred meanings for baseline, inner loop, outer loop, agent, atomic iteration, evidence, and related terms.

The deliberate mixture of Spanish prose and established English delivery terms is editorially justified, but final copyediting should compare every first use against the glossary and avoid alternating between an English term and a Spanish near-synonym when they carry different meanings.

### Evidence discipline — pass with known open claims

EventFlow separates reproduced commit activity, reported line counts, and unsupported economic estimates. Homedir separates public artifacts from author narrative and unresolved provenance. The evidence appendix explains these classes and prevents a case study from becoming universal causality.

Open evidence gaps remain visible rather than blocking the whole manuscript. They include the exact artifacts for some Homedir incidents, independent adoption evidence, and controlled productivity or return comparisons. Those gaps must not be silently upgraded into claims during marketing or copyediting.

### Technical-asset duality — pass

Appendix A maps the Spanish argument to canonical English framework and starter-kit sources without duplicating their full contents. The model is understandable: the book explains the practice; repository assets operationalize it; observed failures may improve both at the appropriate level.

One previously identified product-knowledge contract remains an optional technical enhancement. Its absence does not create a missing manuscript chapter, but it may improve the starter path in a later asset-scoped iteration.

### Rights and disclosure — partial

The title page and preliminary matter disclose AI-assisted editing and retain human accountability. The permissions log exists. Final release still requires confirmation of external-link treatment, trademarks, any future visual assets, contributor permissions, and the exact distribution terms of the generated edition.

### Publication system — blocked pending migration

The current PDF and documentation-site workflows still consume the historical English `adevelopment-book/book/` surface. The Spanish manifest is complete, but no generated Spanish PDF or EPUB has been built and visually inspected. Migration must preserve the historical source while making the Spanish edition the actual release input.

## Findings by priority

### P0 — required before a release candidate

1. **Copyedit the full manuscript:** grammar, cadence, punctuation, glossary alignment, repeated rhetorical structures, and attribution boundaries.
2. **Migrate and validate the build:** use `book-es/Book.txt`, preserve resource resolution, generate a PDF, and inspect page breaks, headings, code, tables, links, and accented characters.
3. **Complete rights review:** resolve the permissions checklist for all material actually present in the release candidate.
4. **Freeze release metadata:** decide edition identifier, publication date, artifact names, and distribution channel only when the candidate exists.

### P1 — strengthens professional publication

1. Verify and refresh comparable-title metadata using authoritative sources.
2. Perform a fresh external-link check and record the date.
3. Add diagrams only where they materially improve a multi-step relationship and can survive PDF rendering.
4. Obtain independent technical/editorial review and classify feedback before changing doctrine.

### P2 — evidence-dependent future work

1. Reproduce selected Homedir incidents at exact immutable artifacts.
2. Collect adoption and outcome observations with a declared method.
3. Adapt an English edition from the completed Spanish canon.
4. Extend the starter kit with a reusable product-knowledge contract if field use demonstrates the need.

## Release boundary

This audit does not certify factual perfection, security, market fit, legal sufficiency, or production readiness. It establishes a narrower conclusion: the Spanish manuscript has enough complete, connected prose to leave developmental drafting and enter copyediting and production validation.

## Copyedit progress

| Block | Files | Status |
| --- | --- | --- |
| Preliminary matter and Part I | `00-preliminares.md`, Chapters 1–3 | Complete; grammar and clarity pass without doctrine changes |
| Part II | Chapters 4–7 | Complete; grammar and clarity pass without doctrine changes |
| Part III | Chapters 8–9 | Complete; grammar and clarity pass without doctrine changes |
| Part IV | Chapters 10–11 | Pending |
| Part V | Chapters 12–14 | Pending |
| Appendices | A–C | Pending |

“Complete” records an editorial pass, not an assertion that no future correction can be found. Later whole-book review must still evaluate rhythm and terminology across block boundaries.

## Reproduction commands

Run from the repository root in PowerShell:

```powershell
$manifest = Get-Content 'adevelopment-book/book-es/Book.txt' | Where-Object { $_.Trim() }
$manifest.Count
$manifest | ForEach-Object {
  $path = "adevelopment-book/book-es/$_.md"
  if (-not (Test-Path -LiteralPath $path)) { $path }
}

$files = $manifest | ForEach-Object { Get-Item "adevelopment-book/book-es/$_.md" }
($files | ForEach-Object {
  ((Get-Content -Raw $_.FullName) -split '\s+' | Where-Object { $_ }).Count
} | Measure-Object -Sum).Sum

Get-ChildItem 'adevelopment-book/book-es' -Filter '*.md' |
  Where-Object BaseName -Match '^(0[1-9]|1[0-4])-' |
  Select-String '^## Resultado del capítulo$'
```
