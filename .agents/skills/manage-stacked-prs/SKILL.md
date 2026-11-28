---
name: manage-stacked-prs
description: Plan, create, or update dependent Git branches and pull requests with each PR based on the preceding branch. Use for explicit stacked PR or PR train requests.
---

# Manage Stacked PRs

## Establish the stack

Inspect existing stack configuration, branch ancestry, and hosted base/head pairs. Use the repository's stack tool when configured and verify what its commands will mutate. Otherwise use Git and the hosting service. Record the ordered branches, each intended base, and the current PR URLs and state. A branch name alone does not establish a dependency.

## Create or update

1. The first branch targets the verified integration base. Each subsequent branch targets its immediate predecessor. Before publication, review each incremental diff and the complete tip against the integration base.
2. Propagate changes from the modified branch downstream in order. Use the project's established merge or rebase strategy. If there is no convention, prefer merge propagation for published branches unless the user requests a rebase. For authorized published history rewrites, follow the explicit lease guidance in [resume-work](../resume-work/SKILL.md). Resolve conflicts on the affected branch and rerun scoped checks.
3. Publish only with authorization. Use [creating-prs](../creating-prs/SKILL.md) for each PR. If stack navigation is requested or already used, update it consistently in stack order, identify the current PR, and preserve the rest of each body.
4. Verify ancestry, hosted base/head pairs, and that each PR shows the intended incremental change.

## Advance after a merge

Verify which PR merged and how. If the predecessor was squash-merged or rebased, identify its old tip before retargeting so its commits do not appear as part of the next change. Integrate the new base while preserving each branch's unique changes. Verify each incremental diff before changing hosted bases or stack navigation. Report the affected PRs, checks, and any branches still requiring propagation.
