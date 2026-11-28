---
name: write-engineering-one-pager
description: Draft or revise a concise engineering proposal for a technical decision, architecture change, or migration. Use when the reader needs to compare options and decide whether to proceed.
---

# Write an Engineering One-Pager

Use the requested format or [the proposal template](assets/engineering-one-pager-template.md). Remove unused optional sections. Treat one-pager as a concise decision format unless the user specifies a page limit.

## Establish the decision

Identify the problem, the approval or decision sought, the affected systems, the constraints, and the strongest credible alternatives. Inspect available code, sources, and previous decisions. Identify assumptions and unknowns that could change the recommendation.

## Draft

- Use **Motivation** for the current behavior, impact, and reason to act. Use **Goals** for observable outcomes and **Non-goals** when scope boundaries matter.
- Lead **Proposal** with the recommendation. Connect the design to the constraints and explain material tradeoffs, failure modes, and rollout or rollback when relevant.
- Compare alternatives by their strongest benefit and meaningful cost. Include the current design when it remains viable. Say what evidence would justify revisiting a choice when applicable.
- Add reviewer roles, definitions, or a short summary when needed to orient the audience. Give each reviewer a decision or concern to assess.
- For a sequence, lifecycle, or migration that benefits from a diagram, place a small Mermaid diagram after the recommendation in Markdown. Show ownership and the paths that matter to the decision.
- Move implementation-level detail to an appendix or linked design document. Keep facts, estimates, and judgments distinguishable and link supporting evidence.

Read the result as a reviewer. The problem, recommendation, alternatives, material risks, and requested decision should be easy to find.
