# Overlay: shared handoff workspace

**Applies when** a repository or team keeps a shared handoff workspace so that work can move between people, agents, and sessions. It does not apply to repositories without that workspace model.

1. Every iteration, batch, or objective ends with an updated handoff and an open or updated pull request.
2. Keep the workspace consistent at relevant checkpoints. During active work, refresh it at least once per hour and whenever you change agents, stop work, open a pull request, merge, or change production state.
3. Refresh the workspace before requesting review or handing work to another assistant or session.
4. After a merge, record the merge result, verification result, and cleanup.
5. Typical assets are `LATEST.txt`, `HANDOFF.md`, `state.json`, `SESSION-LOG.md`, and `DECISIONS.md`, kept in the repository or in an external context directory outside it when the repository does not carry its own handoff assets.
6. Handoff content follows [data protection](../practices/data-protection.md): no secrets, raw sensitive output, or personal data.

Related practice: [multi-agent collaboration](../practices/multi-agent-collaboration.md).
