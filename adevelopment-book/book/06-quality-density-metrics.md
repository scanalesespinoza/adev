# Quality Density vs. Vanity Metrics

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
"The 10x developer here is the one who ships a secure Google login in 50 clean lines, not 500 noisy ones."

## Broad Quality Cycle (50/50 rule)
- Spend 50% on creation and 50% on verification (Build → Run → Walkthrough).
- Quality is not a phase; it is half the work. Use this split to counter AI "noise" and debt.

## Frugal architect stance
- Use scarcity as a precision filter: if rollback is expensive, Plan A must be correct.
- Rampage then steady state: allow initial AI/infra spike to build, then tighten costs once quality is proven.

**Key takeaway:** Measure value density: simplicity, tests, and low rework beat sheer LOC every time.

**Apply in 20 minutes:** Pick one feature and compute test/code ratio and cyclomatic complexity. Decide one refactor to lower complexity or raise tests.
