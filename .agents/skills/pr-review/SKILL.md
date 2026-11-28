---
name: pr-review
description: Review a PR, branch, or local diff for concrete defects, or check only the PR title and description. Return prioritized findings and suggested feedback in read-only mode.
---

# PR Review

## Choose a mode

- **Full code review.** Use the preparation and review contract below.
- **Title and description only.** Use [polish-pr](../polish-pr/SKILL.md) against the actual-base diff, task evidence, and current title and body. Identify each misleading phrase or section, explain the issue, and propose replacement text. Report what could not be verified. Flag any suspected code issue for a separate review.

Return feedback in the current conversation. A review request does not authorize edits, published comments, approvals, or other PR mutations. For independent review and fixes or supplied-feedback triage, use [claude-review-loop](../claude-review-loop/SKILL.md).

## Prepare

Resolve the actual base, head, and intended behavior from the request, PR metadata, and repository guidance. For branch review use the merge-base diff. For local review include the intended staged, unstaged, and untracked changes. Read surrounding callers, contracts, and tests. Preserve active checkouts and record gaps when refs, files, or requirements are unavailable.

## Shared review contract

Every full reviewer covers the applicable areas:

- **Intent and simplicity.** Check that the change solves the actual problem. Look for unnecessary ownership, data flow, duplication, or abstraction and preserve useful existing patterns.
- **Correctness and regressions.** Trace affected callers, boundary inputs, failures, retries, concurrency, cleanup, compatibility, migrations, rollout, and configuration defaults.
- **Test quality.** Look for observable assertions that would catch realistic failures. Ground a missing-coverage finding in the risk it leaves exposed. Run focused safe checks where feasible.
- **Readability.** Identify concrete maintenance problems. Preserve comments that explain a non-obvious contract, invariant, or rationale. Flag stale or misleading comments and redundant tests only when you can show what they obscure.
- **Security and performance.** Inspect trust boundaries, authorization, sensitive data handling, hot paths, resource use, and storage or API contracts. Where relevant check accessibility and loading, empty, and error states.

## Severity and findings

| Priority | Consequence |
| --- | --- |
| P0 | Critical failure with severe immediate impact |
| P1 | Serious concrete defect that blocks release |
| P2 | Bounded defect or meaningful coverage gap that should be fixed before release |
| P3 | Evidence-backed optional improvement |

Use impact and likelihood to assign priority. Lead with the overall recommendation and blockers. Group findings by file and order by severity within each file. Deduplicate shared causes and keep independent defects separate.

For each finding give an ID, priority, precise file and line (and old or new side when relevant), affected scenario, evidence and consequence, the smallest justified remedy, and concise suggested feedback. An issue outside changed lines needs its actual location and connection to the diff. Report all grounded findings, the exact checks run and results, and material verification limits. If there are no findings, state that plainly.
