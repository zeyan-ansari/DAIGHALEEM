# Phase 06 — PLAN

## Goal

Kitchen queue accept/reject → prep → packed with checklist + pickup code; 15‑min capacity buckets; kitchen batch/wastage; cart revalidate on unavailable. No rider dispatch.

## Task order / deps

1. **T01** contracts
2. **T02** queue accept/reject → **T03** prep/pack → **T05** pickup codes
3. **T04** capacity (after P05 order create; can parallel T02 once contracts done)
4. **T06** kitchen batch ops (parallel with T03–T05)
5. **T10** unavailable → cart revalidate (after T06)
6. **T07** web queue (after T02) → **T08** pack UI (after T03+T05+T07)
7. **T09** capacity admin UI (after T04)

## Parallelization map

| Wave | Work |
|------|------|
| A | T01 |
| B | T02 ∥ T04 ∥ T06 (same repo — serialize shared order/inventory carefully) |
| C | T03 → T05; T10 after T06 |
| D | T07 web ∥ T09 web when APIs ready |
| E | T08 after T07+T05 |

Prefer: T02 then T03/T05; T04/T06 in parallel after T01; web after APIs.

## Architecture notes

- Reuse Phase 05 FSM transitions; kitchen role + AdminMfa as needed
- Reject → cancelled fulfilment + refund lifecycle if paid (OR-01)
- Capacity: prep vs pack buckets per 15 min; CAPACITY_EXCEEDED on reserve/create
- Slow poll OK for kitchen UI (no chatty WS); BFF cookie session
- Pickup codes: random, not phone on ticket

## UI notes

- Dense calm ops (`web-console-daig-ui`); allergy/notes emphasized
- Pack: checklist gate; browser print ticket
- Capacity form: ceilings + utilization

## Exit criteria

- STATUS all `[x]` · TESTS.md · ESSENTIAL OR-01 · NEXT → Phase 07
