# P05-T06 — Cancel + refund pending hooks

**Repo:** `daig-backend`  
**Paths:** src/orders, src/refunds  
**Depends:** T02,T05

## Goal

Customer cancel before accept; release reservations; set fulfilment to cancelled
and independently set `refundStatus=requested/processing` for a paid cancellation.
The refund lifecycle must never replace the fulfilment status.

## Steps

1. Cancel policy stub from D09
2. Release stock/slots
3. Refund record states

## Acceptance

- [ ] Paid cancel preserves `orderStatus=cancelled` and creates a separate refund lifecycle

## Tests

e2e cancel.refund.spec.ts

## DoNot

Do not build full support UI.

## Next

T07
