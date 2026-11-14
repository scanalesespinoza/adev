# English v2.0.0 Production Readiness

## Candidate Identity

- Title: *ADEV: The Practice of AI Agentic Development*.
- Author: Sergio Sebastián Canales Espinoza.
- Language: `en-US` metadata; international professional English with US spelling.
- Edition version: `2.0.0`.
- Proposed tag: `v2.0.0-en`.
- PDF: `adev-book-en.pdf`.
- EPUB: `adev-book-en.epub`.
- EPUB identifier: `urn:adev:book-en:2.0.0`.

The tag remains uncreated until technical QA, visual QA, rights review, and author approval are complete.

## Independent Publication Path

The English edition uses:

- `adevelopment-book/book-en/Book.txt` as the sole ordered manifest;
- `adevelopment-book/book-en/title.txt` and `version.txt` as production identity;
- `.github/workflows/build-book-en.yml` as its build and release workflow;
- `adevelopment-book/pdf-cover-en.tex` as the PDF title-page treatment;
- `build-cover.py --edition en` for deterministic cover typography;
- the shared text-free cover artwork and EPUB link filter.

The Spanish workflow remains unchanged. The default cover-script behavior remains Spanish so existing builds retain their contract.

## Cover Review

The English cover preserves the Spanish edition's visual system while replacing only deterministic typography.

Confirmed in the 1024 × 1536 render:

- title and subtitle are fully visible;
- author name is fully visible;
- contrast is sufficient against the dark background;
- no text overlaps the architectural illustration;
- line length and hierarchy remain balanced;
- the architecture-under-construction image remains semantically appropriate.

## Automated Gates

The English workflow must demonstrate:

- every manifest entry exists;
- version follows semantic `x.y.z` form;
- tag identity equals `v{version}-en` on release builds;
- deterministic cover generation succeeds;
- Pandoc and XeLaTeX produce the consolidated PDF;
- Pandoc produces the EPUB with canonical externalized repository links;
- EPUBCheck reports no structural errors;
- both artifacts upload under stable English names.

## Manual QA Required Before Release

- inspect every PDF page after rendering to PNG;
- confirm cover, table of contents, headings, page breaks, tables, code, links, glyphs, headers, footers, and page numbers;
- inspect PDF metadata and embedded fonts;
- inspect EPUB metadata, cover, navigation, chapter order, tables, code blocks, and external links in a reader-level rendering;
- confirm artifact checksums and file sizes;
- recheck external links relevant to material claims;
- complete the rights and permissions review;
- obtain explicit author approval for the English candidate and release tag.

## Release Boundary

This production stage creates and evaluates candidates. It does not create `v2.0.0-en`, publish a GitHub release, or describe the English edition as publicly released.
