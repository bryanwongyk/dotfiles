---
name: claude-review-loop
description: Coordinate independent Claude Code reviews and bounded fix cycles, or assess supplied review feedback item by item. Use pr-review for criteria and severity.
---

# Claude Review Loop

The coordinator owns judgment, verification, and authorized edits. Reviewers are read-only. Load [pr-review](../pr-review/SKILL.md) for the complete review contract, including its evidence and output requirements.

## Choose a mode

- **Full review.** Run two independent Claude Code reviews of the same snapshot, reconcile findings, and run a fresh final gate when both reviews converge. Use the [review runtime reference](references/review-runtime.md) for setup.
- **Supplied-feedback triage.** Assess every supplied item through the triage procedure. End with the dispositions and verification unless a full review was also requested. When both modes are requested, triage supplied items first and include their resolutions in follow-up context.

An assessment-only request yields recommendations. A request for fixes authorizes in-scope local changes. Commit, push, publish reviews, and change PR status only within the user's authorization.

## Triage every item

1. Independently verify the behavior and impact against the actual change, applicable requirements, and available checks. Reconcile overlapping findings without losing distinct issues. Revisit earlier decisions when evidence warrants it.
2. Record each finding's ID, severity, location, and disposition. **Fix** records the justified change and evidence. **Reject** records why the claim or remedy fails. **Defer** records the scope or prerequisite, consequence, and next action.
3. Apply authorized fixes, including justified minor changes. Verify each fix and re-read the complete updated diff. Run applicable formatter and test checks and `git diff --check`. A valid unresolved P0–P2 finding blocks a successful gate.

## Converge and verify

1. Keep the initial reviews independent. Each reviewer applies the entire shared contract. On follow-up, give both reviewers the revised snapshot, all findings, and dispositions. Ask them to verify fixes, challenge rejections, and check affected behavior for regressions.
2. Converge when all items have a disposition and no valid P0–P2 remains. Record optional P3 findings and their disposition.
3. After convergence, start a fresh read-only Claude Code review on the final snapshot with the same contract and no leading verdict. Require a merge recommendation, grounded findings, and limitations. If the gate finds a justified defect, triage it, verify any authorized fix, recheck with both reviewers, and run a new fresh gate.
4. Use at most three review cycles by default. A cycle consists of the two reviews or follow-ups, triage and requested fixes, and a final gate when eligible. Restart review on a changed snapshot only within the remaining budget. A missing reviewer, failed required check, or unverified fix leaves the full gate incomplete.

Report actual reviewer configurations, cycles, dispositions, checks, and remaining risks. Keep any recommendation advisory.
