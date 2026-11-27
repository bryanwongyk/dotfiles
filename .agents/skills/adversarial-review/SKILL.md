---
name: adversarial-review
description: Review an existing change for concrete defects. Use for read-only, thorough, or adversarial code review.
---

1. Establish the review range and intended behavior. Inspect relevant staged, unstaged, and untracked changes or the requested commit or PR. Read the affected callers and repository instructions.
2. Trace realistic failure scenarios. Prioritize correctness, permissions, data integrity, error recovery, concurrency, and regressions where relevant. Verify each finding against the code or a safe check.
3. For a thorough or high-risk review, use two independent read-only reviewers when available. Give them the same revision and distinct lenses. Wait for all reviewers, verify their findings yourself, and report if independent review was unavailable.
4. Return actionable findings in severity order, with a file and line, trigger, impact, and focused fix. Separate optional suggestions. If no blocker or high issue remains, say so and report any material validation gaps.

Keep the review read-only. Report only checks that actually ran.
