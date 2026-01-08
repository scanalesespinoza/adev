# Templates

## Template 1: Atomic Iteration (1–2h)
- **Objective (Feature):**
- **Minimum scope:** what is in / what is NOT in.
- **Baseline applied:** checklist used.
- **Prompt used:** link/ID.
- **Evidence:** PR/commit + CI results.
- **Recovery note (if it broke):** what failed, how it was fixed inside the hour, and the baseline rule added.

## Template 2: Sprint Log / Evidence Timeline
- **Timestamp → Action → Result → Link (issue/prompt/commit/build)**

## Template 3: Baseline Folder Checklist
- **Repository structure**
- **Conventions (names, folders)**
- **Security (minimums)**
- **Testing (minimums)**
- **CI gates (minimums)**
- **Explainability:** can the change be described in one paragraph (3 AM test)?

## Template 4: Prompt anatomy (per iteration)
- **Goal:** single task the AI must achieve.
- **Context:** baseline links (security, coding standards), roadmap node/persona, and constraints.
- **Quality gates:** tests and metrics required to accept the output.

## Template 5: 24-hour A-Dev marathon
- **Definition (15m):** feature → prompt with scope.
- **Orchestration (30–45m):** direct AI with baseline rules.
- **Verification (10–15m):** run tests/security, no carry-over debt.
- **Integration (5m):** merge + baseline update with lesson learned.
