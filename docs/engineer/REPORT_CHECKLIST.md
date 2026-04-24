# Engineer Report Checklist

Before reporting work as complete, run this checklist.

Every report must include:
- `#DONE`
- `#OUTSTANDING`
- commits (`hash + subject`)
- validation results
- files changed

Required validation (unless queue says otherwise):
- `zig build`
- `zig build test`

Commit verification:
- `git show --name-status <hash>` for each reported commit.

Scope verification:
- Ensure touched files match queued ticket boundaries.
