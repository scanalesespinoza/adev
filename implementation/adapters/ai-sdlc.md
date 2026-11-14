# AI-SDLC adapter

| A-Dev responsibility | AI-SDLC runtime responsibility |
| --- | --- |
| Knowledge ingestion | normalize work input; load reviewed contract and policy bundle |
| Admission | deterministic validation of scope, criteria, authority, and risk |
| Generative work | bounded worker produces plan, change, review, or repair proposal |
| Verification | deterministic build, test, security, contract, and provenance checks |
| Release | independent gate evaluates criteria, rollout, and rollback readiness |
| Learning | sanitized evidence becomes a reviewed policy or knowledge change |

Expose the profile version and policy revision in admission, attempt, validation, and release evidence. Mount or fetch only a pinned reviewed A-Dev policy bundle and fail closed when it cannot be verified.
