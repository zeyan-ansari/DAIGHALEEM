# P05-T06 — Cancel + refund pending hooks

**Repo:** `daig-backend`  
**Paths:** src/orders, src/refunds  
**Depends:** T02,T05

## Goal

Customer cancel before accept; release reservations; refund_pending on paid cancel; separate decision vs gateway status.

## Steps

1. Cancel policy stub from D09
2. Release stock/slots
3. Refund record states

## Acceptance

- [ ] Paid cancel creates refund_pending

## Tests

e2e cancel.refund.spec.ts

## DoNot

Do not build full support UI.

## Next

T07
