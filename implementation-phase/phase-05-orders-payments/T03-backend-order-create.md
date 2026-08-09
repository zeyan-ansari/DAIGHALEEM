# P05-T03 — Idempotent order create + reservations

**Repo:** `daig-backend`  
**Paths:** src/orders  
**Depends:** T02,P04-T06,P03-T03

## Goal

Validate cart server-side; reserve stock/capacity; create payment_pending or confirmed for COD if enabled.

## Steps

1. POST /orders with Idempotency-Key
2. Reserve batch qty
3. Reserve slot capacity
4. Price snapshot immutable

## Acceptance

- [ ] Duplicate key returns same order
- [ ] Oversell prevented

## Tests

e2e order.create.spec.ts

## DoNot

Do not mark delivered.

## Next

T04
