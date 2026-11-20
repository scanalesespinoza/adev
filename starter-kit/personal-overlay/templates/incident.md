# Incident: [Incident Title]

**Date:** YYYY-MM-DD HH:MM
**Severity:** [Low / Medium / High / Critical]
**Status:** [Investigating / Resolved / Pending]
**AI Assistance:** [None / Claude / ChatGPT / Codex / Copilot / Other]
**AI Model:** [Exact model name when known]
**Sanitization:** [Confirmed: no personal data, company-specific data, secrets, internal URLs, account IDs, or private environment names]

---

## What Failed

Clear generic and impersonal description of what stopped working or what error occurred.

---

## When It Failed

- **Start:** YYYY-MM-DD HH:MM
- **Detection:** YYYY-MM-DD HH:MM
- **Context:** What was happening when the failure appeared.

---

## Evidence

### Logs

```text
[timestamp] Sanitized error message
[timestamp] Sanitized stack trace
```

### Screenshots

- screenshot1.png - Description
- screenshot2.png - Description

### Commands Executed

```bash
# Mark as human-written, AI-suggested, or collaborative.
command that caused or exposed the failure
```

### Output or Error

```text
Complete output or error
```

### System State

```bash
# State before the incident
state before

# State during the incident
state during
```

---

## What Was Tried

### Attempt 1 [Human / AI / Collaboration]

**Source:** [Human reasoning / AI suggestion / Documentation / Other]

**Action:**
What was attempted.

**Command:**
```bash
command
```

**Result:**
What happened.

**Evidence:**
Sanitized output or error observed. Replace specific people, companies, customers, repositories, accounts, and private environments with neutral descriptors.

**AI quality, if applicable:**
- Suggestion quality: [High / Medium / Low]
- Why it failed:

---

### Attempt 2 [Human / AI / Collaboration]

**Source:** [Human reasoning / AI suggestion / Documentation / Other]

**Action:**
What was attempted.

**Command:**
```bash
command
```

**Result:**
What happened.

**Evidence:**
Output or error observed.

**AI quality, if applicable:**
- Suggestion quality: [High / Medium / Low]
- Why it failed:

---

## What Worked

**Final solution:** [Human / AI / Collaboration]
**Source:** [Human debugging / AI suggestion / Documentation / Trial and error]

**Description:**
Describe the solution that resolved the incident.

**Commands:**
```bash
# Mark as AI-generated, human-created, or collaborative.
command1
command2
command3
```

**Resolution evidence:**
```text
Output proving the incident is resolved
```

**AI contribution assessment:**
- What AI did:
- What the human did:
- Time saved by AI:
- Required human correction: [None / Minor / Major / Rejected]
- Would use AI for similar issue: [Yes / No / Maybe]

---

## Remaining Verification

- [ ] Verification 1 [Human / AI]
- [ ] Verification 2 [Human / AI]
- [ ] Verification 3 [Human / AI]

---

## Timeline

| Time | Action | Actor | Result |
|------|--------|-------|--------|
| 10:00 | Incident started | Human | Error X |
| 10:15 | Attempt 1 | AI | Did not work |
| 10:30 | Attempt 2 | Human | Did not work |
| 11:00 | Solution applied | Collaboration | Resolved |

---

## Affected Files

- `path/file1` - Before/after state [Modified by: Human / AI / Collaboration]
- `path/file2` - Before/after state [Modified by: Human / AI / Collaboration]

---

## Lessons for ADEV

If this incident reveals a reusable rule, guardrail, or pattern, update ADEV:

- [ ] Create or update an ADEV rule.
- [ ] Link ADEV rule:

---

**Related:**
- Daily entry: YYYY-MM-DD: `../daily/YYYY-MM-DD.md`
- Session: name: `../sessions/name.md`
