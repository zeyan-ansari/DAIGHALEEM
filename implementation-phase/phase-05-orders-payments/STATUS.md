# Phase 05 — STATUS

Phase complete: [x]

## Tasks

- [x] T01 — Orders/payments contract expansion
- [x] T02 — Order model and state machine
- [x] T03 — Idempotent order create + reservations
- [x] T04 — Payment intent + retry hold
- [x] T05 — Signed webhooks with dedupe
- [x] T06 — Cancel + refund pending hooks
- [x] T07 — Invoice/receipt snapshot
- [x] T08 — COD feature flag default off
- [x] T09 — Expire abandoned payment reservations
- [x] T10 — Customer place order + pay UI
- [x] T11 — Customer order detail + invoice entry
- [x] T12 — Payment exception matrix tests

## Notes

- Mock payments only; COD default off; no BullMQ (callable expiry)
- Backend `npm test` 17 · `test:e2e` 59 · Flutter `flutter test` 15
- ESSENTIAL-TEST-MATRIX Phase 05 Must updated (CS-03 waived: addon stock N/A)
