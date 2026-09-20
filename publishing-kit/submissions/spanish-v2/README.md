# Spanish v2 Editorial Submission Package

This directory contains the publisher-facing submission assets for the Spanish v2 edition of *ADEV: La práctica de AI Agentic Development*.

## Assets

- `Propuesta-editorial-ADEV-Sergio-Canales.docx`: editorial proposal, positioning, audience, differentiation, comparable titles, outline, and author profile.
- `Capitulos-muestra-ADEV.docx`: selected sample chapters from the current Spanish edition.

## Editorial status

These files are intentionally maintained in Spanish because they support outreach to Spanish-language publishers. They are distribution artifacts derived from the canonical repository content, not a replacement for the English repository canon.

The DOCX packages were structurally verified as valid OOXML before publication. Personal document metadata was removed, and the proposal routes contact through the author's public GitHub profile instead of storing a personal email address. Automated visual rendering was unavailable in the current Windows environment because LibreOffice was not installed.

## Scope boundary

This package does not expand or revise the manifesto, manuscript, framework doctrine, or technical starter-kit assets. Future editorial revisions should be generated from the canonical source and reviewed in a separate atomic change.

## Artifact provenance and regeneration

Decision: generated `.docx` submission binaries are committed in git as dated, publisher-facing records rather than attached to a release — they represent what was sent to a specific channel at a point in time, so keeping them versioned with the manuscript preserves the submission's exact state.

Rules for this pattern:

- Each submission directory must state its source: this package derives from `adevelopment-book/book-es/` edition `v2.0.0` (tag `v2.0.0`, commit `061425611c19a55faea90bdcd94bf99e5beb4894`).
- Regeneration is a manual editorial step. When regenerating, record the new source commit/tag in this README in the same change that updates the binaries.
- Do not edit `.docx` files in place; regenerate from canonical source so the binary never diverges silently from the manuscript it represents.
- If submission packages grow in size or frequency, revisit this decision and consider release attachments instead of tracked binaries.
