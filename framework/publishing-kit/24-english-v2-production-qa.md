# English v2.0.0 Production QA

## Candidate Source

- Pull request: `#84`.
- Audited workflow run: `32045992886`.
- Workflow job: `build-book-en` (`95433920754`).
- Build conclusion: success.
- Release step: skipped, as required for an untagged candidate.

Both the push and pull-request executions completed successfully. The pull-request artifacts were used for this audit.

## Automated Results

- Manifest validation: passed.
- English cover composition: passed.
- PDF generation with Pandoc and XeLaTeX: passed.
- EPUB generation: passed.
- EPUBCheck: passed.
- PDF artifact upload: passed.
- EPUB artifact upload: passed.

## PDF Candidate

- Filename: `adev-book-en.pdf`.
- Size: 2,595,749 bytes.
- SHA-256: `C3E2A45F0886BA858CD35FF3CB63C37447130FFE645CD3B62B05731512A9D49D`.
- Pages: 101.
- Page size: US Letter, 612 × 792 points.
- PDF version: 1.5.
- Encryption: none.
- Forms and JavaScript: none.

Metadata:

- Title: *ADEV: The Practice of AI Agentic Development*.
- Author: Sergio Sebastián Canales Espinoza.
- Subject: `First English edition · version 2.0.0`.
- Producer: `xdvipdfmx` through Pandoc and XeLaTeX.

All six Latin Modern font resources used by the PDF are embedded.

## Complete Visual Inspection

All 101 pages were rendered to raster images and reviewed in six ordered contact sheets. Representative content-heavy, table, appendix, opening, and closing pages were also inspected at page resolution.

Confirmed:

- cover typography is complete, aligned, and legible;
- table of contents spans its expected pages without clipping;
- chapter transitions and heading hierarchy are visible and consistent;
- body margins, line spacing, and page numbers remain consistent;
- bullets and numbered lists remain inside the text area;
- tables fit the page without clipped columns;
- inline code and code blocks render with readable monospaced fonts;
- bold, italic, accented author-name glyphs, arrows, and symbols render correctly;
- no overlapping text, black squares, truncated lines, or unexpected blank pages appear;
- the final sparse page is intentional continuation of Appendix C, not a layout defect.

Page 1 has no extractable text because it is the intended full-page cover image. Every other page contains extractable text.

## EPUB Candidate

- Filename: `adev-book-en.epub`.
- Size: 2,323,298 bytes.
- SHA-256: `65F4621112B5E48D1B8C17AA357E77312F6CA11E85B3738938ABBFC9BDF770CF`.
- MIME declaration: `application/epub+zip` in the required first archive entry.
- Package document: `EPUB/content.opf`.
- XHTML documents: 22.
- Spine items: 22.
- Navigation document: present.
- Cover image and cover XHTML: present.

Package metadata:

- Identifier: `urn:adev:book-en:2.0.0`.
- Title: *ADEV: The Practice of AI Agentic Development*.
- Creator: Sergio Sebastián Canales Espinoza.
- Language: `en-US`.

EPUBCheck acceptance demonstrates structural validity. Final release approval still requires a reader-level interaction check of navigation, chapter order, tables, code blocks, and external links on the tagged candidate.

## Findings

No PDF production defect or EPUB structural defect requires a manuscript or workflow change.

The candidates are suitable for merging the production path. They are not yet authorized for public release because the following gates remain:

- merge the production workflow;
- build artifacts from the merged candidate or final tag;
- perform reader-level EPUB interaction review;
- recheck material external links;
- close rights and permissions review;
- obtain explicit author approval for `v2.0.0-en` and its artifacts.

## Decision

Production QA for PR `#84` passes. The PR may be merged. Public release remains a separate, explicitly approved action.
