# Security Policy

## Supported versions

Only the latest release of A-Dev receives security updates. The book and framework artifacts are documentation; security issues relevant to the repository itself (e.g. vulnerable dependencies in CI workflows) are handled against the current `main` branch.

| Version | Supported |
| --- | --- |
| Latest release | Yes |
| Older releases | No |

## Reporting a vulnerability

**Do not open a public GitHub issue for security vulnerabilities.**

Instead, please report vulnerabilities privately:

1. Use [GitHub's private security advisory](https://github.com/scanalesespinoza/adev/security/advisories/new) feature on the repository, or
2. Email the maintainer at sergio.canales.e@gmail.com with a description of the vulnerability, steps to reproduce, and potential impact.

Please include:

- A clear description of the issue and its scope.
- Steps to reproduce (proof of concept if possible).
- The affected component (CI workflow, dependency, documentation pattern, etc.).
- Any suggested mitigation or fix.

## Response timeline

- **Acknowledgment:** within 72 hours of the report.
- **Initial assessment:** within 7 days.
- **Fix or mitigation:** depends on severity and scope; the reporter will be kept informed of progress.

## Scope

This policy covers:

- Vulnerabilities in GitHub Actions workflows used by this repository.
- Vulnerable dependencies installed by the build or deploy pipelines.
- Security-relevant issues in the starter-kit templates that could lead to insecure downstream adoption.

It does **not** cover:

- Vulnerabilities in downstream projects that adopted A-Dev practices (report those to the respective project).
- Content disagreements or editorial issues (use regular GitHub issues).
