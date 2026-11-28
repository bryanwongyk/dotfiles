# Review runtime

Use an authorized Claude Code integration or an installed, authenticated CLI. Resolve available model identifiers and effort from that runtime. Honor the requested configuration. By default use two distinct available Claude Code models at medium effort when supported, and start the fresh final review with the first model. Report any unavailable requested configuration. Use fresh independent sessions even if both use the same model. If Claude Code itself is unavailable, report the incomplete gate. Local review or feedback triage can still proceed and should be identified as such.

## Review packet

Give both reviewers the same base and head SHAs, a snapshot of the complete actual-base diff and intended staged, unstaged, and untracked edits, the task and repository guidance, and the full review contract. Supply enough relevant callers, tests, decisions, and check output to verify claims. Use local scratch storage outside the working tree. Exclude credentials and unrelated material. Confirm the configured review service may receive the code before sending the packet.

## Read-only execution

Prefer packet-only sessions with no tools or PR write access. For a local CLI, inspect `claude --version` and `claude --help` for supported print mode, stdin, model, effort, tool restriction, and session persistence options. Pass the review packet via stdin when supported. Use the selected model and effort, disable tools, and avoid session persistence where supported. Honor any cost limit supplied by the user. Supply omitted repository context in a follow-up packet or report the limitation. Where a supported integration offers read-only repository access, pin it to the intended snapshot and verify that it can see local changes if they are in scope.

Preserve independent initial sessions, send the exact revised snapshot for follow-ups, and use a new session for the final gate. Record model identifiers, effort, and evidence actually available to each reviewer.
