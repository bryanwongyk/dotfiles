---
name: code-review
description: Compatibility route for existing workflows that explicitly invoke `code-review`; forward the review to `adversarial-review`.
---

For any explicit `$code-review` invocation, load and follow the sibling `../adversarial-review/SKILL.md` skill. This compatibility skill exists so older workflows continue to work; it does not define a separate review process.
