# Operational lessons

Transferable lessons consolidated from operating the [Homedir](https://github.com/scanalesespinoza/homedir) proving ground. They are guidance, not mandatory policy. Lessons that depend on a specific stack or product type live in [overlays](../overlays/README.md).

## Truthful process

1. If a rule, template, or automation contradicts the actual repository flow, fix the rule or documentation before institutionalizing the error.
2. Document and automate only commands, workflows, and assumptions backed by the repository or real operation. Mark missing context explicitly as `TODO`.
3. Do not turn pull request stabilization, promotion steps, or rollout tracking into product features unless there is an explicit business requirement.

## Verification

1. For scripts, operations, and disaster recovery, syntactic validation is not enough. Run real smoke tests in the environment that matters and separate harness failures from functional failures.
2. For performance work, compare like with like against a concrete baseline, measure latency, errors, and payload, and state uncertainty when fixtures, traces, or production data are missing.
3. Prioritize the highest-leverage fix that the evidence demonstrates. Avoid broad optimizations or redesigns without measurements that justify them.
4. A backup is not done until the service can actually be restored with a tested procedure and artifacts.
5. Treat runtime and deprecation warnings from workflows or checks as operational debt. Update the supported actions or dependencies before adding capability.

## Workstreams

1. Branch from a stable base, avoid mixing unrelated changes, and revalidate whenever flags, commands, or tools change.
2. Temporary files are a liability once their diagnostic purpose ends. Delete scratch notes, exploratory scripts, temporary manifests, and generated checks, or consolidate them into canonical assets, before the work is considered complete.
3. A repository is a library, not a pile of notes. Before adding content, classify it, search for related material, choose the canonical shelf, and avoid parallel fragments that future agents cannot reconcile.

## Logging and security

1. When a change adds logs about routes, identifiers, or values derived from input or state, record only sanitized labels, not absolute paths or raw values.
2. When shared services already write fields to logs, treat those fields as indirect security sinks and use constant or sanitized identifiers for auxiliary attributes.
