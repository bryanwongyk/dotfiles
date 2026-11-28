# GitHub activity

Resolve the current login and requested repository scope. Filter by actual event timestamps in the worklog's date window. Search timestamps narrow candidates and can include PRs updated after the target day. Avoid bounding the upper update date in a way that excludes later updates to earlier activity.

## Authored pull requests

Count a PR opened for review when created as a non-draft during the interval or when its timeline records a ready-for-review transition during the interval. An update alone is insufficient. Inspect creation state and draft transitions when current state could misrepresent what occurred that day. Use the merge timestamp to count merges. Deduplicate within each subsection.

## Submitted reviews

Find candidate PRs reviewed by the user, then paginate direct PR review records. Match the reviewer's login and submission timestamp. Count submitted approvals, requests for changes, and review comments recorded as a review. Exclude pending drafts, review requests, standalone comments, and the user's own PRs. Count each reviewed PR once per day.

If pagination, search caps, or permissions leave incomplete coverage, report the source gap and include the events you could verify.
