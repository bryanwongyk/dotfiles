---
name: polish-pr
description: Draft or improve PR wording using Bryan's concise Problem and Solution format or the repository's template. Use for PR copy and as the wording standard for focused review.
---

# Polish PR

Read the actual merge-base diff, relevant commits, task context, and any existing PR text. Use a short imperative title that names the delivered behavior. Include a verified issue identifier when required by the project.

Follow the repository's PR template when present. Otherwise use these H2 sections:

## Problem

Explain why the change is needed and its consequence in one short paragraph.

## Solution

Describe how the delivered changes address the problem. Use a numbered list for a sequence or bullets for independent changes. Include meaningful verification and limitations when known.

Use an optional `Context` before `Problem` for a verified issue or design link that helps reviewers. Add `Testing` when there are check results to report or the template calls for it. Preserve user-authored testing, issue links, and stack navigation when editing. Ground each claim in the diff, task evidence, or checks actually run.

For wording review, identify the exact phrase or section, explain the mismatch, and propose replacement text. For authorized live updates, use [creating-prs](../creating-prs/SKILL.md).
