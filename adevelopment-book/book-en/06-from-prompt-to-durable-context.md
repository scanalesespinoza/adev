# 6. From Prompt to Durable Context

## The Prompt Should Not Carry the Entire System

When we begin working with agents, concentrating every expectation in the prompt seems reasonable. We explain the problem, architecture, coding style, tests, security, Git flow, and delivery process. The more detailed the instruction, the greater our apparent chance of a good result.

That approach can work in an initial interaction. It does not scale as a practice.

Rewriting a long prompt for every change takes time, encourages omissions, and creates variation among people. A rule appears in one request and disappears in the next. Two team members describe the same process differently. Agent behavior ends up depending on the memory and care of whoever wrote that day's instruction.

ADEV aims for prompts to become smaller as the system of work matures.

The specific instruction should state what we need now. Recurring expectations should live in durable, versioned, shared context.

## Repetition Reveals Context Debt

Every time we copy an instruction between prompts, we should ask whether it truly belongs to the iteration or should be part of the repository.

Phrases like these often recur:

- Read the architecture documentation before changing components.
- Do not modify the main branch directly.
- Build and test before publishing.
- Do not record secrets or sensitive data.
- Keep the change within the issue.
- Document a structural decision before implementing it.

If these are stable expectations, rewriting them is context debt. Depending on their nature, they should move into `ADEV.md`, a policy, template, skill, checklist, or automated control.

This promotion has two benefits. It reduces the effort required to formulate requests and makes rules inspectable by the whole team. Behavior no longer depends on private prompts.

> What repeats consistently in prompts is a candidate for becoming working infrastructure.

Not every repetition deserves institutionalization. It may be a temporary coincidence or personal preference. The living baseline requires observation, classification, and validation before something becomes doctrine.

## The Prompt as a Temporary Instruction

After recurring behavior has been extracted, the prompt remains focused on what is particular:

- The current problem.
- The expected product action.
- The issue or source of scope.
- Exceptional constraints for this iteration.
- The specific evidence required.

A mature instruction may be brief:

> Analyze issue 123, confirm that it can be resolved as an atomic change, and proceed through a pull request under the repository baseline.

The sentence is short, but it is not vague if the system shares the meaning of its terms.

*Issue* represents a contract for problem, scope, and acceptance. *Atomic change* activates rules for size, reversibility, and evidence. *Pull request* implies a short-lived branch, local validation, review, checks, integration, and follow-through to the relevant environment. *Baseline* leads to product, architecture, quality, security, and operations.

The prompt does not contain the entire contract. It activates it.

## Semantic Compression

When a short word or phrase connects to a shared contract, we achieve semantic compression. We reduce the instruction without reducing its meaning.

This compression works only when:

- The term has a stable definition.
- People and agents can find its canonical source.
- The contract contains applicable criteria, not only aspirations.
- Contradictions have known precedence.
- Execution produces observable evidence.

Without these conditions, a short phrase hides ambiguity. “Create a quality PR” does not help if nobody knows which controls define quality, what scope the PR admits, or who may approve it.

Maturity is not demonstrated by short prompts. It is demonstrated by how much trustworthy meaning a short instruction can activate.

## Layers of Context

Durable knowledge should not live in one file. A layered structure makes it possible to load what the change requires.

### Entry Point

`ADEV.md` declares principles, authority, precedence, and routes to other sources. It should remain small enough to read frequently.

### Domain

Product, architecture, security, quality, and operations contain specialized knowledge. The agent consults the layer related to the current scope.

### Flow

Issue and PR templates, checklists, policies, and skills explain how to perform recurring work.

### Iteration

The issue, prompt, and acceptance criteria express the temporary need.

### Evidence

Tests, checks, commits, reviews, deployments, and verifications demonstrate what happened.

These layers form a route:

> Specific instruction → applicable principles → domain knowledge → operating flow → evidence.

The route avoids loading everything indiscriminately and preserves traceability to the information that governed the change.

## Retrieve Context; Do Not Flood the Conversation

A baseline can grow beyond what is reasonable for the active memory of one interaction. The answer is not necessarily to paste more text into the prompt or turn the entire repository into permanent model knowledge.

First improve organization and retrieval:

- Maintain a small index with clear routes.
- Divide knowledge by domain and authority.
- Consult only sources related to the change.
- Use skills for repeatable processes.
- Add tools that retrieve files or decisions when needed.
- Summarize without removing critical constraints.
- Confirm that the agent found the correct sources before acting.

Training or adapting a model can be useful for some products, but that is a different decision with its own data, maintenance, cost, and evaluation requirements. It should not be the automatic answer to disorganized documentation.

ADEV keeps operational knowledge near the repository, where it can be reviewed, versioned, and connected to the system it governs.

## A Skill Is Not a Saved Prompt

Saving a repeated prompt is a first step, but a reusable practice needs more structure.

A skill can define:

- When it should be used.
- Which context it needs.
- Which steps and decisions it contains.
- Which actions it may perform.
- When it must stop.
- Which evidence it must return.
- How its result is evaluated.

This turns an informal instruction into a portable contract. The skill still needs adaptation to its runtime, but its intent can remain vendor-neutral.

The same principle applies to templates and checklists. We do not store text merely to avoid typing. We turn it into a mechanism that guides behavior and produces comparable results.

## Verify That the Context Was Understood

The existence of a file does not mean the agent applied it. Before a consequential action, we can ask the agent to explain:

- Which sources it consulted.
- Which constraints it identified.
- Which decisions it considers structural.
- What authority it has to proceed.
- Which points require clarification.
- How it will verify the result.

This response need not become a long document. It acts as a preflight, exposing an incorrect context route before the system is modified.

We must observe behavior too. If an agent claims to understand a rule and repeatedly violates it, the solution may require an executable check, clearer wording, or a different tool. Repeating the same prompt more emphatically is rarely a durable strategy.

## Keep Context Current

Versioned context can become obsolete. Architecture changes, a command disappears, a policy is replaced, and a template continues to describe the old flow.

To prevent this:

- Every source should have identifiable authority.
- Decisions should link to the assets they affect.
- Process changes should update instructions and controls in the same iteration.
- Duplicate references should be consolidated.
- Examples should be distinguishable from current rules.
- Periodic curation should review broken routes and superseded knowledge.

A short prompt operating on obsolete context produces errors with great efficiency. Semantic compression amplifies coherence and drift alike.

## The Initial Prompt and the Mature Prompt

When a repository begins, the prompt may need to explain analysis, design, and implementation in considerable detail. That stage is valid. It reveals which contracts do not yet exist.

After each iteration, ask which part of the instruction:

- Was unique to the problem and should disappear with it.
- Will be reused and needs promotion.
- Contradicted an existing rule.
- Could become a template or skill.
- Can be verified through automation.
- Must remain a matter of human judgment.

Over time, the prompt stops teaching the entire method and begins pointing to the current need within a shared method.

## Practice: Reduce a Prompt without Losing Meaning

Select a recent prompt and label each paragraph:

1. Specific need.
2. Cross-cutting principle.
3. Product or architecture knowledge.
4. Repeatable procedure.
5. Verifiable control.
6. Preference without evidence.

Keep the first category in the instruction. After confirming their correctness, move categories two through five to the appropriate durable source. Remove or investigate the sixth.

Then rewrite the prompt and ask the agent to list the contracts it activated. If meaning survives with less repetition, the system has gained maturity.

## Chapter Outcome

After this chapter, the reader can recognize context debt; separate temporary instruction from durable contracts; organize knowledge in layers; use semantic compression without hiding ambiguity; and promote repeated patterns into baselines, templates, skills, or controls.

## Bridge to Practice

- [`framework/hardness/06-agent-consumption-guide.md`](../../framework/hardness/06-agent-consumption-guide.md) describes how an agent discovers and consumes repository contracts.
- [`framework/hardness/02-skill-contract-template.md`](../../framework/hardness/02-skill-contract-template.md) provides a vendor-neutral structure for reusable capabilities.
- [`starter-kit/examples/minimal-adev-loop/prompts/iteration-01.md`](../../starter-kit/examples/minimal-adev-loop/prompts/iteration-01.md) demonstrates a small instruction connected to a baseline and roadmap.
