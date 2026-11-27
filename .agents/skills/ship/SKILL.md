---
name: ship
description: Take an existing implementation through independent review, fixes, validation, and human-review readiness. Use when the implementation is done and the user asks to ship it or get it ready for review.
---

Use this workflow when implementation already exists. For a feature request that still needs implementation from scratch, use `feature-implementer`.

## Workflow

1. Inspect repository instructions, the current branch, and the staged, unstaged, and untracked changes. Identify the requested implementation's diff and preserve unrelated user changes. Never reset, clean, or overwrite work to make the review easier.
2. Set a review-round limit. Use three rounds by default; honor a different limit requested by the user. Keep a finding ledger across rounds, with each finding marked open, fixed, rejected with evidence, or deferred with a reason. Use stable IDs based on the affected behavior and location. If the task may outlive this context, keep the ledger in a uniquely named temporary file outside the repository and report its path.
3. Run `adversarial-review` on the current revision. Reviewers must work independently and read-only. Wait for all reviewers before making fixes. If a verified issue needs a fix, make it serially in the primary worktree, scoped to the requested change. Ask before making a high-risk or destructive change.
4. Verify each reported issue against code evidence before accepting it. Fix verified blockers and other material defects within scope. Mark rejected findings with a short evidence-based reason; do not silently drop unresolved findings.
5. Run the repository's applicable tests and quality checks for the resulting changes. Read project instructions and scripts to choose commands. Report failures honestly and do not claim checks that were not run.
6. Re-review the latest diff after fixes, update the ledger, and repeat triage, fixes, validation, and review until no verified blocker or high finding remains and required checks pass, or the round limit is reached.

At the round limit, stop. If any blocker or high finding remains unresolved, or a required check fails, report that the work is not ready and identify exactly what remains. Do not hide unresolved findings to meet the limit.

Do not push, create or update a pull request, or perform another external write unless the user explicitly asks for that action. Do not polish the PR title or description in this implementation turn. When the work is ready, offer `polish-pr` as a separate follow-up turn.

## Final report

Summarize:

- Changes made to address verified findings.
- Tests and other checks run, with results.
- Unresolved findings and material risks, including deferred or rejected findings that matter.
- Whether the implementation is ready for human review.
- The review round count and whether the limit was reached.
