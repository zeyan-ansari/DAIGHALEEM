# Phase 06 — TESTS

Run after all task pages in this phase are complete.

## Automated

- [x] Accept/reject within SLA fields recorded
- [x] Reject paid order triggers refund workflow hook
- [x] Capacity bucket blocks over-accept/create as designed
- [x] Packed requires package count + seal confirmation
- [x] Pickup code/QR payload generated

## Manual / field

- [ ] Audible/new order attention acceptable in browser
- [ ] Ticket print layout readable

## Commands (adjust to repo scripts)

```bash
cd ../daig-backend && npm test && npm run test:e2e
cd ../daig-customer-app && flutter test
cd ../daig-rider-app && flutter test
cd ../daig-web-console && npm test && npm run test:e2e
```

Also run [../ESSENTIAL-TEST-MATRIX.md](../ESSENTIAL-TEST-MATRIX.md) items for this phase.
