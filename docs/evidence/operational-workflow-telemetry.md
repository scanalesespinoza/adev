# Operational Workflow Telemetry Evidence

## Purpose

This evidence note records the transferable findings from a local, sanitized analysis of interactive development telemetry. It preserves aggregate evidence without committing raw commands, prompts, paths, identities, credentials, outputs, or project-specific content.

## Method

- Processing occurred locally without sending the source dataset to a generative model.
- Sensitive-pattern filtering happened before aggregation.
- Session markers were separated from command events.
- Exact commands were reduced to capability signatures and adjacent capability transitions.
- Findings were reviewed for portability across languages, operating systems, tools, providers, repositories, and industries.

## Aggregate observations

The analyzed source contained 19,606 JSONL records: 11,209 usable command events, 8,397 session markers, and only 215 distinct exact commands. This high duplication means raw frequency is insufficient evidence of value.

Repeated transitions showed material friction in these capability classes:

- workspace navigation followed by agent or build invocation;
- repeated invocation of the same agent or orchestration interface;
- alternating application, build, and orchestration commands;
- repeated build or runtime attempts;
- session continuation and context reconstruction;
- broad approval-bypass usage in place of scoped reusable authority;
- commands attempted before the required capability was available.

The source did not reliably capture real exit status, duration, output classification, state change, or user-observed outcome. Therefore it supports discovery of workflow friction, but it does not prove that frequent behaviors were successful or desirable.

## Transferable findings

1. Discover workspace capabilities before selecting an implementation path.
2. Run environment preflight before expensive or state-changing workflows.
3. Preserve explicit task state across tools, sessions, and agents.
4. Replace global bypasses with authority scoped by action, risk, target, and time.
5. Capture structured outcomes and causal links, not only command text.
6. Retry only after a relevant state or strategy change.
7. Promote repeated sequences into workflows only after outcome validation and human review.
8. Normalize and aggregate evidence locally; use generative interpretation only on small, sanitized candidate sets.

## Privacy boundary

Raw operational telemetry is not a doctrine asset and must remain outside version control. Durable evidence may contain only sanitized aggregates and transferable findings. Secret filtering must occur before persistence where possible and again before transformation or publication.

## Known limitations

- The observations came from one local operating context.
- Duplicate capture inflated several frequencies.
- Missing outcome fields prevent success-rate or productivity claims.
- No causal claim is made between a repeated transition and delivery quality.

These limitations are why the resulting starter-kit entries are process patterns with validation requirements, not rigid universal command sequences.
