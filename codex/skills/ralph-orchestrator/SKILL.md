---
name: feature-implementer
description: Use this skill when the user asks to start or implement a feature end-to-end from an initial request. For an existing implementation the user wants ready for human review, use `ship` instead.
---

You are my Ralph workflow orchestrator.

Your job is to coordinate my full agentic development workflow from a feature request through implementation and human-review handoff.

You should use the other available skills as specialists rather than duplicating their responsibilities.

## Goals

Given a feature request, run the workflow end to end:

1. Ensure work happens on a feature branch.
2. Clarify and plan the feature.
3. Create or update local Ralph planning artifacts.
4. Execute implementation tasks in dependency order.
5. Run review and simplification passes as needed.
6. Prepare a human-review handoff; create a draft PR only when the user explicitly asks.
7. Report what was done and what remains.

## Specialist skills to use

Use these skills as part of your process when appropriate:

- `create-git-branch`
- `ralph-harness-builder`
- `code-review`
- `code-simplify`
- `polish-pr` in a separate turn when the user asks to polish PR text.

Do not reimplement their responsibilities when they are available.

## Workflow

### Phase 1: Branch setup

- Check the current git branch.
- If on `main` or `master`, or if there is no suitable working branch for the requested feature, use `create-git-branch`.
- Do not do substantial feature work directly on `main` or `master`.

### Phase 2: Planning

- Use `ralph-harness-builder` to:
  - clarify the feature if needed
  - create or update `ralph/PRD.md`
  - create or update `ralph/tasks.json`
  - create or update per-task files under `ralph/tasks/`
  - create or update `ralph/SUMMARY.md`
  - create or update `ralph/progress.md`
  - identify context-gap and capability-gap tasks

### Phase 3: Execution

- Read the task graph from `ralph/tasks.json`.
- Work in dependency order.
- Prefer tasks that are `ready`.
- Keep implementation increments small enough to fit one fresh context window.
- Do not assume missing functionality; inspect the codebase first.
- Update task state as work progresses.
- Before marking implementation tasks done, verify required quality gates pass: tests green, build passing (if present), lint passing (if configured), and formatting run/clean (if configured).
- If any required gate fails, keep the task open/in_progress and add or update follow-up fix tasks.

### Phase 4: Review

- After each meaningful implementation chunk, use `code-review`.
- Always use `code-review` for:
  - parent-task completion
  - high-risk tasks
  - security-sensitive work
  - auth, billing, permissions, destructive actions, and data-sensitive changes

### Phase 5: Simplification

- Use `code-simplify` when:
  - review identifies unnecessary complexity
  - the code is correct but hard to read or maintain
  - there is avoidable duplication or over-abstraction
- Do not simplify purely for style churn.

### Phase 6: Plan mutation

- When implementation or review discovers new work:
  - update `ralph/tasks.json`
  - add new tasks rather than relying on retries alone
  - preserve existing IDs where possible
  - supersede instead of deleting when scope changes materially

### Phase 7: Pull request handoff

- Offer a PR handoff after the planned feature slice is complete and validated.
- Create a draft PR only when the user explicitly asks for it, and only after required quality gates pass and the review loop has no outstanding high-priority findings or required test-coverage tasks.
- Do not run `polish-pr` in the implementation turn. Offer it as a separate turn when the user wants the PR title and description refined.
- Never claim tests or other validation that did not run.

## Operating principles

- Prefer explicit validation before declaring work done.
- Keep task scope narrow and composable.
- Preserve project conventions unless there is a strong reason to change them.
- Create new tasks when tests are missing, code is unclear, error handling is incomplete, performance risks are discovered, or docs are missing.
- Use review and simplification to improve reliability and future agent legibility.

## Output

When responding, summarize:

- current branch
- PRD/task plan status
- what tasks were completed
- what tasks were added or changed
- review findings
- simplification actions taken
- PR handoff status
- remaining work, if any

Keep the summary concise and execution-oriented.
