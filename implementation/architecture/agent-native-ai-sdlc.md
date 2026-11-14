# Agent-native AI-SDLC operating model

An AI-SDLC optimizes for safe, observable delivery by agents. A stage exists only when it reduces uncertainty, constrains risk, produces a needed artifact, or verifies an outcome.

```text
trusted knowledge + policy + success criteria
  -> deterministic admission
  -> bounded generative planning or implementation
  -> deterministic validation and risk evaluation
  -> independent review or repair when needed
  -> release decision and evidence
  -> reviewed learning update
```

| Component | Owns | Must not own |
| --- | --- | --- |
| Knowledge ingestion | provenance, freshness, classification | policy override or release approval |
| Deterministic controller | admission, policy, limits, isolation, evidence | creative implementation judgment |
| Generative worker | bounded plans, code, candidate fixes | credentials, authority expansion, self-approval |
| Deterministic verifier | build, test, security, contract checks | treating ambiguity as success |
| Release manager | declared criteria, rollout, rollback evidence | changing criteria after results |

Invariants: untrusted text is data; every mutable action is bounded; generative claims need independent verification; policy resolution precedes tool use; required absent or ambiguous signals fail closed; learning changes future policy only through reviewed, versioned artifacts.
