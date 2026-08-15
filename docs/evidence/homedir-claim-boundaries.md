# Homedir Claim Boundaries

## Purpose

This record classifies the evidence used by Spanish chapter 11 so that author recollection, public artifacts, and unverified quantitative claims do not collapse into one level of proof.

## Evidence classes

| Claim area | Current basis | Allowed interpretation | Gap |
| --- | --- | --- | --- |
| Homedir uses distinct pull-request, main-branch, and production-promotion gates | Public [`RELEASE_GATES.md` at `a2baac0`](https://github.com/scanalesespinoza/homedir/blob/a2baac07fc60f025ebcb9aab7c5f794928cbd831/config/docs/governance/RELEASE_GATES.md) | The repository documents separate delivery controls at the observed commit. | Artifact presence does not independently prove every gate ran successfully for every release. |
| Multilingual drift occurred across local and CI environments | Author interview plus distilled [`multilingual-drift.md`](../case-studies/multilingual-drift.md) | Use as an attributed operational narrative and transferable environment-consistency lesson. | Link the exact failing run, fixing commit, and locale-pinned tests. |
| A long-lived branch was discarded after changes became intertwined | Author interview | Use as an attributed failure narrative supporting small, recoverable iterations. | Identify the branch or commits and resolve the two-day versus one-week chronology. |
| CI/CD mismatches affected the delivery path | Author history plus distilled [`ci-cd-recovery.md`](../case-studies/ci-cd-recovery.md) | Delivery-path recovery is a repeated proving-ground theme. | Link representative workflow runs, fixing PRs, and production verification. |
| Performance investigation narrowed suspicion toward shared-origin rate limiting and request patterns | Distilled [`performance-evidence.md`](../case-studies/performance-evidence.md) | Evidence should precede broad redesign; the finding is project-specific. | Link the measured scenarios, fixtures, raw results, and corrective change. |
| Backup generation did not establish restore viability | Distilled [`disaster-recovery.md`](../case-studies/disaster-recovery.md) and author history | Restore proof belongs in the backup definition of done. | Link the failed restoration, compatible procedure, and smoke-test result. |
| The living baseline reduced repeated errors and rework | Author longitudinal perception | Present qualitatively as the author's observed change in work behavior. | Define error categories and compare reproducible periods before making a quantitative claim. |
| Simple and medium issues reach production in minutes | Author estimate | Use only as a research hypothesis or explicitly attributed estimate. | Sample traceable issues from creation through production verification and define size classes. |
| The repository has approximately 17 PR checks | Mutable author observation | Illustrates that checks accumulated through learning, not a target count. | Capture the workflows at a dated commit and map each check to a risk. |

## Use rule

When stronger evidence is added, update the relevant case study and this record together. A repository artifact proves only what its contents and observed state establish. It does not by itself prove adoption, causal impact, production success, or repeatability.

Homedir remains the proving ground; A-Dev remains the transferable system.
