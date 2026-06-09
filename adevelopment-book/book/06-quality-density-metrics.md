# Quality Density vs. Vanity Metrics

Early in EvenFlow, raw speed was seductive: the AI could spit hundreds of lines in minutes. But every extra line without proof was a liability waiting to happen. Quality density became the counterweight: fewer lines, more evidence, less rework.

The frugal stance was clear. If rollback was expensive, Plan A had to be correct. Flags kept risky flows off by default; probes stayed on to confirm reality; 50/50 loops forced creation and verification to weigh the same. Scarcity turned into precision: if you can only afford one iteration, it must be clean and test-backed.

By day 45, the bragging rights were not LOC—they were stability: Google login, speakers, schedule, notifications running behind flags with tests and health checks green. The highest-leverage contributor was the one who shipped a secure login in 50 clean lines, not 500 noisy ones. Quality density proved that value is measured by evidence and simplicity, not volume.

## Thesis
1,000 LOC can be a liability; 100 well-designed LOC + tests is real value.

## Efficiency quotient
Measure the "distance to value": how much risk and maintenance do you add per unit of value delivered? Reward smaller, secure, test-backed solutions over raw volume.

## Signals that matter
- Low complexity (e.g., cyclomatic) while covering the full behavior.
- Healthy test/code ratio that proves verification, not trust.
- Adherence to the baseline from the first commit: structure, security, traceability.
- Reduction of rework: fewer fixes needed after the first iteration.

## Story to tell
"The highest-leverage contributor here is the one who ships a secure Google login in 50 clean lines, not 500 noisy ones."

## Broad Quality Cycle (50/50 rule)
- Spend 50% on creation and 50% on verification (Build → Run → Walkthrough).
- Quality is not a phase; it is half the work. Use this split to counter AI "noise" and debt.

## Why this works in 2026
In 2026, generating code is free. The bottleneck is *reading* and *trusting* it. Quality Density solves the trust crisis. By forcing a 50/50 split, you reject the "flood" of AI code and only commit what you can personally verify. It turns the AI from a firehose into a precision laser.

## Frugal stance
- Use scarcity as a precision filter: if rollback is expensive, Plan A must be correct.
- Initial build-out then steady state: allow AI/infra to scale enough to prove quality, then tighten costs once quality is proven.

**Key takeaway:** Measure value density: simplicity, tests, and low rework beat sheer LOC every time.

**Apply in 20 minutes:** Pick one feature and compute test/code ratio and cyclomatic complexity. Decide one refactor to lower complexity or raise tests.
