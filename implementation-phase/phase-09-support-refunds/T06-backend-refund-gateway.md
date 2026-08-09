# P09-T06 — Refund execution vs decision

**Repo:** `daig-backend`  
**Paths:** src/refunds  
**Depends:** T03,P05-T05

## Goal

PAY-003 separate decision from gateway processing; webhook updates refunded.

## Steps

1. refund states
2. provider refund mock
3. customer-visible expected window

## Acceptance

- [ ] Decision approved while gateway pending is visible

## Tests

e2e refunds.gateway

## DoNot

Do not substitute owed cash refund with only coupon.

## Next

T07
