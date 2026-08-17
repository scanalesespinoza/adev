# AI Disclosure and Rights Review

## Scope

This record applies to the canonical Spanish first edition in [`adevelopment-book/book-es/`](../adevelopment-book/book-es/README.md) and to the PDF and EPUB artifacts generated from its manifest. It is an editorial control, not a substitute for legal advice required by a particular publisher, store, or jurisdiction.

## AI assistance and human responsibility

The edition was developed from author interviews and repository evidence with AI-assisted drafting, consolidation, and copyediting. The author selected the thesis, supplied the experiences, reviewed the editorial decisions, and accepts responsibility for the published result.

The disclosure appears in [`00-portada.md`](../adevelopment-book/book-es/00-portada.md) and is included in both generated formats. No model or agent is represented as an author.

## Canon and provenance

- Editorial source: the ordered Markdown files in [`book-es/Book.txt`](../adevelopment-book/book-es/Book.txt).
- Normative technical source: [`ADEV.md`](../ADEV.md), `framework/`, and `starter-kit/`.
- Evidence boundary: the case studies and evidence records linked by the manuscript and its Appendix C.
- Generated objects: `adev-book.pdf` and `adev-book.epub`; generated files are not the editorial source of truth.

## Repository-level review completed

The current Spanish manifest was scanned before the first release candidate:

- no embedded images or diagrams were found;
- no third-party block quotation was identified; formatted callouts are original doctrine, examples, or author narrative;
- product and company names are used descriptively where evidence or repository operation requires them;
- external evidence is linked rather than copied into the manuscript;
- the repository carries Apache License 2.0, and the edition points readers to that canonical license instead of restating different terms;
- no `NOTICE` file exists in the repository at the observed review point.

These checks describe the current files. Any later excerpt, illustration, cover asset, translation, or outside contribution reopens the applicable review item.

## Release gate

Before a public release:

- [x] AI assistance and human responsibility are disclosed in the manuscript.
- [x] Author name and copyright notice are present.
- [x] Repository license is linked from the edition notice.
- [x] Current manuscript contains no embedded third-party visual assets.
- [x] Current manuscript contains no identified third-party verbatim excerpt requiring permission.
- [x] External evidence and technical assets are referenced with links.
- [ ] Confirm the final cover asset, creator, source, and license after a cover is selected.
- [ ] Confirm any channel-specific rights, metadata, or disclosure requirements before distribution outside GitHub.
- [ ] Re-run this review if content or assets change after the candidate commit.

## Privacy

The public edition must not include secrets, raw private transcripts, personal contact data, internal infrastructure identifiers, or customer-specific information. Examples should remain generic, and evidence should point only to intentionally public sources.
