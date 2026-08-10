# Phase 07 — PLAN

## Goal

Manual/assisted dispatch: rider online/offline, atomic offers (one winner), pickup verify with code/packages, min PII; auto-assign + batching **flagged off**. List-first dispatch board; no turn-by-turn.

## Task order / deps

1. **T01** contracts
2. **T02** rider profile/availability → **T03** atomic offers
3. After T03: **T04** auto_assign flag · **T05** pickup verify · **T06** alerts
4. **T10** PII redaction (with/after T05)
5. **T07** web board (after T03+T06)
6. **T08** rider offer UI (after T02+T03) → **T09** pickup UI (after T05+T08)

## Parallelization map

| Wave | Work |
|------|------|
| A | T01 |
| B | T02 |
| C | T03 |
| D | T04 ∥ T05 ∥ T06 |
| E | T10 after T05; T07 web ∥ T08 rider |
| F | T09 after T08+T05 |

## Architecture notes

- Transactional accept; ASSIGNMENT_CONFLICT on race
- Offer expiry → alert record (no SMS spam)
- auto_assign default false; batching stays off
- Pickup uses kitchen pickupCode; no customer delivery OTP
- Redact phone/full address; locality only at pickup

## UI notes

- Web: dense dispatch board, assign modal, SLA flags; slow poll
- Rider Flutter: availability + offer countdown; pickup checklist; no maps SDK

## Exit criteria

STATUS · TESTS · ESSENTIAL DP-01…03 as covered · NEXT → Phase 08
