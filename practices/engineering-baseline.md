# Engineering baseline

The user states an outcome. An A-Dev agent delivers that outcome **at professional engineering standard without being asked**: the tests, error handling, security, compatibility, and operability that a senior engineer would consider part of the job. This baseline applies to every change by default, in every profile. A repository may raise it; lowering it requires a recorded rationale.

## Exceed the expectation, not the scope

1. Do the quality work that belongs to the requested change, even when nobody asked for it: tests, edge cases, error paths, documentation of changed behavior.
2. Do not expand the scope. Improvements outside the change (a refactor nearby, a dependency upgrade, a design concern) are reported as proposals, not implemented silently.
3. Scale the rigor to the risk. A typo fix needs a diff review; a change to authentication, persistence, money, or production infrastructure needs all of the sections below.

## Before changing anything

1. Understand the surrounding system: read callers, tests, conventions, and recent history of the area.
2. For a defect, reproduce it first and find the root cause. A fix that hides the symptom is not a fix.
3. Identify the blast radius: who and what depends on the code, configuration, schema, or interface being changed.

## Correctness

1. New behavior has tests. A bug fix starts with a test that fails for the reported reason.
2. Cover the edges: empty and missing values, boundaries, invalid input, large input, encoding, time zones, concurrency, and repeated or out-of-order calls.
3. Run the relevant existing suite, not only the new tests. Report anything not run and why.
4. Verify the real path a user follows, as the [core doctrine](../ADEV.md#core-principles) requires.

## Design and code

1. Follow the repository's conventions, formatter, linter, and architecture before personal preference.
2. Make the smallest change that solves the root cause. No speculative abstraction, no unrelated reformatting.
3. Names explain intent; comments explain why, not what.
4. Remove dead code, debug output, and temporary files introduced by the change.

## Errors and resilience

1. Handle errors explicitly. Never swallow an exception or return a silent default that hides a failure.
2. Every call that crosses a process or network boundary has a timeout, and each timeout fits inside the window that contains it.
3. Retries use backoff and are only applied to idempotent operations, or to operations made idempotent.
4. Fail closed for security and policy decisions; fail safe for user data.

## Security

1. Validate input at trust boundaries. Use parameterized queries and safe APIs for paths, commands, redirects, and URLs.
2. Secrets come from the environment or a secret store, never from code, logs, or fixtures.
3. Grant the least privilege that works, for code, tokens, containers, and CI.
4. Check new and updated dependencies for known vulnerabilities and acceptable licenses.
5. Logs carry context, not sensitive values. See [operational lessons](operational-lessons.md#logging-and-security).

## Data and compatibility

1. Schema and data migrations are forward-compatible and have a tested rollback or recovery path.
2. Public interfaces (APIs, CLIs, file formats, events) stay backward compatible, or the change is versioned and announced.
3. New configuration has safe defaults; removing configuration has a migration note.

## Operability

1. A service change keeps or adds the health signals, logs, and metrics needed to tell whether it works in production.
2. Risky changes ship behind a flag or through the [incremental rollout](delivery-defaults.md#incremental-rollout) default.
3. Every change that reaches production has a known rollback path.

## Performance and resources

1. Avoid known traps: unbounded loops, queries inside loops, loading unbounded data into memory, and missing pagination.
2. Optimize only with measurement, against a stated baseline.

## Systems thinking

1. Ask what happens when a dependency is down, slow, or returns garbage; when the disk is full; when a step half-completes; when a message arrives twice.
2. State limits and capacity assumptions explicitly.
3. Design for the second run: repeated executions must not depend on one-shot resources or manual cleanup.
4. Keep environments reproducible: pinned versions, declared dependencies, scripted setup.

## Dependencies and documentation

1. Prefer what the project already uses. A new dependency needs a reason, a pinned version, and a license that fits.
2. Update the README, docs, changelog, or runbook when behavior, configuration, or operation changes.

## Definition of done

Before reporting completion, confirm and state:

- [ ] The outcome works through the real user path.
- [ ] Tests cover the new behavior and the edges; the relevant suite passes.
- [ ] Errors, timeouts, and failure modes are handled.
- [ ] No secrets, sensitive logs, or unsafe input handling were introduced.
- [ ] Compatibility, migrations, and rollback are addressed where relevant.
- [ ] Docs reflect changed behavior.
- [ ] Out-of-scope findings are reported as proposals.
- [ ] Lessons worth keeping are captured through the [learning loop](../skills/adev-learn/SKILL.md).
