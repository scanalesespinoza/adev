# Spanish First-Edition Release Checklist

## Candidate integrity

- [x] The canonical manuscript order is declared by `adevelopment-book/book-es/Book.txt`.
- [x] Every manifest target exists.
- [x] The production workflow reads the Spanish manifest for both PDF and EPUB.
- [x] The PDF artifact was rendered and inspected page by page after PR #65.
- [x] The EPUB passes EPUBCheck and its package, metadata, spine, navigation, and external links were inspected after PR #66.
- [x] AI assistance, author responsibility, copyright, and the repository license are disclosed in the generated manuscript.
- [x] Case-study claims and evidence boundaries are linked from the manuscript.

## Rights and metadata

- [x] Repository-level rights review is recorded in `07-ai-disclosure-and-rights.md`.
- [x] Included material is recorded in `08-permissions-log.md`.
- [x] Select a final text-free cover asset and record its generation provenance.
- [ ] Confirm cover treatment against the requirements of any external distribution channel before submission.
- [x] Use `v2.0.0` for the consolidated Spanish edition; `adevelopment-book/book-es/version.txt` is its canonical source. Preserve the historical `v1.0.0` release rather than rewriting it.
- [x] Record the GitHub publication date as August 16, 2026, in the author's local editorial context.
- [ ] Add ISBN, publisher, price, and channel metadata only when a chosen distribution channel requires them; do not invent placeholders.

## Release operation

- [x] Freeze release commit `061425611c19a55faea90bdcd94bf99e5beb4894` and confirm the manuscript and assets on that commit.
- [x] Run publication workflow `31988080665` on the exact `v2.0.0` tag and require the format job to pass.
- [x] Download and verify the final PDF and EPUB artifact digests recorded in the release notes.
- [x] Recheck the complete 106-page PDF visually and validate the EPUB package after publication.
- [x] Create the approved annotated tag `v2.0.0` manually.
- [x] Confirm the GitHub release contains both `adev-book.pdf` and `adev-book.epub`.
- [x] Record the tag, commit, workflow run, artifact digests, publication date, and remaining limitations in the release notes.

## Distribution follow-up

- [ ] Apply channel-specific metadata and disclosure requirements before submitting to an external store or publisher.
- [x] Use the public `v2.0.0` release as the canonical outward-facing link for the Spanish edition.
- [ ] Preserve a rollback path: remove or supersede an incorrect release without rewriting repository history.
