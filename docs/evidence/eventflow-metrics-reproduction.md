# EventFlow Metric Reproduction Record

## Purpose

This record separates Git observations reproduced for the Spanish first-edition case study from figures reported or estimated in the September 2025 EventFlow whitepaper.

## Source and boundary

- Public repository: <https://github.com/scanalesespinoza/eventflow>
- First reachable commit: `c6ea3be4ce41143805d85a7c21f78c06efcaac90`
- Whitepaper boundary commit: `b9c275dff3254f2512b6337a3ddb70621cd7a2e2`
- Boundary author timestamp: `2025-09-09T14:50:34-03:00`
- Audit date: 2026-08-15

The boundary commit is essential. The public main branch continued after the whitepaper window and showed 698 reachable commits at the audit date.

## Reproduced observations

Run from a full or partial clone with access to commit metadata:

```powershell
git rev-list --count b9c275dff3254f2512b6337a3ddb70621cd7a2e2
git shortlog -sne b9c275dff3254f2512b6337a3ddb70621cd7a2e2
git rev-list --count --author="dependabot\[bot\]" b9c275dff3254f2512b6337a3ddb70621cd7a2e2
git rev-list --count --author="Sergio Canales" b9c275dff3254f2512b6337a3ddb70621cd7a2e2
git log b9c275dff3254f2512b6337a3ddb70621cd7a2e2 --format="%ad" --date=short |
  Sort-Object -Unique |
  Measure-Object
```

Observed results:

| Observation | Result |
| --- | ---: |
| Reachable commits | 696 |
| Commits attributed to the primary author | 680 |
| Automated dependency commits | 16 |
| Distinct dates with commits | 42 |

`git shortlog` separates the primary author into 679 commits under one email spelling and one commit under a typographical variant. The grouped total is therefore 680. The record does not retain either email address because it is unnecessary for the transferable finding.

Repository tags place `v1.0.0` on 2025-07-20 and `v2.2.0` on 2025-08-26 within the stated window. The first reachable commit has an author timestamp of 2025-07-15.

## Reported but not reproduced in this audit

The whitepaper reports:

- 37,895 lines added;
- 14,587 lines removed;
- 23,308 net lines.

Reproducing aggregate numstat requires all relevant historical blobs. The partial-clone audit did not complete that download, so these figures remain reported observations rather than independently reproduced results in the Spanish manuscript.

## Estimates excluded from doctrine

The following whitepaper figures depend on assumptions or comparisons that Git history cannot validate:

- active human hours and daily effort;
- traditional-team size and effort;
- cost per commit or line;
- 83% cost savings;
- 500% return on investment;
- 53x productivity per developer.

They must not be cited as measured ADEV outcomes without a defined counterfactual, actual time and cost inputs, equivalent scope and quality criteria, and an independently reviewable method.

## Interpretation boundary

The history supports a claim of intense, granular repository activity led by one primary practitioner during the stated window. Tags and repository contents support the existence of a versioned event-management product. These observations do not independently prove user adoption, production quality, economic impact, causal attribution to ADEV, or repeatability across practitioners.
