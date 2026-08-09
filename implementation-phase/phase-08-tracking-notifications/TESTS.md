# Phase 08 — TESTS

Run after all task pages in this phase are complete.

## Automated

- [ ] Delivery OTP never in rider APIs before customer provides it
- [ ] Location access expires after delivery completion
- [ ] ETA recalculated at accept/assign/pickup hooks
- [ ] Offline queue flushes on reconnect (rider)
- [ ] Critical payment/delivery notifications ignore marketing opt-out

## Manual / field

- [ ] Customer sees timeline states
- [ ] Near-arrival notify stub works in staging

## Commands (adjust to repo scripts)

```bash
cd ../daig-backend && npm test && npm run test:e2e
cd ../daig-customer-app && flutter test
cd ../daig-rider-app && flutter test
cd ../daig-web-console && npm test && npm run test:e2e
```

Also run [../ESSENTIAL-TEST-MATRIX.md](../ESSENTIAL-TEST-MATRIX.md) items for this phase.
