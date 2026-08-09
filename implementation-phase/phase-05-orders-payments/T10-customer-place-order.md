# P05-T10 — Customer place order + pay UI

**Repo:** `daig-customer-app`  
**Paths:** lib/features/checkout  
**Depends:** T03,T04

## Goal

Checkout calls create order with idempotency key; handle pay success/fail/pending.

## Steps

1. Place order button debounce
2. Idempotency UUID
3. Payment sheet/mock
4. Confirmation screen basics

## Acceptance

- [ ] Double tap does not create two orders

## Tests

integration test mock

## DoNot

Do not show rider map yet.

## Next

T11
