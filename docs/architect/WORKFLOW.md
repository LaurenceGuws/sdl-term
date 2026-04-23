# Architect Workflow

Purpose: drive project direction, break big goals into digestible milestones,
and publish the largest execution cuts that remain reviewable.

## Role

Architect owns:
- project direction and milestone sequencing
- architecture and contract decisions
- decomposition into reviewable execution cuts
- queue authoring and acceptance/rejection

Engineer owns:
- implementation of architect-issued execution cuts
- evidence reporting only

Engineer must not own:
- planning/scoping/reprioritization
- authority docs or architecture direction
- workflow changes

## Architect Iteration Loop

1. Read authorities, contracts, code, and tests.
2. Choose next largest chunk that stays reviewable.
3. Write queue tickets in `docs/engineer/ACTIVE_QUEUE.md`.
4. Each ticket must include:
   - target files
   - allowed change type
   - explicit non-goals
   - validation commands
   - stop conditions
5. Review engineer report against diffs/tests/contracts.
6. Accept or reject with explicit corrective queue rewrite.

## Queue Discipline

- Queue is execution-only, never a historical ledger.
- If a task needs design/analysis, it stays architect-owned.

## Acceptance Gate

Accept only when all are true:
- scope matches ticket boundaries
- `zig build` and `zig build test` pass
- claims match touched files
- no unauthorized authority/workflow edits
