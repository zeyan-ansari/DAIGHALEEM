# P10-T10 — Daily exception report job

**Repo:** `daig-backend`  
**Paths:** src/finance/jobs  
**Depends:** T02,T03

## Goal

FIN-003 daily exceptions: unmatched payments, late callbacks, failed refunds, negative balances, manual closures.

## Steps

1. BullMQ cron
2. Persist report
3. Notify finance role stub

## Acceptance

- [ ] Job produces report row for fixture anomalies

## Tests

e2e finance.exceptions_job

## DoNot

Do not auto-fix money.

## Next

TESTS.md then NEXT.md
