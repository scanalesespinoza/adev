# Multi-agent collaboration

Use this practice when several people or agents, local or remote, work on the same repository. It applies the core principles of [inspecting before mutating](../ADEV.md#core-principles) and landing everything through review. Treat each agent as a team member that must synchronize, preserve others' work, validate, and coordinate.

1. **Start with situational awareness.** Inspect the branch, remotes, working tree, untracked files, local commits, and recent upstream changes before editing.
2. **Fetch before work.** Pull, merge, or rebase only when the working tree is clean or local changes are safely preserved.
3. **Never overwrite unreviewed local work.** Treat local edits from another person or agent as active work until proven otherwise.
4. **Coordinate file-level edits.** Avoid parallel changes to a file that someone else is editing unless coordination is explicit.
5. **Integrate continuously.** Keep branches small, integrate frequently, validate the changed surfaces, and resolve conflicts promptly.
6. **Communicate state changes.** When work completes or changes hands, update the handoff assets the repository uses. See the [shared handoff overlay](../overlays/multi-agent-handoff.md).
7. **Verify before push.** Check the status, log, and diff against the integration branch before pushing.
8. **Re-synchronize only when safe.** Re-sync immediately before pushing, but never pull or rebase over a dirty or unexplained tree.
9. **Use atomic commits.** Each commit should be self-contained and independently revertible.
10. **Attribute agent actions.** Record which agent made a change in commit trailers, pull request descriptions, or handoff notes.
11. **Validate after integration.** Run focused validation after merging or rebasing upstream changes.
12. **Avoid force pushes.** Never force-push a shared branch unless everyone working on it has agreed.
13. **Lock critical operations.** Agree on a coordination protocol before releases, schema changes, migrations, and production promotions.

Evidence should capture the branch state, local uncommitted files, upstream divergence, integration decisions, and validation after synchronization.

## Small team quick setup

For a course project or a small team that is new to this:

1. Create one shared repository and add an `AGENTS.md` at its root that declares the team's choices, for example:

   ```text
   A-Dev profile: guided
   A-Dev context: academic
   Each task gets its own branch and pull request. Another member reviews before merging.
   ```

2. Each member either installs A-Dev (see the [quick start](../README.md#quick-start)) or pastes the [agent prompt](../README.md#use-a-dev-without-installing) at the start of each session, for example in a web chat.
3. Work in short tasks: pull `main`, create a branch, make the change, run the tests, push the branch, and open a pull request. If pull requests are new to you, GitHub's [guide to pull requests](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/about-pull-requests) explains them.
4. A teammate reviews and merges. Nobody pushes directly to `main`, and nobody rewrites a teammate's work without telling them.
5. Declare AI use the way the course or team requires.
