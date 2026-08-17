# ADEV Book and Collateral

> This directory contains the manuscript sources and reusable collateral for the ADEV book. The canonical first-edition development track is the Spanish manuscript in [`book-es/`](book-es/README.md). The existing English manuscript in [`book/`](book/INDEX.md) is retained as a historical source for selective reuse, not as the translation source of record. The normative, English-language practice remains in [`framework/`](../framework/README.md).

## First edition in Spanish

The editorial source of truth for the first edition lives in `book-es/`.

- Working title: *ADEV: La práctica de AI Agentic Development*.
- Language: Spanish, using clear professional Latin American usage.
- Editorial direction: [`publishing-kit/17-spanish-first-edition-editorial-charter.md`](../publishing-kit/17-spanish-first-edition-editorial-charter.md).
- Build order: [`book-es/Book.txt`](book-es/Book.txt).

## Historical English manuscript

The prior English manuscript remains in `book/` while its useful material is evaluated chapter by chapter. It must not be expanded independently during the Spanish first-edition consolidation.

Key files:
- `Book.txt`: ordered historical manuscript manifest retained for reference.
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

## Publication build rule

The GitHub publication workflow reads `book-es/Book.txt` once and generates the Spanish first edition as `adev-book.pdf` and `adev-book.epub`. The historical English manuscript remains available as source material, but it is not a release input.

Repository-relative references remain convenient in the Markdown source. During EPUB generation, [`epub-external-links.lua`](epub-external-links.lua) converts references outside the manuscript package into canonical GitHub links so eBook readers do not receive broken local paths.

A successful build proves that the manifest can be rendered and that the EPUB passes structural validation. Release readiness additionally requires page-by-page visual inspection of the PDF, reader-level inspection of the EPUB, and completion of the publishing rights checklist.

## Reusable collateral
`collateral/` holds ready-to-use materials for one-pagers, talk outlines, speaker notes, video series, and LinkedIn posts.

## Editorial summary

ADEV is a vendor-neutral practice for directing agent-assisted software delivery with human responsibility, explicit context, bounded autonomy, continuous verification, and evidence.
