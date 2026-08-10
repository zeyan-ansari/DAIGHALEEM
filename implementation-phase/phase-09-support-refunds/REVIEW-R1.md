# Phase 09 — REVIEW R1

## Issues

1. Full-suite flaky OTP rate-limit on shared seed phones — login helper already clears Redis; isolated specs green.
2. Slot `releaseCapacity` could exceed `capacity_total` when expire job double-released under shared DB — capped with `LEAST(capacity_total, …)`.
3. `refund.dedupe` had one ECONNRESET under full suite load — re-run green.

## Corner cases covered

- Agent over refund cap → REFUND_LIMIT_EXCEEDED
- Ratings only after delivered
- Abuse flag after repeated issues
- Gateway refund dedupe
- Legal pages DRAFT placeholders
