# A-Dev Book and Collateral

This directory contains the core A-Dev book and the collateral used to extend it across talks, posts, and documentation.

## Book
The book source of truth lives in `book/`.

Key files:
- `Book.txt`: ordered manuscript manifest used by Leanpub-style tooling and the GitHub PDF workflow.
- `title.txt`: canonical book title.
- `resources/`: manuscript-local assets.

Main reading flow:
1. `00-title-page.md`
2. `00-front-matter.md`
3. `INDEX.md`
4. `01-adev-manifesto.md`
5. `02-solo-architect.md`
6. `03-atomic-iterations.md`
7. `04-baseline-rules-of-engagement.md`
8. `05-traceability-digital-thread.md`
9. `06-quality-density-metrics.md`
10. `07-weekend-marathon-playbook.md`
11. `08-homedir-vision.md`
12. `11-evenflow-case-study.md`
13. `09-faq-objections.md`
14. `10-closing.md`
15. `appendices/A-templates.md`
16. `appendices/B-glossary.md`
17. `appendices/C-checklists.md`
18. `appendices/D-further-reading.md`

## PDF build rule
The GitHub PDF build now reads the ordered chapter list from `book/Book.txt`. If the manuscript order changes, update `Book.txt` first so the workflow and the manuscript stay aligned.

## Reusable collateral
`collateral/` holds ready-to-use materials for one-pagers, talk outlines, speaker notes, video series, and LinkedIn posts.

## Editorial summary
Augmented Development is how one person, with real experience and clear rules, can orchestrate an AI team to deliver professional software with short cycles, evidence, and quality.
