# Phase 08 — REVIEW R2

## Fixes applied after R1

- Notify-after-commit deadlock fix verified across full e2e (82 pass)
- Capacity headroom helper resets current 15m bucket usage
- Dispatch board unassigned limit 200

## Corner cases re-checked

- Location inactive / active
- OTP wrong / right; rider DTO no OTP
- Privacy after deliver
- Comms token post-deliver conflict
- Full suite including DP-02/03 assignment race

## Remaining intentional stubs

- Map tiles mock/list coords only
- Push/SMS = log adapter
