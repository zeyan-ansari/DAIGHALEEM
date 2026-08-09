# Execution rules (small modular tasks)

## Task page contract

Every `Txx-*.md` file follows:

```
# PXX-TYY — Title
Repo: ...
Paths: ...
Depends: none | list
Goal: ...
Steps: ...
Acceptance: ...
Tests: ...
DoNot: ...
Next: ...
```

## Sizing

- One task = one focused change set (prefer ≤ one agent session).
- Split cross-repo work into paired tasks (backend first when API is new).
- Do not create mega-tasks that touch auth + payments + UI in one file.
- If a task grows mid-flight, stop and split into a new `Txx` page rather than ballooning scope.

## Multi-task / parallelization

Safe to parallelize when:

- Tasks have no unmet `Depends`
- They target **different repos** OR clearly non-overlapping paths in one repo

Do **not** parallelize:

- Migration order conflicts on the same DB
- Competing edits to the same OpenAPI paths
- State-machine and payment webhook work that shares the same order aggregate (serialize)

## Ordering inside a phase

1. Contracts / schema tasks first when APIs change
2. Backend persistence + API
3. Web console or mobile consumers
4. Tests for the phase
5. Update `STATUS.md`

## Testing bar

- Prefer automated tests named in each task and in `TESTS.md`
- Backend: Jest e2e with docker Postgres/Redis
- Flutter: widget/integration for critical flows
- Web: Playwright smoke where UI exists
- From Phase 05+: run [ESSENTIAL-TEST-MATRIX.md](ESSENTIAL-TEST-MATRIX.md) items tagged for that phase

## Product boundaries

- Single-brand only — no restaurant marketplace
- Server is source of truth for price, stock, order state
- Idempotent orders/payments/refunds/assignments
- Feature-flag COD, loyalty, referrals, batching (off for pilot unless decisions say otherwise)

## STATUS.md discipline

- Mark `[x]` only after Acceptance + Tests for that task
- Never mark the phase complete if `TESTS.md` fails
- Record blockers in STATUS notes rather than skipping silently
