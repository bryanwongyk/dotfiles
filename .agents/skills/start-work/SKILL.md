---
name: start-work
description: Prepare a Git branch or worktree for new work, preserving other active changes. Use for setup or as the setup phase of implement-work.
---

# Start Work

1. Identify the repository and requested starting point. Honor an explicit base. Otherwise use the repository's documented base or verified default. For a stack, use the preceding branch. Resolve the base to a commit. Fetch the relevant ref when starting from a current remote base, and report when only a local ref is available.
2. Inspect `git worktree list --porcelain` and the candidate checkout's status. Reuse a suitable existing feature branch when it matches the task. For new work, use the current checkout when appropriate and clean. If it has unrelated work or another session owns it, use an isolated worktree when the request permits it. Preserve existing work and avoid switching another active checkout.
3. Follow [creating-git-branches](../creating-git-branches/SKILL.md) for branch naming and collision handling. Create from the verified base commit directly. The base branch can stay checked out in another worktree.
4. Verify the resulting worktree path, branch, and starting revision. Use that path for subsequent commands and report it with the source ref and exact base commit.

For a branch that already contains the requested work, follow [resume-work](../resume-work/SKILL.md). Setup ends at a usable local checkout unless the user also requested implementation.
