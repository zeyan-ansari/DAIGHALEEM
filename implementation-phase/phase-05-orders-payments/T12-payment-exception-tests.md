# P05-T12 — Payment exception matrix tests

**Repo:** `daig-backend`  
**Paths:** test/e2e/payments  
**Depends:** T05,T09

## Goal

Automate PRD payment exceptions: pending, timeout, late webhook, duplicate, retry.

## Steps

1. Write table-driven e2e
2. Assert ledger/order invariants
3. Link from TESTS.md

## Acceptance

- [ ] All listed payment scenarios green

## Tests

npm run test:e2e -- payments.matrix

## DoNot

Do not weaken assertions to pass.

## Next

TESTS.md then NEXT.md
