# Contributing to A-Dev

Thank you for helping improve A-Dev. This guide is the human-facing contribution workflow; agents working in this repository also follow [`AGENTS.md`](AGENTS.md).

## Read first

1. [`README.md`](README.md): what A-Dev is and how its layers fit together.
2. [`ADEV.md`](ADEV.md): the core principles. Contributions follow them too.
3. [`AGENTS.md`](AGENTS.md): repository rules, such as English-only canon and keeping the core small.

## Where a contribution belongs

Place each change in the narrowest layer that fits:

| You want to | Contribute to |
| --- | --- |
| Share a lesson from real work | A candidate in [`patterns/`](patterns/README.md), with a sanitized evidence summary |
| Add rules for a specific stack, product type, or context | [`overlays/`](overlays/README.md) |
| Improve reusable guidance or defaults | [`practices/`](practices/README.md) |
| Change how agents are governed | [`hardness/`](hardness/README.md) or [`profiles/`](profiles/README.md) |
| Add or fix evidence and case studies | [`docs/`](docs/index.md) |
| Fix the installer or CLI | [`install/`](install/README.md) and [`bin/adev`](bin/adev) |
| Change the core principles | [`ADEV.md`](ADEV.md), only for rules that hold in every context, with evidence |

The book has its own repository: [adev-book](https://github.com/scanalesespinoza/adev-book).

## How to contribute

1. Open or pick an issue for anything non-trivial, so scope is agreed first.
2. Create a fresh branch from `main`, for example `docs/issue-123-short-name`, `fix/...`, `feat/...`, `ci/...`, or `chore/...`.
3. Keep one objective per pull request. Do not mix refactors, features, doctrine, CI, and release mechanics.
4. Use [Conventional Commits](https://www.conventionalcommits.org/), for example `fix(installer): keep foreign skill links`.
5. Open a pull request using the template: what changed, why, the layer, what is out of scope, and how it was validated. Reference the issue with `Closes #N`.
6. CI must be green before merge.

## Validate locally

```bash
python3 implementation/evaluations/check_repository_layout.py   # required files, links, anchors
python3 -B implementation/evaluations/test_profile.py           # profiles and contracts (needs jsonschema, PyYAML)
install/test_install.sh && install/test_adev.sh                  # installer and CLI
pwsh -NoProfile -File hardness/scripts/validate-policy-fixtures.ps1   # Hardness, if you have PowerShell 7
```

To build the site as CI does: `pip install -r requirements-docs.txt`, stage tracked files into `site-src/` (see `.github/workflows/deploy-site.yml`), and run `mkdocs build --strict`.

## Content guidelines

- **Evidence over assertion.** Every claim maps to an inspectable artifact. Mark unsupported material as a gap or proposal.
- **Vendor-neutral and transferable.** A claim that holds for only one tool, vendor, or sector is an example, evidence, or an overlay, not core doctrine.
- **Protect people and data.** No secrets, personal data, customer details, internal hosts, or raw logs, even in examples. See [data protection](practices/data-protection.md).
- **Act as a librarian.** Search for related content first, extend the canonical asset, and link instead of duplicating.
- **English** for committed content in this repository.

## Questions

Open an issue if something is unclear before you start.
