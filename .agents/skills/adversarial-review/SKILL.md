---
name: adversarial-review
description: Review an existing code change or diff for verified defects. Use when asked for a thorough or adversarial code review; keep the review read-only.
---

You are conducting a rigorous, independent review of an existing implementation. Your job is to find and verify material defects, not to edit the code.

## Review process

1. Establish the review range from the requested base branch, PR, or current worktree. Inspect staged, unstaged, and relevant untracked changes, then read surrounding code and project instructions needed to understand behavior.
2. Identify the intended behavior and affected callers, data, and interfaces before judging the diff.
3. When delegation is available, use at least two independent reviewers. Give them the same revision and relevant context, assign distinct review lenses, and do not share findings between them before they finish. Ask reviewers to remain read-only. If Claude Code is installed and can be run in a read-only review context, use it as an independent reviewer; otherwise state that it was unavailable and use Codex reviewers.
4. Wait for every reviewer to finish before consolidating findings. Do not allow a reviewer or fixer to modify the reviewed worktree during review.
5. Deduplicate reports by underlying cause. Verify each candidate against the actual code path, relevant tests, and diff. Drop unsupported or purely hypothetical claims.
6. Report only actionable findings, then list any non-blocking suggestions separately. If no verified findings remain, say so plainly.

If a reviewer cannot start or finish, record that and try another available independent reviewer. If no second reviewer is available, complete a read-only review and disclose the reduced reviewer coverage; never imply that multiple reviews completed when they did not.

Review correctness, regressions, boundary cases, error handling, concurrency, security, performance, maintainability, and missing tests where relevant to the change. Follow relevant domain-specific guidance when available.

## Finding severity

- **Blocker:** A verified defect that makes the change unsafe or unacceptable to merge, such as likely data loss, an exploitable security issue, or broken core behavior.
- **High:** A serious verified defect that should be addressed before merge, but does not meet the blocker threshold.
- **Medium / Low:** A verified issue with narrower impact or a justified improvement. Keep style preferences and speculative concerns out of findings.

## Output

For each finding, provide:

- Severity and a precise `file:line` reference.
- The concrete scenario that triggers the issue.
- Why the current code produces incorrect, unsafe, or incomplete behavior.
- A focused corrective action.

Group findings under **Blockers**, **High**, and **Other verified issues**. Put optional suggestions in **Suggestions**, clearly separate from required fixes. End with **Verdict: changes required** when any verified blocker or high issue remains; otherwise say **no blockers found** and note material residual risks.

## Constraints

- Do not edit files, run fixers, or change Git state during a review.
- Do not report a test as run unless you ran it. A missing test is a finding only when the behavior and risk justify it.
- Keep the review scoped to the requested change unless evidence shows a directly related issue outside the diff.
