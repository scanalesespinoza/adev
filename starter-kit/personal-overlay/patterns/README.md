# Candidate patterns

A candidate pattern is a lesson that might transfer beyond the situation where it was observed. It stays here until the evidence justifies promoting it to A-Dev.

## Format

```markdown
### Short imperative name

**Status:** candidate | proposed to A-Dev (link) | promoted (link) | retired
**Context:** when it applies, and when it does not.
**Pattern:** what to do, stated so that compliance can be observed.
**Evidence:** links to the records where it was observed, with dates. Note counter-evidence too.
```

## Promotion

Propose a pattern to A-Dev when:

1. It was observed more than once, or a single failure was costly enough to justify it.
2. It would have changed the outcome in the cases recorded.
3. The narrowest A-Dev layer is clear: an overlay, a practice, a default, or, rarely, the core.
4. It can be stated without private context, names, or environment details.

Open a pull request to A-Dev with the sanitized pattern and a summary of the evidence. The detailed records stay here. Follow the [A-Dev pattern promotion process](https://github.com/scanalesespinoza/adev/blob/main/patterns/README.md).
