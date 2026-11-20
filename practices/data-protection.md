# Data protection

This practice details the core principle [protect people and data](../ADEV.md#core-principles). It applies to code, commits, pull requests, issues, documentation, evidence records, handoffs, and agent memory, regardless of repository visibility.

1. **Never commit sensitive data.** No API keys, passwords, tokens, credentials, connection strings, private keys, or other secrets.
2. **Anonymize personal information.** Replace names, email addresses, phone numbers, and other personal identifiers with neutral roles or placeholders such as "the operator" or `user@example.com`.
3. **Generalize organization data.** Replace company, client, and employer names and proprietary information with generic descriptors such as "the customer environment".
4. **Sanitize infrastructure details.** Remove or generalize domain names, IP addresses, internal URLs, server and cluster names, account identifiers, and private repository or environment names.
5. **Abstract business data.** Replace revenue, cost, and other business-sensitive figures with ranges or qualitative descriptions.
6. **Protect intellectual property.** Do not document proprietary algorithms, trade secrets, or confidential logic in shared material.
7. **Use fictional examples.** Convey the pattern with realistic but invented data.
8. **Redact before commit.** Review every diff for sensitive data before committing, and again before publishing.
9. **Write impersonally.** Documentation, commit messages, and evidence focus on the pattern, not the specific instance.
10. **Private repositories are not exempt.** Access can change, and habits formed in private work carry into public work.
11. **Handle exposures as incidents.** If sensitive data reaches committed history, do not force-push to rewrite history. Rotate the exposed credential immediately and record the incident.
12. **Enforce through templates.** Evidence and knowledge records should use templates that ask for generic, sanitized content from the start.

Keep enough technical detail to preserve the lesson; remove the details that identify a person, organization, account, private environment, or private project.
