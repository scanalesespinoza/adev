# English v2.0.0 Adaptation Plan

## Editorial decision

The English edition of *ADEV: The Practice of AI Agentic Development* will be adapted from the consolidated Spanish `v2.0.0` release at commit `061425611c19a55faea90bdcd94bf99e5beb4894`.

The Spanish manuscript is the source canon for this edition. The existing English manuscript under `adevelopment-book/book/` is a historical predecessor: it contains useful vocabulary and early formulations, but its structure and approximately 5,967 words do not represent the 32,388-word Spanish edition. It must not be expanded in place or presented as an English equivalent of `v2.0.0`.

The new adaptation will live under `adevelopment-book/book-en/`. The historical English manuscript remains untouched until the complete replacement has been built, reviewed, and released.

## Outcome

Produce a professional English edition that:

- preserves the author's argument, experience, and responsibility model;
- reads as natural professional English rather than translated Spanish;
- retains the software-as-habitat metaphor where it clarifies the practice;
- keeps evidence boundaries and uncertainty at least as explicit as the Spanish source;
- preserves direct links to framework, starter-kit, and evidence assets;
- generates independent PDF and EPUB artifacts without changing the Spanish release;
- remains traceable to Spanish `v2.0.0` at chapter and release level.

## Adaptation principles

1. Translate meaning, not syntax. Rebuild a sentence when Spanish cadence would sound ceremonial, repetitive, or ambiguous in English.
2. Preserve the author's first-person authority where the source describes experience; do not turn experience into universal fact.
3. Keep claims calibrated. Do not strengthen words such as *can*, *may*, *observed*, or *proposed* into guarantees.
4. Preserve Latin American context when it explains the origin of an idea. Add a brief bridge only when an English-language reader would otherwise miss the relevance.
5. Prefer international technical English. Avoid regional idioms that narrow the audience unnecessarily.
6. Keep product names and public repository names unchanged. Preserve source links and their stated evidence limitations.
7. Use `ADEV` for the practice, `ADEV.md` for the repository entry point, and `AI Agentic Development` as the canonical expansion.
8. Treat `agentic` as a technical adjective, not as a claim that a model possesses human agency.
9. Keep framework and starter-kit assets canonical in English; translate the explanation around them without duplicating their normative content.
10. Review each completed part for terminology drift, missing paragraphs, altered claims, broken links, and reading rhythm before advancing.

## Terminology baseline

| Spanish source | Canonical English | Editorial note |
| --- | --- | --- |
| ADEV | ADEV | Never expand as *Augmented Development* in this edition. |
| AI Agentic Development | AI Agentic Development | Canonical expansion and subtitle terminology. |
| agente | agent | A tool or software actor; never anthropomorphize by default. |
| agéntico | agentic | Use for systems or work shaped around agents. |
| arquitecto | architect | The human role that retains intent, judgment, and responsibility. |
| baseline / línea base | baseline / living baseline | Use *living baseline* when the source emphasizes learning and evolution. |
| planos | blueprints | Use *architectural plans* only when literal clarity is needed. |
| hábitat de software | software habitat | Preserve as a core metaphor and define it at first use. |
| iteración atómica | atomic iteration | One demonstrable intent, not necessarily one file or commit. |
| microiteración | micro-iteration | Hyphenated in prose. |
| cadena de evidencia | evidence chain | Avoid *proof* when the source establishes evidence rather than certainty. |
| inner loop | inner loop | Keep the established technical term. |
| outer loop | outer loop | Keep the established technical term. |
| cierre / definición de cierre | closure / definition of done | Choose according to whether the source means an event or a contract. |
| restricción | constraint | Prefer over *restriction* in architecture and delivery contexts. |
| responsabilidad | responsibility / accountability | Use *responsibility* for ownership; reserve *accountability* for answerability. |
| criterio | judgment | Prefer over *criterion* when describing professional discernment. |
| práctica | practice | A repeatable way of working, not merely an exercise. |
| asset técnico | technical asset | Retain because the repository uses assets as durable operating artifacts. |
| entrega | delivery | Use *deployment* only when the source explicitly means production deployment. |

## Canonical chapter map

| Spanish `v2.0.0` source | English adaptation target | Working title |
| --- | --- | --- |
| `00-portada.md` | `00-about-this-edition.md` | About This Edition |
| `00-preliminares.md` | `00-before-you-begin.md` | Before You Begin |
| `01-manifiesto-adev.md` | `01-adev-manifesto.md` | The ADEV Manifesto |
| `02-el-software-como-habitat.md` | `02-software-as-habitat.md` | Software as Habitat |
| `03-el-arquitecto-y-el-agente.md` | `03-the-architect-and-the-agent.md` | The Architect and the Agent |
| `04-la-baseline-viva.md` | `04-the-living-baseline.md` | The Living Baseline |
| `05-iteraciones-atomicas.md` | `05-atomic-iterations.md` | Atomic Iterations |
| `06-del-prompt-al-contexto.md` | `06-from-prompt-to-durable-context.md` | From Prompt to Durable Context |
| `07-crear-verificar-y-demostrar.md` | `07-create-verify-and-demonstrate.md` | Create, Verify, and Demonstrate |
| `08-autonomia-seguridad-y-responsabilidad.md` | `08-autonomy-security-and-responsibility.md` | Autonomy, Security, and Responsibility |
| `09-equipos-y-agentes.md` | `09-teams-and-agents.md` | Teams and Agents |
| `10-eventflow-el-laboratorio.md` | `10-eventflow-the-laboratory.md` | EventFlow: The Laboratory |
| `11-homedir-el-campo-de-prueba.md` | `11-homedir-the-proving-ground.md` | Homedir: The Proving Ground |
| `12-adoptar-adev.md` | `12-adopting-adev.md` | Adopting ADEV |
| `13-objeciones-limites-y-futuro.md` | `13-objections-limits-and-the-future.md` | Objections, Limits, and the Future |
| `14-cierre.md` | `14-closing-start-with-a-repository.md` | Closing: Start with a Repository |
| `appendices/A-assets-tecnicos.md` | `appendices/A-technical-assets.md` | Technical Assets |
| `appendices/B-glosario.md` | `appendices/B-glossary.md` | Glossary |
| `appendices/C-evidencia-y-metodo.md` | `appendices/C-evidence-and-method.md` | Evidence and Method |

## Delivery sequence

Each stage is one atomic PR and must compare its target files against the Spanish source before review.

1. **Editorial foundation:** adaptation contract, terminology baseline, directory README, narrative index, and preliminary matter.
2. **Part I — Responsibility changes form:** chapters 1–3.
3. **Part II — The operating system of the practice:** chapters 4–7.
4. **Part III — Governing autonomy:** chapters 8–9.
5. **Part IV — Learning from execution:** chapters 10–11.
6. **Part V — Adopting and extending ADEV:** chapters 12–14.
7. **Appendices:** technical assets, glossary, and evidence method.
8. **Developmental review:** completeness, argument continuity, cultural adaptation, evidence calibration, and terminology audit.
9. **Copyedit:** English grammar, rhythm, headings, punctuation, links, and cross-references.
10. **Production:** English manifest, cover treatment, PDF, EPUB, metadata, EPUBCheck, full visual QA, rights review, and release checklist.

## Stage validation

For every translated file:

- compare heading count and semantic coverage with the Spanish source;
- confirm that no source section disappeared without an editorial note;
- search for stale Spanish prose outside intentional quotations or titles;
- check all relative and external links;
- verify terminology against this baseline;
- preserve the source's distinction between observation, interpretation, proposal, and unknown;
- record any deliberate adaptation that changes examples, order, or cultural framing.

Word count is a diagnostic, not a target. English will often be shorter than Spanish; unexplained large differences require review but do not prove incompleteness.

## Version and release identity

The manuscript carries edition version `2.0.0` and language `en`. The proposed GitHub tag is `v2.0.0-en`, with stable artifact names `adev-book-en.pdf` and `adev-book-en.epub`. The tag remains a proposal until the complete English candidate is approved; no release action belongs to the translation stages.

## Explicit exclusions

- Do not translate from the historical English manuscript back into the Spanish canon.
- Do not silently replace `adevelopment-book/book/` while the new edition is incomplete.
- Do not introduce new doctrine, metrics, testimonials, or claims during translation.
- Do not reuse the Spanish cover without reviewing English typography and channel requirements.
- Do not publish partial chapter groups as an English `v2.0.0` release.

## Completion gate

The English edition is complete only when every Spanish manifest target has an adapted counterpart, the developmental and copyediting audits are closed, PDF and EPUB pass their production checks, the complete PDF has been visually inspected, and the author approves the English candidate and its release identity.
