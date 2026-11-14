# Appendix C. Evidence and Method

## Why This Appendix Exists

ADEV was built from real experience, but experience is not universal proof. A repository can show commits without demonstrating productivity. A green pipeline can demonstrate checks without proving user value. An honest account can teach a lesson without making its chronology reproducible.

This appendix explains how the first edition classifies claims, selects sources, and limits conclusions. Its purpose is not to give the entire book a scientific appearance, but to let readers distinguish what was observed, reproduced, remembered or interpreted, assumed, and merely proposed.

The strength of a conclusion should never exceed the strength of its evidence.

## Claim Classes

The edition uses six principal classes:

| Class | Meaning | Editorial form |
| --- | --- | --- |
| **Observed** | An artifact or state was inspected directly. | “The repository shows…,” with source and boundary. |
| **Reproduced** | An explicit method was executed and produced the reported result. | Includes commands, inputs, commit or date, and result. |
| **Reported** | A source states the figure, but this edition did not reproduce it. | “The white paper reports…,” without elevating it to an independent result. |
| **Author account** | Comes from memory or professional experience narrated in interviews. | Attributed to the author, with missing artifacts disclosed when material. |
| **Inferred or estimated** | Derived from data plus assumptions, models, or interpretation. | States assumptions and limits and avoids causal language. |
| **Proposed** | Describes a practice, control, or future not yet sufficiently observed. | Presented as hypothesis, recommendation, or open agenda. |

One story may contain several classes. In EventFlow, the commit count through a boundary is reproduced; reported line counts remain reported; savings and return were estimates. In Homedir, the release gate is public while several incidents remain attributed accounts until their exact executions and commits are linked.

## The Minimum Unit of Evidence

Useful evidence needs more than a URL. Record:

1. **Claim:** what is being supported.
2. **Source:** file, commit, issue, PR, workflow, release, metric, interview, or document.
3. **Boundary:** repository, branch, commit, tag, dates, environment, and applicable population.
4. **Method:** commands, query, procedure, or mode of observation.
5. **Result:** data or behavior obtained.
6. **Permitted interpretation:** what it reasonably demonstrates.
7. **Limitation:** what cannot be concluded.
8. **Status:** observed, reproduced, reported, inferred, estimated, or proposed.
9. **Observation date:** required when the source can change.
10. **Review owner:** the role that will maintain or retire the claim.

Without a boundary, a mutable metric loses meaning. Without a method, another person cannot verify it. Without a limit, readers may extend it beyond what the artifact demonstrates.

## A Practical Source Hierarchy

No perfect hierarchy applies to every question, but ADEV prefers sources close to the claimed effect.

### For Software Changes

A strong combination may include an issue with need and acceptance, applicable decision or policy, diff and commit, tests and checks, review, integrated artifact, identified deployment, behavior verification, and later observation.

Each answers a different question. A diff demonstrates modification; a test demonstrates a property; deployment demonstrates promotion; the final walkthrough demonstrates availability of behavior.

### For Repository Metrics

Prefer initial and final commits, exact commands, tool versions when relevant, inclusion and exclusion rules, grouped identities or separated bots, treatment of merges, binaries, and generated code, and dated results. Interface graphs are useful signals, but reproducible commands with explicit boundaries are easier to audit.

### For Human Experience

Interviews and memories provide conflict, judgment, and meaning that Git does not record. Preserve them as testimony, not disguised telemetry.

When memories differ, seek an artifact, preserve the range or uncertainty, omit unnecessary precision, or record the gap for later research. Homedir's discarded branch teaches the cost of accumulated changes even while its exact duration remains unresolved.

## From Activity to Outcome

One common error in AI-assisted software is treating activity as productivity.

### Commits

Commits show units of history according to integration habits. They have no uniform size or value. More commits may indicate granularity, automation, correction, or noise.

### Lines of Code

Line counts show textual volume under specific counting rules. They do not distinguish functionality, tests, configuration, documentation, generated code, refactoring, or rework.

### Time Between Events

Issue, PR, and commit timestamps measure calendar intervals, not continuous human effort. Measuring effort requires work records or an equivalent method.

### Green Checks

Green checks show that executed controls accepted an observed state. They do not prove the absence of unknown risks or the correctness of the original need.

### Deployment

Deployment shows that an artifact reached an environment and may be healthy. It does not prove adoption, satisfaction, or value without further evidence.

To discuss outcomes, the chain must approach the effect that matters. If the claim is that a user can recover an account, the evidence must traverse that action rather than stop at compilation.

## Causality and Counterfactuals

Saying ADEV caused an outcome requires more than showing that it was used beforehand. Causal evaluation must consider what would have happened without the practice; comparable scope and quality; team experience and composition; simultaneous changes in tools, architecture, or product; the learning period; later maintenance and incidents; selection of successful cases; and complete costs.

EventFlow had no parallel execution of the same product under equivalent conditions without agents. Its history therefore cannot produce a causal productivity multiplier or return.

Without a counterfactual, bounded observations and mechanisms can still be presented: small branches reduce work exposed to abandonment; checks detect certain failure classes; durable context reduces repeated instructions. Even these propositions must be tested in their applied context before quantitative impact is attributed.

## Method for Failure-Derived Cases

ADEV's most valuable cases follow this structure:

1. **Context:** relevant product, environment, and moment.
2. **Constraint:** what limited the options.
3. **Expectation:** what was believed would happen.
4. **Failure or conflict:** what actually happened.
5. **Evidence:** how it was detected and understood.
6. **Decision:** which intervention was chosen and why.
7. **Validation:** what restored confidence.
8. **Guardrail:** what changed for the next attempt.
9. **Asset:** where the learning remained.
10. **Limit:** what cannot be generalized.

This avoids both unsupported anecdote and metrics without human decision. The preferred pattern is:

> **Incident → decision → guardrail → validation → reusable asset.**

If a story cannot yet link every element, publish it with the gap or leave it in the backlog.

## Promote a Lesson to Doctrine

One failure does not automatically justify a global rule. Ask whether the risk or repetition is significant, the minimum useful scope is known, the rule would have changed the outcome, compliance can be observed, an owner and review event exist, it duplicates or conflicts with another rule, and the pattern is portable rather than overlay-specific.

A lesson can live in code, a test, checklist, runbook, or case without becoming doctrine. The correct shelf keeps the baseline applicable.

## Mutable Sources and Durable Links

A URL to a main branch shows current state, not necessarily the state observed during writing. For material claims, pin the link to a commit or tag, record the observation date, cite the specific file or workflow, avoid linking only to the root when a precise source exists, and update the record when the claim deliberately depends on current state.

If a source disappears or becomes private, a past truth does not automatically remain publishable evidence. Preserve only permitted evidence and review whether the claim can still be published.

## Negative Evidence and Uncertainty

Not finding a failure does not prove absence. Not finding an artifact does not prove an incident never occurred.

Use formulations such as “not observed in this sample,” “the check did not detect the condition,” “the source was unavailable,” “the account was not reproduced,” or “the hypothesis remains open.”

Uncertainty is part of the result. Concealing it creates undeserved precision. Adverse results should also remain visible: failed attempts, regressions, retired rules, noisy controls, and adoptions without benefit. A practice publishing only successes cannot learn honestly.

## Privacy and Minimization

Traceability does not authorize storing sensitive information. Evidence records should exclude secrets and credentials, unnecessary personal data, confidential customer or employer information, private infrastructure details, raw prompts or outputs containing sensitive content, and details enabling dangerous access.

Use roles, ranges, and neutral descriptors. Preserve only what is needed to support the pattern. If a credential appears in history, rotate it; documenting the incident does not make it safe.

## Rights, Citations, and AI Assistance

This edition was developed with AI assistance. Selection, interpretation, editing, and final responsibility belong to the author. Assistance should be disclosed in the preliminary matter and publication materials.

For external sources, cite ideas and data sufficiently, avoid reproducing long passages without permission, verify licenses for code and media, use third-party marks descriptively, record permissions for contributions or testimonials, and review rights before translating or adapting published material.

A citation does not automatically grant permission to redistribute a source in full.

## Conflicts of Interest

The author created ADEV and led its founding projects. This access provides deep knowledge and also introduces selection and interpretation bias.

The edition mitigates this through explicit limits, public sources where available, reproducible commands, removal of unvalidated promotional estimates, an open research agenda, and distinction between founding cases and independent adoption.

It does not eliminate the conflict. Evidence from teams uninvolved in ADEV's creation will be needed to evaluate portability and impact with greater authority.

## Recommended Editorial Record

For each new material claim, use a record like this:

```text
ID:
Claim:
Class: observed | reproduced | reported | account | inferred | estimated | proposed
Source:
Boundary and date:
Method:
Result:
Permitted interpretation:
Limitations:
Privacy and permissions:
Owner and next review:
```

Connect it to the corresponding chapter, case, asset, and research agenda. If the method cannot be published because it is sensitive, declare the limitation and reduce the strength of the conclusion.

## Evidence Shelves for This Edition

- [`docs/evidence-index.md`](../../../docs/evidence-index.md) maps principles to sources and cases.
- [`docs/evidence/eventflow-metrics-reproduction.md`](../../../docs/evidence/eventflow-metrics-reproduction.md) preserves the EventFlow metrics audit.
- [`docs/evidence/homedir-claim-boundaries.md`](../../../docs/evidence/homedir-claim-boundaries.md) separates Homedir artifacts, accounts, and gaps.
- [`docs/case-studies/`](../../../docs/case-studies/) contains narratives of failures and decisions.
- [`docs/research-agenda.md`](../../../docs/research-agenda.md) records questions that cannot yet be closed.
- [`publishing-kit/07-ai-disclosure-and-rights.md`](../../../publishing-kit/07-ai-disclosure-and-rights.md) maintains the assistance, rights, and permissions checklist.

## Final Rule

Evidence is not accumulated to impress. It is preserved to improve decisions, permit review, and limit what we claim.

When a story is stronger than its proof, keep the story as experience and narrow the conclusion. When a metric is reproducible but does not measure value, publish the data and reject the inference. When new evidence appears, allow it to change the doctrine.

That is also ADEV: applying to our own claims the same discipline we require of software.
