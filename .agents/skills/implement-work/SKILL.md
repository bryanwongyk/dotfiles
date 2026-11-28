---
name: implement-work
description: Implement or continue a substantial change, or finish an existing diff for handoff. Use for feature delivery, an explicitly requested Ralph workflow, or requests to ship or get changes ready for review.
---

# Implement Work

For “ship this change” or “get this ready for review,” start at [Deliver](#deliver) with the existing diff. For a read-only review, use [pr-review](../pr-review/SKILL.md).

## Resume first

Find the requested branch and worktree before starting new work. For a planned change, find its task record using the path in the handoff or the Git metadata location in [the task record reference](references/task-record.md). Read the decisions and reconcile each active task against the actual diff and verification evidence. Preserve partial edits. Use [resume-work](../resume-work/SKILL.md) for existing work without a record or for a requested base update.

## Plan

1. Read the task brief, relevant code, callers, tests, and repository guidance. Check whether the problem still exists and whether the proposed change fits current behavior. A wrong theory about the cause still warrants investigation of a reported failure.
2. Establish observable acceptance criteria. Ask about unresolved decisions that materially affect behavior, scope, compatibility, or rollout. Resolve ordinary implementation choices from project conventions. A tracker issue is optional.
3. If execution or setup is requested and a branch or worktree is needed, follow [start-work](../start-work/SKILL.md). Capture the actual base and starting revision.
4. For work that spans sessions or has meaningful dependencies, use the [task record reference](references/task-record.md). Share the task order and validation plan before executing. A small change can proceed with a short in-session plan. For planning alone, present the plan in the requested format without preparing a checkout.

## Execute

- Take the next ready task. Keep each change scoped and verify its acceptance criteria before marking it done. Record files changed, verification results, and any commit made under the requested workflow.
- If fresh-context workers are requested and supported, give each worker its task ID, worktree, record, and verification criteria. Run workers that write to the same worktree sequentially. Review their actual edits and evidence before updating task status. Otherwise execute in the current session.
- Record newly discovered dependencies or scope questions in the plan. Diagnose failed verification and preserve partial work. Resume when the blocker is resolved.

## Deliver

1. Resolve the intended change and actual base, including staged, unstaged, and relevant untracked edits. Preserve unrelated work. Confirm the acceptance criteria when available and run relevant checks across the complete change.
2. Choose the review mode from the delivered diff. Honor the user's explicit choice first.
   - **Independent review.** Default to [claude-review-loop](../claude-review-loop/SKILL.md) in full mode for substantial features, changes that span interacting components, or changes with a significant failure consequence. Examples include migrations, changes to shared contracts or permissions, and edits to concurrency or recovery behavior. Judge scope and consequence even when the diff is short.
   - **Single review.** Use [pr-review](../pr-review/SKILL.md) for a localized, low-risk change with straightforward verification, or when the user asks for just `pr-review`. Use its findings to verify and apply authorized in-scope fixes, then rerun affected checks and re-review the changed paths.
   - **Fallback.** If authorized Claude review cannot run, complete the local review and report that the independent review is incomplete and why.
3. Report the review mode, readiness, and any unresolved material findings or incomplete checks. When publication is authorized and the change is ready, use [creating-prs](../creating-prs/SKILL.md) or, for a stack, [manage-stacked-prs](../manage-stacked-prs/SKILL.md). Use the focused mode in [pr-review](../pr-review/SKILL.md) for a requested wording check.

Ordinary implementation authorizes local edits and checks. Commit, push, and change hosted PR state only within the requested workflow. Hand off the branch and worktree, task record if used, verification performed, outstanding risks or gates, and PR link when applicable.
