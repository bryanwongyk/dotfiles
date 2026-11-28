# Task record

Use one authoritative task plan. If a repository already has a Ralph runner or task schema, read its instructions and preserve its runner contract, existing IDs, completed state, and required mirrors. Use that workflow only when requested. Without a runner, a Markdown record is sufficient.

In a persistent Git worktree, resolve the worktree’s Git metadata directory with `git rev-parse --absolute-git-dir` and store the record at `agent-work/<work-id>.md` within it. Use a stable lowercase slug or issue ID for `<work-id>`. Record the worktree, branch, and exact file path in the handoff. For work outside Git, use the session's persistent scratch storage when available. Keep secrets out of task records.

```markdown
# <Work goal>

Record: <absolute path>
Worktree: <absolute path>
Branch: <branch>
Base: <ref and revision>

## Decisions
- <Requirement, scope decision, or source of evidence>

## Acceptance criteria
- <Observable outcome>

## Tasks

### T1 <Short title>
- Status: todo
- Depends on: none
- Work: <Scope and relevant context>
- Done when: <Observable task outcome>
- Verify: <Command or check and expected result>
- Result: <Observed evidence and commit if applicable>

## Review
- <Finding, disposition, and verification>

## Learnings
- <Reusable project knowledge>
```

Use `todo`, `in-progress`, `blocked`, and `done` for this Markdown format. On resumption, match the record to the actual branch, edits, and verification. A local change can be complete without a commit if the intended edits are present and verification passes. When verification cannot be reproduced, record the gap and leave the task open. If moving the task to another checkout or session, verify that both the record and exact edits are accessible.
