# Personal overlay template

A personal overlay is your private layer on top of A-Dev: how you like to work, the evidence of what you and your agents actually did, and the lessons that might one day become shared doctrine. A-Dev stays public and generic; the overlay stays yours.

```text
A-Dev (public)           core doctrine, Hardness, profiles, overlays, practices
  └─ your overlay        working model, evidence, candidate patterns  (private)
       └─ repository     the project's own AGENTS.md and checks
```

## Create yours

1. Copy this directory into a new **private** repository.
2. Rename the skill: change `name:` in [`SKILL.md`](SKILL.md) to a unique lowercase name, such as `jdoe-context`, and adjust its description.
3. Fill in [`profile/working-model.md`](profile/working-model.md). Keep it short; agents read it at the start of every session.
4. Install it together with A-Dev:

   ```bash
   bash install/bootstrap.sh --workspace "$HOME/workspace" --profile standard \
     --overlay-repo https://github.com/<you>/<your-overlay>.git
   ```

## Contents

| Path | Purpose | Loaded |
| --- | --- | --- |
| [`SKILL.md`](SKILL.md) | Session startup and evidence maintenance for agents | Every session |
| [`profile/working-model.md`](profile/working-model.md) | Language, delegation style, verification expectations, environment, profile | Every session |
| [`evidence/INDEX.md`](evidence/INDEX.md) | One line per evidence record, newest first | Every session |
| `evidence/daily/`, `evidence/incidents/`, `evidence/sessions/` | Dated, sanitized records | On demand |
| [`templates/`](templates/) | Shapes for daily, incident, and session records | When writing |
| [`patterns/`](patterns/README.md) | Candidate patterns and their promotion to A-Dev | On demand |

Agents load only the working model and the index at startup. The context stays small as evidence grows, and agents open a record when a task needs it.

## Rules that still apply

The overlay specializes A-Dev; it cannot weaken it. In particular, [data protection](https://github.com/scanalesespinoza/adev/blob/main/practices/data-protection.md) applies in private repositories too: no secrets, raw sensitive output, customer details, or internal URLs. Use neutral roles such as "the operator" and "the customer environment".
