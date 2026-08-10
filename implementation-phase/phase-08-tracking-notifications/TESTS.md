# Phase 08 — TESTS

Run after all task pages in this phase are complete.

## Automated

- [x] Delivery OTP never in rider APIs before customer provides it
- [x] Location access expires after delivery completion *(active-task empty; samples pruned)*
- [x] ETA recalculated at accept/assign/pickup hooks *(promised_window retained)*
- [x] Offline queue flushes on reconnect (rider)
- [x] Critical payment/delivery notifications ignore marketing opt-out

## Manual / field

- [ ] Customer sees timeline states *(widget coverage; device smoke optional)*
- [ ] Near-arrival notify stub works in staging *(log adapter only)*

## Commands

```bash
cd ../daig-backend && npm test && npm run test:e2e
cd ../daig-customer-app && flutter test
cd ../daig-rider-app && flutter test
cd ../daig-web-console && npm test
```

Also run [../ESSENTIAL-TEST-MATRIX.md](../ESSENTIAL-TEST-MATRIX.md) items for this phase.
