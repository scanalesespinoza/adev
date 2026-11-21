# Definitions

Plain-language definitions of the terms A-Dev uses. The book has longer glossaries: [Spanish](https://github.com/scanalesespinoza/adev-book/blob/main/adevelopment-book/book-es/appendices/B-glosario.md) and [English](https://github.com/scanalesespinoza/adev-book/blob/main/adevelopment-book/book/appendices/B-glossary.md).

| Term | Meaning |
| --- | --- |
| **Agent** | An AI tool that can read files, run commands, and make changes, such as Claude Code or Codex. |
| **Skill** | A folder with a `SKILL.md` file that tells an agent how to do a kind of task. Installing A-Dev registers its skills with your agents. |
| **Managed guidance** | The block between `<!-- adev:start -->` and `<!-- adev:end -->` that the installer writes in `~/.claude/CLAUDE.md` and `~/.codex/AGENTS.md`. Agents read it at the start of every session. |
| **Core doctrine** | The 13 principles in [`ADEV.md`](../ADEV.md) that apply to every task. |
| **Normative** | Mandatory within its scope, as opposed to guidance (recommended) or explanation. |
| **Profile** | How much the agent explains, asks, and does on its own: [guided, standard, or autonomous](../profiles/README.md). |
| **R0–R3** | Risk classes of agent actions: R0 only reads; R1 makes local, easy-to-undo changes; R2 destroys or overwrites something hard to recover; R3 affects anything outside your machine. See [profiles](../profiles/README.md). |
| **Hardness** | A-Dev's framework for making agent behavior predictable: policies, who has authority, risk classes, and skill contracts. See [Hardness](../hardness/README.md). Not to be confused with *harness*, the program that runs an agent. |
| **Overlay** | Extra rules that apply only in a specific context, such as a web product, a platform, or coursework. See [overlays](../overlays/README.md). |
| **Personal overlay** | Your own private repository with your working preferences and the evidence of your work. Optional. See the [template](../starter-kit/personal-overlay/README.md). |
| **Engineering baseline** | The quality standard every change meets without being asked. See the [engineering baseline](../practices/engineering-baseline.md). |
| **Evidence** | A dated, sanitized record of what was intended, done, and verified. |
| **Learning loop** | The step at the end of a task where the agent records lessons as evidence and candidate patterns. See the [learning loop](../skills/adev-learn/SKILL.md). |
| **Candidate pattern** | A lesson that might become a shared rule once enough evidence supports it. See [patterns](../patterns/README.md). |
| **Policy** | A scoped rule with known authority and precedence. |
| **Practice** | Reusable guidance for applying the doctrine. |
| **Doctrine** | The durable principles that govern the practice. |
| **Homedir** | The open-source project where A-Dev's lessons were first proven. It is the source of the case studies. |
| **Pull request (PR)** | A proposed change that others review before it is merged into the main branch. |
| **Conventional Commits** | A commit-message format such as `fix: handle empty input` or `feat: add login`. |
| **Integration branch** | The shared branch changes are merged into, usually `main`. |

Hardness-specific normative terms are defined in [`hardness/00-definition-and-scope.md`](../hardness/00-definition-and-scope.md).
