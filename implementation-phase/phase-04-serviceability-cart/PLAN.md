# Phase 04 — PLAN

## Goal

Zone serviceability, customer addresses, server-priced carts with visible fees, slots preview, admin zone/outlet basics, coupon stub — no orders/payments yet.

## Task order / deps

1. **T01** contracts (platform) — first
2. **T02** outlet/zones backend → enables **T03**, **T07**, **T10**
3. **T03** serviceability → **T04** addresses
4. **T05** pricing (after T02 + P03 stock) → **T06** carts, **T11** coupon
5. **T07** slots (after T02; parallel with T03–T06 once T02 done)
6. **T08** customer address UX (after T03+T04)
7. **T09** customer cart UI (after T06+T08)
8. **T10** web zone admin (after T02; parallel with Flutter once admin APIs exist)
9. **T11** coupon stub (after T05; can parallel T06/T07)

## Parallelization map

| Wave | Parallel |
|------|----------|
| A | T01 alone |
| B | T02 alone (migration) |
| C | T03 + T05 + T07 (same repo — serialize if file clash; prefer T03 then T05∥T07) |
| D | T04 (after T03); T11 (after T05); T06 (after T05) |
| E | T08 (customer) ∥ T10 (web) once APIs ready |
| F | T09 after T08+T06 |

## Architecture notes

- Modular Nest modules: `outlets`/`zones`, `serviceability`, `addresses`, `pricing`, `carts`, `slots`, `promotions`.
- Server quote + `priceVersion`; Redis optional short cache for serviceability; no order create.
- Point-in-polygon or radius only; waitlist capture for out-of-zone.
- Cost: no maps billing; mock geocode OK; paginate admin lists.

## UI notes

- Flutter (`flutter-daig-ui`): calm address + cart; fees before CTA; out-of-zone blocks checkout.
- Web (`web-console-daig-ui`): dense outlet/zone form; radius or polygon JSON; BFF cookie.

## Exit criteria

- All [STATUS.md](STATUS.md) tasks `[x]`
- [TESTS.md](TESTS.md) scenarios green
- Follow [NEXT.md](NEXT.md) → Phase 05
