---
name: resume-work
description: Recover the state of existing work or refresh an existing Git branch against its base when asked. Use to locate and recover branch context, or to sync or rebase a branch.
---

# Resume Work

1. Locate the requested branch and its worktree. Inspect status, recent commits, intended base, relevant diff, and any existing task record or handoff. Account for uncommitted work. If called by [implement-work](../implement-work/SKILL.md), return the recovered context to its current phase. Otherwise route requested implementation or preparation for handoff there after recovery.
2. For a requested sync, identify the actual base and configured remote. For a stacked change, follow [manage-stacked-prs](../manage-stacked-prs/SKILL.md) for propagation and use the lease guidance below for any authorized rewrite. Otherwise fetch the relevant refs and, if a rebase and push were requested, record the remote branch's exact commit before rewriting. Check that all published work is accounted for.
3. Incorporate the verified base using the requested or documented strategy. Require a clean worktree before rebasing and preserve unrelated edits. Use the base ref directly if its branch is checked out elsewhere. Inspect conflict resolutions, then run `git diff --check` and relevant checks.
4. If a push is authorized, use a normal push for a fast-forward. For an authorized history rewrite, use an explicit lease with the captured commit, such as `--force-with-lease=refs/heads/<branch>:<expected-sha>`. A rejected lease means the remote changed and needs reconciliation.
5. Report the resulting base, branch and working state, conflicts, checks, and any push result. Resuming work alone leaves the base and remote branch as found.
