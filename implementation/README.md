# A-Dev implementation

This is the agent-consumable implementation of A-Dev. It is designed for autonomous and mixed systems that deliver safe, resilient, high-quality software—not for replaying a human SDLC as tickets and ceremonies.

## Start sequence

1. Read [AGENTS.md](AGENTS.md) and resolve authority.
2. Load the [agent-native operating model](architecture/agent-native-ai-sdlc.md).
3. Select the reviewed [AI-SDLC profile](profiles/ai-sdlc.yaml).
4. Apply [knowledge ingestion](playbooks/knowledge-ingestion.md) before mutable work.
5. Use deterministic controls for policy, scope, validation, and release; use generative components only for bounded synthesis and implementation.

| Area | Purpose |
| --- | --- |
| [architecture](architecture/agent-native-ai-sdlc.md) | Component model and control-loop boundaries. |
| [contracts](contracts/agent-profile.schema.json) | Machine-readable portable profile shape. |
| [profiles](profiles/ai-sdlc.yaml) | A reviewed AI-SDLC profile. |
| [playbooks](playbooks/knowledge-ingestion.md) | Required ingestion and release behavior. |
| [adapters](adapters/ai-sdlc.md) | Mapping to a mixed AI-SDLC runtime. |
| [evaluations](evaluations/README.md) | Conformance and safe-stop expectations. |

The profile is not authority by itself. A deployment binds it to authenticated policy, repository contract, and a pinned runtime revision.
