---
name: review-and-ship
description: Take an existing implementation through review, fixes, and validation until it is ready for human review. Use when asked to ship or get a change ready for review.
---

1. Confirm the change and preserve unrelated work. Run [adversarial-review](../adversarial-review/SKILL.md) on the current revision.
2. Verify each finding and fix material defects within scope. Keep a short ledger of open, fixed, rejected, and deferred findings. Record the reason for rejected or deferred findings.
3. Run applicable repository checks. Re-review the affected diff after fixes. Stop once the checks pass and no blocker or high finding remains, or after three review rounds unless the user specifies another limit.
4. Report fixes, checks, unresolved issues, and whether the change is ready. If a blocker, high finding, or required check remains unresolved, say what is still preventing readiness.

Push or create or update a PR only when the user asks. If they ask as part of shipping, handle it in the same turn once ready. For PR copy, use [polish-pr](../polish-pr/SKILL.md).
