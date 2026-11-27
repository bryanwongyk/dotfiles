---
name: ralph
description: Plan or execute work using a repository's Ralph workflow. Use only when the user explicitly requests Ralph.
disable-model-invocation: true
---

1. Read the repository's Ralph instructions, runner, and existing plans. Use the schema and status names the runner expects. Confirm whether the user wants a plan, execution, or both.
2. Define scope, acceptance criteria, and dependencies. Keep one canonical task graph. If the repository already uses `ralph/tasks.json` and per-task files, preserve the runner contract and update any required mirrors from the same task data. Preserve existing IDs and completed work.
3. For a new plan with no runner, use a short brief and one task graph with IDs, dependencies, status, acceptance criteria, and validation. Create extra artifacts only when the repo needs them. Flag missing prerequisites without inventing runner commands.
4. When executing, take the next unblocked task. Apply the repository's validation requirements and record results. Update task state as you go. For review and handoff, follow [ship](../ship/SKILL.md) where applicable. Stop at a real blocker or the requested boundary and state what remains.
