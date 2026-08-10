# Phase 05 — PLAN

## Goal

Idempotent order create with stock/slot reservation, **mock** payment intent + signed webhooks, invoices, COD flag off, expiry of abandoned pending payments. No real Razorpay keys.

## Task order / deps

1. **T01** contracts (+ order-states.json)
2. **T02** order model + FSM
3. **T03** POST /orders + reservations (after T02, P04 cart, P03 stock)
4. Parallel after T03: **T04** payments · **T07** invoices · **T08** COD flag
5. **T05** webhooks (after T04) → **T06** cancel/refund hooks
6. **T09** expiry job (after T03+T04) — callable service + interval; **no BullMQ** unless already depended (ponytail)
7. **T10** Flutter checkout (after T03+T04) ∥ continue backend T06/T07/T09
8. **T11** Flutter order detail (after T07+T10)
9. **T12** payment exception matrix e2e (after T05+T09)

## Parallelization map

| Wave | Work |
|------|------|
| A | T01 platform |
| B | T02 backend |
| C | T03 backend |
| D | T04 ∥ T07 ∥ T08 (same repo — careful shared files) |
| E | T05 → T06; T09 after T04 |
| F | T10 Flutter ∥ backend polish |
| G | T11 Flutter; T12 e2e matrix |

## Architecture notes

- Fulfilment `orderStatus` ≠ `paymentStatus` ≠ `refundStatus` (separate columns).
- Confirmed only after mock capture (or COD if flag+zone — both off for pilot).
- Idempotency-Key on create; webhook signature + dedupe table.
- Price/stock/slot server-side; tip not outlet revenue.
- Cost: mock adapter only; short hold TTL; expire releases stock once.

## UI notes

- Flutter checkout: debounce, idempotency UUID, mock pay sheet, fees already on cart.
- Order detail: cancel consequence copy; invoice JSON view; no rider map/chat.

## Exit criteria

- [STATUS.md](STATUS.md) all `[x]`
- [TESTS.md](TESTS.md) + Phase-05 rows in [ESSENTIAL-TEST-MATRIX.md](../ESSENTIAL-TEST-MATRIX.md)
- [NEXT.md](NEXT.md) → Phase 06
