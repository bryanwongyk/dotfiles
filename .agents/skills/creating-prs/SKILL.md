---
name: creating-prs
description: Create a GitHub pull request or apply requested changes to an existing PR using the actual base and project conventions. Use polish-pr for wording and draft-only requests.
---

# Creating Pull Requests

## Prepare

1. Resolve the repository, head, and actual PR base. Use the existing PR's base for edits, an explicit base for new work, the previous branch for a stack, or the verified repository default. Resolve the needed refs and inspect the complete comparison from the merge base, the relevant commits, and the task context.
2. Check that the intended head is available to GitHub. When a push is authorized, verify the destination branch and intended commits first. New PR copy describes the commits that will be in the PR. Call out material local changes outside that comparison.
3. Follow [polish-pr](../polish-pr/SKILL.md) for the title and body. Read the existing PR before editing it so user-authored context, testing notes, and stack navigation survive.

## Create or update

- Use the GitHub connector or `gh`. For new PRs, use a draft unless the user or repository convention specifies another state. Supply the resolved base and head explicitly. With `gh`, pass multiline text through `--body-file`.
- On updates, edit only requested fields. Leave readiness, reviewers, and merge state to separately requested actions.
- Read the result back and verify the URL, base, head, and intended fields. Report reviewer requests added by repository automation when relevant.
- Use [manage-stacked-prs](../manage-stacked-prs/SKILL.md) when bases or navigation for several PRs need to change.
