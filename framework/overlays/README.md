# Overlays

An overlay is a scoped specialization of the [core doctrine](../ADEV.md). It applies only where its stack, product type, or workflow exists, and it must not silently weaken a core principle. Overlay precedence follows [Hardness policy and precedence](../hardness/01-policy-and-precedence.md#precedence).

| Overlay | Applies when |
| --- | --- |
| [Shared handoff workspace](multi-agent-handoff.md) | The repository or team keeps a shared handoff workspace for people and agents |
| [Web product](web-product.md) | The change touches user-facing views, visible copy, localization, or public routes |
| [Marketing automation](marketing-automation.md) | The system drafts, schedules, or publishes marketing or social content |
| [Platform operations](platform-operations.md) | The work involves container images, Kubernetes or Helm manifests, self-hosted CI/CD, or platform bootstrap |
| [Homedir](homedir.md) | The work happens in, or cites evidence from, the Homedir proving ground |

## Writing an overlay

1. State the scope in one sentence: when the overlay applies and when it does not.
2. Keep each rule observable, so that compliance can be checked or tested.
3. Link to the evidence that justified the rule.
4. Use `MUST` only for requirements whose omission caused or would cause a real failure in that context.
5. Promote a rule to the core only when it holds across tools, industries, and delivery contexts.

Organizations, teams, and individuals can keep their own overlays outside this repository. A personal or organizational overlay follows the same structure and declares its precedence explicitly.
