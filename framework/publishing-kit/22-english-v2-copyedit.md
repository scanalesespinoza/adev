# English v2.0.0 Copyedit Record

## Decision

The English manuscript passes copyediting and may advance to production preparation.

Copyediting covered grammar, idiom, sentence rhythm, punctuation, capitalization, technical compounds, narrative voice, and internal cross-references. It did not alter doctrine, evidence classification, or the strength of claims.

## Style Sheet

### Edition and Voice

- Use international professional English with US spelling.
- Preserve first person where the author describes his decisions, experience, or aspiration.
- Use direct second person in practices and the final call to action.
- Do not personify an agent by implying consciousness, moral intent, or independent responsibility.
- Prefer plain technical language over promotional language.

### Canonical Terms

- `ADEV` expands to **AI Agentic Development**.
- Use *agentic* only as a technical adjective.
- Use *living baseline*, *software habitat*, *blueprints*, *atomic iteration*, and *micro-iteration*.
- Write *inner loop* and *outer loop* without hyphens.
- Write *pull request* without a hyphen, including when it modifies another noun.
- Use *evidence chain*, not *proof chain*.
- Distinguish *delivery* from *deployment*.
- Distinguish *capability* from *authority* and *responsibility* from *accountability*.
- Retain `ADEV.md`, issue, PR, CI/CD, skill, guardrail, gate, rollback, and runbook when they are the clearest technical terms.

### Mechanics

- Use title case for chapter and section headings.
- Use sentence case inside tables unless an entry is a named asset or heading.
- Use the serial comma in prose and lists.
- Use em dashes without surrounding spaces for parenthetical interruption.
- Use en dashes for conceptual chains and numeric or temporal ranges where Markdown and production support them.
- Hyphenate compound modifiers such as *short-lived*, *low-risk*, *high-impact*, *machine-readable*, and *read-only*.
- Preserve code, filenames, tags, commit identifiers, and literal status codes exactly.

### Claims and Evidence

- Preserve *may*, *can*, *observed*, *reported*, *estimated*, *proposed*, and other calibration language.
- Do not replace *evidence* with *proof* unless the sentence genuinely establishes proof.
- Attribute recollections to the author when no reproducing artifact is linked.
- Keep original-language publication titles unchanged inside citations.
- Do not infer human effort from repository timestamps.
- Do not describe historical economic estimates as measured ADEV outcomes.

## Corrections Applied

- Normalized *pull request* compounds across the manuscript.
- Normalized the OWASP least-privilege sentence to idiomatic English.
- Replaced one remaining *proof* label with *evidence*.
- Improved one awkward purpose construction in the preliminary matter.
- Reconfirmed the terminology changes made during developmental review.

## Verification

- All 19 manifest targets exist.
- All relative links resolve.
- Repeated-word and punctuation anomaly scans return no manuscript findings.
- US and UK spelling variants were reviewed against the style sheet.
- Canonical compound and terminology scans pass, with original publication titles excluded.
- `git diff --check` passes.

## Deferred to Production

- external-link availability at the production date;
- title and version production files;
- English cover typography;
- table, code-block, and page-break behavior;
- PDF font embedding and visual inspection;
- EPUB metadata, navigation, and EPUBCheck;
- final rights review and author approval.

## Next Stage

Prepare the English production manifest, metadata, and cover treatment; then build PDF and EPUB candidates for technical and visual QA.
