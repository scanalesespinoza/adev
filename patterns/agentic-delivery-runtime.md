# Candidate patterns: agentic delivery runtimes

**Status:** candidate. These patterns come from driving an agent-native delivery runtime toward an issue-to-production run. They are not A-Dev doctrine. Apply them when the context matches, and contribute evidence for or against them.

**Context:** systems where agents plan, implement, and review changes inside a controlled runtime with admission, verification, and release gates, for example an implementation of the [agent-native operating model](../implementation/architecture/agent-native-ai-sdlc.md).

**Evidence:** two dated hardening sessions, recorded in the author's private evidence repository: session A (2026-11-19) and session B (2026-11-20, two working windows). `Fn` refers to finding n in those records. The summaries below state what was observed; raw records are not public.

## Architecture

### P1. Depend on a model *service*, never on a model *tool*

The runtime should consume models only through a standard API (OpenAI-compatible or another market standard), selected by an adapter. Agent CLIs belong outside the runtime, behind a service that simulates a MaaS. The runtime then cannot tell a hosted API from a local model or a wrapped CLI, and swapping one for another is a configuration transition, not a code path. Evidence: session A F5–F6, session B goal.

### P2. A CLI wrapped as an API must restate its contract last

When the client appends its own system prompt, the last instruction the model sees wins in practice. Restate the answer format as the final line, keep the parser strict, retry once, then fail closed. Measure first-attempt validity, because retries hide the cost. Evidence: session B F3 (0/11 → 14/14).

## Admission and review

### P3. Admission and review share one contract

An issue admitted as ready must be judgeable by the reviewer with the inputs the reviewer actually gets. If it is not, admission proposes a revised issue rather than admitting a run that is bound to fail. Evidence: session A F1.

### P4. Guards and advertised schemas must agree

A security guard that is stricter than the tool schema shown to the model turns ordinary model behavior into fail-closed stops. Either advertise exactly the guarded subset, or accept what the schema allows within policy. Store enough non-sensitive detail (action names, argument keys) to diagnose a refusal. Evidence: session B F5 (open).

## Candidates and verification

### P5. When the workspace is the candidate, keep by-products out of it

Anything a model-run command writes (bytecode, test caches, dependency folders) becomes part of the candidate. Prevent by-products at the source with environment settings, and remember that agent tools may pass an allowlisted environment, so the setting must be allowlisted too. Keep the verifier strict rather than filtering the delta. Evidence: session B F1.

## Timeouts and benchmarks

### P6. Benchmark-derived timeouts must separate fixed latency from throughput

Extrapolating a short probe's time to a large envelope multiplies the fixed per-call latency. To avoid it:
- measure the latency separately (smallest of several samples);
- remove it from each probe, with a cap;
- add it back once;
- never go below the unpadded measured estimate.

Publish the inputs (latency, rates, unpadded estimate) so a gate's refusal can be explained. Evidence: session B F4 (159 s → 56 s).

### P7. Every window must fit the window that contains it

A per-call timeout is useless if a fixed downstream window (a mailbox wait, a reservation, a run cap) is shorter. Derive the downstream windows from one reviewed value and check the containment at readiness (fail closed). Evidence: session A F6, session B F4.

## Installation and upgrades

### P8. Closed, journaled transitions; images-only refreshes chained by custody

Each change to a live installation is a transition with:
- a journal and fence;
- a verified backup;
- a phased rollout with intake enabled last;
- a closed delta;
- independently reviewed approval documents.

Make the common case (new images, same configuration) a repeatable transition whose source is the previous completed journal. Count a generation as finished only when its final report is published, so a crash leaves it resumable. Evidence: session B F2.

### P9. Rehearse in a disposable environment, then smoke-test against real state read-only

Unit fixtures hide defects that real state reveals. Rehearse on a disposable cluster, then run read-only checks of the new code against the real journals and archives before installing. Evidence: session A F3, session B F2.

## Process

### P10. Independent audits on every change, with the code and not the conclusion

Brief the auditor on goal, context and specific questions; ask for severity; fix blocking findings and re-audit. In two sessions, audits found blocking defects that tests did not (a mock-hidden oracle, a crash-window recovery gap). Evidence: session A F3, session B F2.

### P11. Diagnose from data before changing code

Base each fix on direct evidence:
- the file list of the refused delta;
- per-call validity logs;
- the benchmark's published fields;
- database states of calls and runs.

When the stored evidence cannot answer the question (only digests), say so and record the hypothesis as unconfirmed. Evidence: session B F1, F3–F5.

### P12. Fail-closed stops are signals, not obstacles

Every stop in these sessions was correct behavior that exposed a real defect upstream: recipe refusal, readiness-gate refusal, review `uncertain`. Fix the cause; never relax the gate to get through. Evidence: session A F4, session B F1, F4, F5.

### P13. Agent shell hygiene

- Kill by exact PID, never by a pattern that the killing command itself contains.
- Use the harness's background execution, not `&`, so completion is observable.
- Clean generated caches from worktrees before committing.

Evidence: session B errors.

### P14. Design for the second run, not the first

A demonstration can succeed with one-shot resources (single-use slots, one recipe per issue, short approval windows, bespoke upgrade journals). Each later run then consumes something that is not replenished, so progress stalls on capacity rather than correctness. Treat repeatability as a release criterion from the start: pools, retries, renewals and generic upgrades. Evidence: session B, second window, F7.

### P15. Before a strategic decision, run independent assessments with different lenses

Split the question into separate read-only lenses (generality, repeatability, adoption surface), brief each assessor with evidence requirements, and only then synthesize. The three assessments converged independently, which made the redirection decision clear. Evidence: session B, second window, F7.

### P16. Verify a mechanism in the pinned upstream source before acting on an inference

When an audit infers how a third-party component behaves (for example which credentials it uses), read the source at the installed version before changing anything. Evidence: session B, second window, F8.
