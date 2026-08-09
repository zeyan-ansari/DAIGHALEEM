# P09-T03 — Resolution policy engine

**Repo:** `daig-backend`  
**Paths:** src/support/policy  
**Depends:** T02

## Goal

Cap agent refunds by issue/evidence/value/history/role; manager approval path.

## Steps

1. Configurable rules from D09
2. approve/deny
3. audit
4. partial/full/coupon actions

## Acceptance

- [ ] Over-limit agent action blocked

## Tests

e2e refund.limits

## DoNot

Do not bypass with client flags.

## Next

T04
