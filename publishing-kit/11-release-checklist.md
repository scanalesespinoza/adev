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
- [ ] Choose the first public version identifier.
- [ ] Choose the publication date at the time the release is approved.
- [ ] Add ISBN, publisher, price, and channel metadata only when a chosen distribution channel requires them; do not invent placeholders.

## Release operation

- [ ] Freeze a candidate commit and confirm no manuscript or asset change occurred after rights review.
- [ ] Run the publication workflow on that exact commit and require both format jobs to pass.
- [ ] Download and compare the final PDF and EPUB artifact digests with the candidate record.
- [ ] Recheck title page, navigation, opening chapter, closing chapter, and appendices in the final artifacts.
- [ ] Create the approved version tag manually.
- [ ] Confirm the GitHub release contains both `adev-book.pdf` and `adev-book.epub`.
- [ ] Record the tag, commit, workflow run, artifact digests, publication date, and remaining limitations in the release notes.

## Distribution follow-up

- [ ] Apply channel-specific metadata and disclosure requirements before submitting to an external store or publisher.
- [ ] Update outward-facing links only after the release assets are publicly reachable.
- [ ] Preserve a rollback path: remove or supersede an incorrect release without rewriting repository history.
