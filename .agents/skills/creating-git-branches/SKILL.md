---
name: creating-git-branches
description: Name or create a Git branch using project conventions and the intended base. Use for explicit branch requests or workspace setup.
---

# Creating Git Branches

1. Use the given branch name or the repository's convention. For Bryan's personal projects without a repository convention, use `bryan-<short-kebab-case-summary>`. Include an issue ID when supplied and useful.
2. For a naming-only request, return the name. For branch creation, verify the start ref and check for exact local-name collisions and, when relevant, collisions on the intended remote.
3. Reuse the branch if it is the requested existing work. If a collision represents different work, choose another suitable name or clarify when the name is fixed. Locate an already checked-out branch with `git worktree list`.
4. Create the branch from the verified ref in the intended checkout or worktree. Verify its name and base revision.

Use [start-work](../start-work/SKILL.md) when the request includes choosing or preparing a worktree.
