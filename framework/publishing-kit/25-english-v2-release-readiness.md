# English v2.0.0 Release Readiness

## Decision

The English edition is editorially and technically ready for a GitHub release under the proposed tag `v2.0.0-en`. No open manuscript, production, link, or rights defect blocks publication.

The remaining gate is explicit author authorization. This record does not create the tag or publish the release.

## Release Identity

- Title: *ADEV: The Practice of AI Agentic Development*.
- Author: Sergio Sebastián Canales Espinoza.
- Language: `en-US`.
- Version: `2.0.0`.
- Proposed tag: `v2.0.0-en`.
- Source commit: `3e8e8f92e08878afb1f9e6ce3fe27e6fb3c17c12`.
- PDF: `adev-book-en.pdf`.
- EPUB: `adev-book-en.epub`.
- EPUB identifier: `urn:adev:book-en:2.0.0`.

## Build from Merged Main

- Workflow: `Build English ADEV Book`.
- Run: `32058457058`.
- Job: `95473924657`.
- Conclusion: success.
- Manifest validation: passed.
- Cover generation: passed.
- PDF generation: passed.
- EPUB generation: passed.
- EPUBCheck: passed.
- PDF and EPUB uploads: passed.
- Release step: skipped, as required for a non-tag build.

Artifacts reconstructed from merged `main`:

| Artifact | Size | SHA-256 |
| --- | ---: | --- |
| `adev-book-en.pdf` | 2,595,749 bytes | `4BD42B8F3361DD3772AD45DCFC389688DADBC268E546E54EDE1B4DE08F6BE470` |
| `adev-book-en.epub` | 2,323,298 bytes | `07ED681237510337A10D25AB1A2F26869D486518D4F4A439AFECFFF02A1DD0C3` |

Checksums differ from the PR candidate because generated creation timestamps and archive metadata differ. The source commit, version identity, manifest, and build path are unchanged.

## Editorial and Production Gates

- [x] English adaptation is complete: 19 ordered manuscript targets and three appendices.
- [x] Developmental review passed.
- [x] Copyediting passed.
- [x] Full 101-page PDF visual inspection passed.
- [x] PDF metadata and embedded-font inspection passed.
- [x] EPUBCheck passed without structural errors.
- [x] EPUB package contains cover, title page, navigation, 19 content documents, and all 22 spine items in the expected order.
- [x] Navigation labels and targets match the English manifest.
- [x] Cover, tables, and code blocks are present in the generated package.
- [x] Ten material external links were rechecked on 2026-08-17 and were available.
- [x] AI assistance and human responsibility are disclosed.
- [x] English adaptation provenance is recorded.
- [x] No new third-party excerpt, visual asset, dataset, or outside contribution was identified.
- [x] Cover provenance applies to the shared text-free artwork; English typography is generated locally.
- [x] GitHub is the approved initial distribution channel for this gate.
- [ ] Author explicitly approves the `v2.0.0-en` tag and release artifacts.
- [ ] Tagged workflow completes and publishes both stable artifacts.

## Reader-Level Review Boundary

An in-app browser interaction check could not load the locally served EPUB because the browser security policy blocks local URLs. No bypass was attempted.

The release decision instead relies on complementary evidence: EPUBCheck acceptance, package metadata inspection, complete manifest and spine inspection, navigation-target review, resource presence checks, and the successful generation of tables and code blocks. This is sufficient for the GitHub release gate. Store-specific reader testing remains appropriate before submission to any external marketplace.

## External Distribution Boundary

This approval covers GitHub release distribution only. ISBN registration, commercial pricing, print specifications, accessibility certification, and the policies of stores or crowdfunding platforms remain outside this release and must be reviewed for each future channel.

## Authorized Next Stage

After the author explicitly approves the tag and candidate artifacts:

1. create and push annotated tag `v2.0.0-en` at the approved commit;
2. monitor the tagged workflow through EPUBCheck and artifact publication;
3. verify the public GitHub release title, notes, PDF, EPUB, sizes, and checksums;
4. report the final release URL and immutable tag commit.
