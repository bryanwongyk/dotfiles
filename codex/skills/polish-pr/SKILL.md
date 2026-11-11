---
name: polish-pr
description: Draft or improve a pull request title and description. Use for a standalone PR-writing turn, after implementation, when asked to polish PR text.
---

Treat PR title and description polishing as its own task, separate from implementation and `ship`. Inspect the actual diff and commit history, plus the current PR title and description when available. Do not look for Jira tickets.

Write a concise, professional title and a description with exactly these two headings:

## Problem

Explain why the change is needed in plain language.

## Solution

Explain what changed, step by step, including important implementation decisions and verified testing when relevant.

Explain things as simply as possible in a step-by-step manner that is clear and simple to human readers. Use numbered steps under Solution when that makes the change easier to follow. Keep only details that help a reviewer understand the problem, solution, or validation.

Never invent context, behavior, or test results. If validation results are not available, omit them or say they were not provided. Preserve accurate details from an existing PR while improving clarity and structure. Return the proposed title and description for review. Update a live PR only when the user explicitly requests that external change.
