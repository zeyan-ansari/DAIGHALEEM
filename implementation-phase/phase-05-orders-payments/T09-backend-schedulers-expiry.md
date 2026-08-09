# P05-T09 — Expire abandoned payment reservations

**Repo:** `daig-backend`  
**Paths:** src/orders/jobs  
**Depends:** T03,T04

## Goal

ORD-004 scheduler releases stock on payment expiry safely/idempotently.

## Steps

1. BullMQ job
2. Expire payment_pending
3. Release reservations once

## Acceptance

- [ ] Expired order releases stock

## Tests

e2e expiry job

## DoNot

Do not expire active paid orders.

## Next

T10
