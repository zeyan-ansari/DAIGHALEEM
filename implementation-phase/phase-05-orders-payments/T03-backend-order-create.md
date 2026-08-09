# P05-T03 — Idempotent order create + reservations

**Repo:** `daig-backend`  
**Paths:** src/orders  
**Depends:** T02,P04-T06,P03-T03

## Goal

Validate cart server-side; reserve stock/capacity; create an order aggregate with
`paymentStatus=pending`. Set `orderStatus=confirmed` only after captured payment
or approved COD. Payment lifecycle must not be stored in `orderStatus`.

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
