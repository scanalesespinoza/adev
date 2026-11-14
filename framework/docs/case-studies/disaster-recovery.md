# Backup Is Not Done Until Restore Works

## Context
- Homedir backup and disaster-recovery work exposed a recurring trap: a backup artifact can exist and still fail when real restoration is attempted.
- Version compatibility, expected formats, and retention behavior mattered as much as backup generation.

## Failure pattern
Operational pain surfaced as:
- restore attempts failing against newer runtime expectations,
- ambiguity around expected import formats,
- uncertainty around retention and rotation of older backups.

## Decision
- Treat restore viability as part of the backup definition of done.
- Validate compatibility and retention behavior with real smoke tests.
- Convert DR surprises into explicit runbook or guardrail material.

## Evidence-derived guardrails
- A backup without restore proof is only a hopeful artifact.
- DR validation must happen in the environment that matters or the closest faithful equivalent.
- Retention policy is part of reliability, not housekeeping.

## Reusable lesson
A-Dev should never count a backup mechanism as complete until service reconstruction is demonstrated with data, procedure, and recovery confidence.
