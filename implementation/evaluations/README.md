# Implementation evaluations

An adapter demonstrates conformance by accepting complete provenance, policy, and criteria; rejecting missing authority or criteria; preventing a generative worker from widening scope; failing closed on absent policy or verifier; recording a release decision only from independent evidence; and retaining a sanitized trail for success, failure, and escalation.

Run structural checks with Python 3, `jsonschema==4.23.0`, and `PyYAML==6.0.2`:

```bash
python implementation/evaluations/check_repository_layout.py
python -B implementation/evaluations/test_profile.py
```

The suite validates the reference profile and rejects missing sections,
unknown nested fields, fail-open policy, and missing or malformed success
criteria. The behavioral cases above remain adapter obligations.
