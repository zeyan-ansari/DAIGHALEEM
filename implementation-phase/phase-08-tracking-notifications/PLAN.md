# Phase 08 — PLAN

## Goal

Tracking timeline + ETA, throttled rider location, delivery OTP (customer-only), complete delivery, post-delivery PII mask, mock notification dispatcher, masked call/chat stubs. Clients stay thin; Admin/config for retention and support knobs.

## Task order / deps

1. **T01** contracts (timeline, location body, complete, OTP, prefs, comms)
2. **T02** ETA/promise model + mock maps port
3. **T03** location ingest (active delivery only; retention config)
4. **T04** delivery OTP + complete (never on rider APIs)
5. Parallel after T04: **T05** privacy expiry · **T06** notification stubs · **T11** masked comms
6. **T07** customer timeline/map/OTP (after T02–T04)
7. **T08** rider nav + complete UI (after T03–T04) → **T09** offline queue
8. **T10** dispatch live list/map stub (after T03, P07 board)

## Parallelization map

| Wave | Work |
|------|------|
| A | T01 platform |
| B | T02 → T03 → T04 backend |
| C | T05 ∥ T06 ∥ T11 (same repo — careful shared order/delivery files) |
| D | T07 Flutter customer ∥ T08 rider ∥ T10 web |
| E | T09 rider offline |
| F | TESTS + ESSENTIAL matrix Phase 08 |

## Exit criteria

- [STATUS.md](STATUS.md) all `[x]`
- [TESTS.md](TESTS.md) + Phase-08 rows in [ESSENTIAL-TEST-MATRIX.md](../ESSENTIAL-TEST-MATRIX.md)
- [NEXT.md](NEXT.md) → Phase 09
