# Security policy

## Supported versions

Security fixes are made on `main` and shipped in the next release. Only the latest release is supported.

## Reporting a vulnerability

**Do not open a public issue for a security vulnerability.** Report it privately through [GitHub's private vulnerability reporting](https://github.com/scanalesespinoza/adev/security/advisories/new).

Please include:

- a description of the issue and its impact;
- steps to reproduce, with a proof of concept if possible;
- the affected component and version or commit;
- any suggested mitigation.

## Response

- Acknowledgment within 72 hours.
- Initial assessment within 7 days.
- Fix or mitigation according to severity, with the reporter kept informed.

## Scope

In scope:

- The installer and CLI (`install/bootstrap.sh`, `install/install.sh`, `install/Install-ADev.ps1`, `bin/adev`), including how they modify agent configuration, skill links, and files in the user's home directory.
- The skills and managed guidance A-Dev installs, where they could lead an agent to exceed the authority A-Dev describes (for example acting without required approval, or leaking data from a personal overlay).
- GitHub Actions workflows and the dependencies they install.
- Starter-kit templates that could lead to insecure adoption downstream.

Out of scope:

- Vulnerabilities in projects that adopted A-Dev (report them to those projects).
- Editorial disagreements (use a regular issue).
