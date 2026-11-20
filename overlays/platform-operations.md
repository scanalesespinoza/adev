# Overlay: platform operations

**Applies when** the work involves container images and registries, Kubernetes or Helm manifests, self-hosted CI/CD, platform bootstrap automation, or build wrapper scripts. These lessons come from the Homedir proving ground and its platform work; adapt specific values to the target stack.

## Release infrastructure

1. Production releases do not depend on a single container registry. Keep at least one secondary registry operational for push and pull.

## Manifests

1. In Helm charts and multi-document YAML manifests, verify that a `---` separator is present between resource definitions. Validation must render or parse the final YAML as multiple documents, not only check that the file is readable; a missing separator has caused user-reported production regressions.
2. ConfigMaps containing scripts or multi-line data are formatting hotspots. Validate them with a client-side dry run, a template render, or equivalent tooling before commit, and review indentation, line endings, and data blocks. A syntactically valid file can still produce a broken ConfigMap.

## Bootstrap and CI/CD

1. Self-hosted CI/CD platforms often block webhooks to cluster-internal services by default. Bootstrap automation configures a targeted allowlist for event listeners and pipeline triggers before activating pipelines, rather than allowing all local requests.
2. Platform bootstrap supports modular installation through component disable flags. Wire the flags into the deployment manifests, treat disabled components as intentionally skipped during validation, and document the supported flags.
3. Bootstrap validation inspects live service state with temporary administrative credentials instead of relying on indirect health signals. Validate concrete contracts, such as client identifiers, claims, scopes, and roles, and report the actual configuration in the bootstrap summary.

## Build tooling

1. Language wrapper scripts, such as Maven or Gradle wrappers, have the executable bit set in Git (`git update-index --chmod=+x <wrapper>`). Builds on Linux and macOS fail without it, and contributors on Windows can miss it because Windows ignores the bit.
