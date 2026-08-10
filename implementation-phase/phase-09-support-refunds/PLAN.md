# Phase 09 — PLAN

## Goal

Order-context support tickets, item-level issues, policy-capped mock refunds, ratings, legal stubs, Admin `wa.me` support link. No real payment gateway refunds beyond mock adapter.

## Task order / deps

1. **T01** contracts
2. **T02** tickets + timeline
3. **T03** resolution policy engine
4. Parallel: **T04** item issues · **T05** ratings · **T06** refund execution (mock)
5. **T10** abuse flag (after T02)
6. **T07** customer support/ratings UI ∥ **T08** legal pages ∥ **T09** agent console

## Parallelization

| Wave | Work |
|------|------|
| A | T01 |
| B | T02 → T03 |
| C | T04 ∥ T05 ∥ T06 ∥ T10 |
| D | T07 ∥ T08 Flutter · T09 web |
| E | TESTS + ESSENTIAL |

## Exit criteria

- [STATUS.md](STATUS.md) all `[x]`
- [TESTS.md](TESTS.md) + ESSENTIAL Phase 09 rows
- [NEXT.md](NEXT.md) → Phase 10
