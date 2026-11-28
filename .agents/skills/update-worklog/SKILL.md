---
name: update-worklog
description: Summarize a day's project activity from supplied notes and available source-control, chat, or calendar evidence. Use for a daily worklog or an explicitly requested Obsidian daily-note update.
---

# Update Worklog

## Scope and collect

Use the requested date and timezone, or today in the user's known timezone. Build the interval from local midnight to the next local midnight, then convert both endpoints for each source. Scope collection to the requested project or accounts. Use supplied records and connected sources. For GitHub, follow [the activity reference](references/github-activity.md).

- **Pull requests.** Group authored PRs by opened for review and merged. List submitted reviews separately. A PR can appear under more than one subsection if those events all occurred that day.
- **Discussion.** Include substantive project decisions, unblocks, or contributions the user made. Read enough of the relevant thread to verify the outcome. Summarize each thread once and link it.
- **Meetings.** Use supplied attendance when available. From calendar data, report eligible past appointments as scheduled meetings and distinguish unverified attendance. Include local time and concise title.

Omit empty sections. Use concise outcome-focused bullets with source links when available. Report unavailable sources or incomplete coverage. Avoid copying private discussion or calendar descriptions into the log.

## Draft or update

Return Markdown for a summary request. For a requested Obsidian update, resolve the note from the supplied path or registered vault and its daily-note settings. If multiple destinations remain plausible, ask for the path and provide the draft. Use the vault's established date and section format, or an ISO date heading with topic subheadings if there is no established format.

In an existing note, append the worklog when it has no generated entry for that date. When regenerating an entry, replace only its uniquely identifiable section and preserve manual entries. If its boundary is ambiguous, ask before overwriting. For a new note, honor the daily-note template when available. Re-read the saved note and report its path, activity counts, and source gaps.
