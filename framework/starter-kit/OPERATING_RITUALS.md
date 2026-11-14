# Operating Rituals

These rituals convert A-Dev from aspiration into repeatable behavior.

## 1. Pre-iteration ritual
- State scope in one paragraph.
- State the validation path before implementation.
- Confirm the baseline still matches repo reality.

## 2. Failure-to-rule ritual
- When something breaks, stop adding scope.
- Identify whether the failure came from definition, implementation, validation, or environment.
- Write the smallest reusable rule that would have prevented repetition.

## 3. Multilingual sweep ritual
- Review touched UI surfaces for hardcoded text.
- Check edge views, admin surfaces, and recently added flows.
- Treat language drift as product debt, not a cosmetic follow-up.

## 4. CI/CD recovery ritual
- Confirm the build path, image path, and deployment path tell the same story.
- Validate user-visible behavior, not only process liveness.
- Update documentation if the real delivery path differs from the written one.

## 5. Performance ritual
- Compare against a concrete baseline.
- Measure error rate and latency before proposing redesign.
- Rank fixes by measured leverage.

## 6. Backup/DR ritual
- Validate restore viability, not only backup generation.
- Treat retention and rotation as part of reliability.
- Preserve the recovery procedure as a reusable asset.
