# Repository and Manuscript Inventory

This inventory is a reproducible snapshot of tracked repository content. It does not claim readership, adoption, downloads, or other external outcomes.

## Snapshot basis

- Observed on: 2026-08-01
- Baseline: `main` at `3ca6da3`
- Latest repository tag: `v1.0.5` (`c0ce645`, 2026-06-09)
- Release interpretation: `main` contains later, untagged work; the latest tag must not be treated as the version of every file on `main`.

## Current content surfaces

| Surface | Canonical location | Verifiable inventory |
| --- | --- | --- |
| ADEV practice | [`ADEV.md`](../ADEV.md), [`framework/`](../framework/) | Doctrine, knowledge map, practices, definitions, and four Hardness documents |
| Book | [`adevelopment-book/book/`](../adevelopment-book/book/), [`Book.txt`](../adevelopment-book/book/Book.txt) | 18 manifest entries; 5,967 words in manifest order |
| Evidence | [`docs/evidence-index.md`](../docs/evidence-index.md), [`docs/case-studies/`](../docs/case-studies/) | Evidence index plus eight case-study files |
| Starter kit | [`starter-kit/`](../starter-kit/) | 11 tracked Markdown assets |
| Publishing kit | [`publishing-kit/`](./) | 17 tracked Markdown assets, including this inventory, readiness rubric, and backlog |
| Historical manuscript | [`manuscript/`](../manuscript/) | 19 tracked Markdown files; not the book build source |

The repository contains **101 tracked Markdown files**. Untracked local files are excluded.

## Book manifest

The build manifest currently names:

1. Title page, front matter, and index
2. Chapters 01–08
3. Chapter 11: EvenFlow case study
4. Chapters 09–10
5. Appendices A–D

The filename order is not purely numeric because Chapter 11 is intentionally positioned before Chapters 09 and 10 by [`Book.txt`](../adevelopment-book/book/Book.txt). Page count is not reported here because no current generated PDF was measured as part of this snapshot.

## Reproduce the counts

Run these commands from the repository root in PowerShell:

```powershell
$tracked = git ls-files '*.md'
$tracked.Count

$manifest = Get-Content 'adevelopment-book/book/Book.txt' | Where-Object { $_.Trim() }
$bookFiles = $manifest | ForEach-Object { "adevelopment-book/book/$_.md" }
($bookFiles | ForEach-Object { Get-Content -LiteralPath $_ } | Measure-Object -Word).Words

(Get-ChildItem 'docs/case-studies' -File -Filter '*.md' |
  Where-Object Name -ne 'README.md').Count

(git ls-files 'starter-kit/*.md').Count
(git ls-files 'framework/hardness/*.md').Count
```

## Editorial implications

- The book source is the manifest-driven `adevelopment-book/book/` surface; `manuscript/` is a historical snapshot and should not be counted as additional current chapters.
- Repository tags and the current `main` snapshot describe different points in time and must be reported separately.
- External proof remains unmeasured. Any future adoption or audience claim requires a named data source and observation date.
- Current readiness work is tracked in the [publisher readiness rubric](01-readiness-rubric.md) and [editorial backlog](10-backlog.md).
