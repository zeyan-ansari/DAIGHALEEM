# Phase 08 — REVIEW R1

## Issues found

1. **Deadlock:** `notifications.emit` inserted into `notification_log` (FK → orders) while payment capture held `FOR UPDATE` on the same order → hung e2e. Fixed: emit after COMMIT.
2. **ETA buffer query:** `bufferMinutes()` used a second pool connection during TX; now uses the TX client.
3. **Dispatch board:** `unassigned` LIMIT 50 missed packed orders after large shared-DB e2e runs → flaky auto-assign test. Raised to 200 + `created_at` tie-break.
4. **Capacity:** shared DB ceiling left at 1 by capacity e2e → later creates 409. Helpers now `ensureCapacityHeadroom()`.

## Corner cases covered

- Inactive location → 409
- Wrong OTP → 400; correct → delivered
- Rider active-task never includes `deliveryOtp`
- Customer OTP offline cache (Flutter)
- Comms token expires after delivery
- Marketing opt-out still gets critical notify (unit)

## Residual

- Map UI is placeholder coords (no paid tiles) — intentional
- Unable-to-deliver / DP-06 customer unreachable: API `unableReason` path present; polish deferred
