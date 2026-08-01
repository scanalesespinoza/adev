# Canonical Book and Historical Snapshot: Consolidation Matrix

## Purpose and boundary

This is a reproducible classification of the declared build source, [`adevelopment-book/book/`](../adevelopment-book/book/), against the historical [`manuscript/`](../manuscript/) snapshot. It records no consolidation decision and changes neither tree.

The classifications compare files by relative path and SHA-256. `merge-needed` means contents differ and need an editorial decision before either version is altered; it does not mean an automatic merge is safe.

Operational claims mentioned in divergent prose have not been independently verified by this matrix. Any later retained Homedir-derived claim must cite a direct artifact in the canonical [Homedir repository](https://github.com/scanalesespinoza/homedir), following [`ADEV.md`](../ADEV.md#evidence-rules).

## Complete file matrix

| Relative path | Classification | Proposed next decision |
| --- | --- | --- |
| `00-front-matter.md` | identical | Keep canonical; no content action. |
| `00-title-page.md` | identical | Keep canonical; no content action. |
| `01-adev-manifesto.md` | merge-needed | Canon contains a personal debt-crisis narrative absent from snapshot; retain canon pending an editorial/privacy review. |
| `02-solo-architect.md` | merge-needed | Canon changes flag guidance to default OFF and adds an unauthorized-library example; retain canon, verify example provenance before publication. |
| `03-atomic-iterations.md` | merge-needed | Canon adds a broken-notification anecdote; retain canon only after direct evidence or an explicit illustrative label. |
| `04-baseline-rules-of-engagement.md` | merge-needed | Canon adds a duplicate UI-consistency bullet and a HomeDir-specific failure story; deduplicate and require a direct Homedir artifact before retaining the story. |
| `05-traceability-digital-thread.md` | merge-needed | Canon adds a decision-history example with a commit identifier and numbers; verify source or relabel as illustrative. |
| `06-quality-density-metrics.md` | merge-needed | Canon adds time-sensitive “2026” positioning; retain only after an editorial freshness review. |
| `07-weekend-marathon-playbook.md` | merge-needed | Canon expands the Plan A rationale and duplicates its heading; retain rationale, correct duplicate heading in a later prose-edit cycle. |
| `08-homedir-vision.md` | merge-needed | Canon adds Quest Board metrics and a reference case; require direct Homedir artifacts for the case and each metric. |
| `09-faq-objections.md` | merge-needed | Canon changes role wording and adds burnout claims; retain only after voice and support review. |
| `10-closing.md` | merge-needed | Canon adds a versioned multi-agent vision; treat as roadmap positioning, not observed evidence. |
| `11-evenflow-case-study.md` | identical | Keep canonical; no content action. |
| `appendices/A-templates.md` | identical | Keep canonical; no content action. |
| `appendices/B-glossary.md` | identical | Keep canonical; no content action. |
| `appendices/C-checklists.md` | identical | Keep canonical; no content action. |
| `appendices/D-further-reading.md` | identical | Keep canonical; no content action. |
| `Book.txt` | identical | Keep the canonical manifest order. |
| `INDEX.md` | merge-needed | Canon adds Further Reading and updates the release URL; retain canon, then review style-only punctuation separately. |
| `README.md` | snapshot-only | Preserve as the historical-snapshot warning; link this matrix from it. |
| `resources/images/the-architect-liberation.png` | snapshot-only | Preserve without moving. It is a 2,306,977-byte PNG; decide later whether it has a source, license, and canonical placement. |
| `title.txt` | identical | Keep canonical; no content action. |

## Classification summary

| Classification | Count |
| --- | ---: |
| canon-only | 0 |
| snapshot-only | 2 |
| identical | 9 |
| merge-needed | 11 |

## Consolidation sequence (future cycle)

1. Review each `merge-needed` file against the canonical book's editorial intent and the evidence rule.
2. Resolve factual or operational claims first; add a direct Homedir artifact link or mark the material illustrative, proposed, or unsupported.
3. Make content decisions in small, chapter-scoped PRs, leaving the historical snapshot intact until all decisions are recorded.
4. Decide the final archival or redirect treatment for `manuscript/` only after the matrix has no unresolved rows.

## Reproduce the matrix

Run from the repository root in PowerShell:

```powershell
$canonRoot = 'adevelopment-book/book'; $snapshotRoot = 'manuscript'
$canon = Get-ChildItem -Recurse -File $canonRoot | ForEach-Object {
  $_.FullName.Substring((Resolve-Path $canonRoot).Path.Length + 1).Replace('\','/')
}
$snapshot = Get-ChildItem -Recurse -File $snapshotRoot | ForEach-Object {
  $_.FullName.Substring((Resolve-Path $snapshotRoot).Path.Length + 1).Replace('\','/')
}
@($canon + $snapshot | Sort-Object -Unique) | ForEach-Object {
  $relative = $_; $canonical = Join-Path $canonRoot $relative; $historical = Join-Path $snapshotRoot $relative
  if (-not (Test-Path -LiteralPath $canonical)) { "snapshot-only`t$relative" }
  elseif (-not (Test-Path -LiteralPath $historical)) { "canon-only`t$relative" }
  elseif ((Get-FileHash -Algorithm SHA256 -LiteralPath $canonical).Hash -eq (Get-FileHash -Algorithm SHA256 -LiteralPath $historical).Hash) { "identical`t$relative" }
  else { "merge-needed`t$relative" }
}
```
