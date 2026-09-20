# Contributing to A-Dev

Thank you for your interest in contributing to A-Dev. This guide covers the human-facing contribution workflow. For the agent-facing operating doctrine, read [`ADEV.md`](ADEV.md) first — it overrides generic writing-repo assumptions.

## Read before contributing

1. [`ADEV.md`](ADEV.md) — the persistent operating context and non-negotiable rules for this repository.
2. [`README.md`](README.md) — repository architecture and content surfaces.
3. [`framework/README.md`](framework/README.md) — the normative practice map and content model.
4. [`AGENTS.md`](AGENTS.md) — repository guidelines for agents and humans working alongside them.

## How to contribute

### Atomic PRs

The default mode is **one atomic PR per stage**. Each PR must:

- Address a single, scoped objective.
- Reference its source issue with `Closes #N` in the PR body.
- Use a dedicated feature branch (do not reuse merged or superseded branches).
- Not mix refactor, feature, visual changes, infrastructure, doctrine updates, and release mechanics in the same PR unless batch delivery is explicitly requested.

### Branch naming

Use conventional branch prefixes:

- `feat/issue-NNN-description` — new features or enhancements
- `fix/issue-NNN-description` — bug fixes
- `docs/issue-NNN-description` — documentation changes
- `chore/issue-NNN-description` — tooling, CI, metadata

### Commits

Use [Conventional Commits](https://www.conventionalcommits.org/):

```
type(scope): short description

Optional body explaining why.

Closes #NNN
```

Types: `feat`, `fix`, `docs`, `chore`, `refactor`, `test`, `ci`.

### PR shape

Every PR body must state:

1. **What changed** — a concise summary of the change.
2. **Why it matters** — the motivation or problem being solved.
3. **Out of scope** — what is intentionally left for a separate PR.
4. **Validation** — how the change was verified (build, tests, link check, visual QA).
5. **Closes #N** — the source issue reference.

### Validation

Use the narrowest meaningful validation for the changed surface:

- **Docs-focused PRs:** link/structure review and consistency checks.
- **Book/manuscript PRs:** build the PDF/EPUB locally and inspect the output.
- **Framework PRs:** ensure cross-references resolve and doctrine is not silently redefined.
- **CI/workflow PRs:** run the workflow on a test branch before merging.

CI must be green before merge.

## Content guidelines

- **Canonical language:** English is the default for committed content. A bilingual mirror (Spanish) is maintained for the book; see [`adevelopment-book/README.md`](adevelopment-book/README.md).
- **Place lessons on the narrowest canonical shelf.** Do not duplicate the same rule across doctrine, a checklist, and the book without cross-references and a clear source of truth.
- **Do not turn undocumented assumptions into doctrine.** If the repository or evidence does not support a claim, mark it as a gap.
- **Evidence over claims.** Every framework claim must map to a repository asset, validated release flow, or real operational evidence. If a lesson comes from Homedir, extract the transferable rule and cite the relevant Homedir artifact.
- **Vendor neutrality.** Keep canonical public content vendor-neutral and industry-agnostic. If a claim only holds for one vendor or tool, treat it as an example, not doctrine.

## Starter kit

If you are adopting A-Dev in a new repository, start with [`starter-kit/`](starter-kit/README.md) for copyable templates and operating rituals.

## Questions

Open an issue with the `question` label if you need clarification before starting work.
