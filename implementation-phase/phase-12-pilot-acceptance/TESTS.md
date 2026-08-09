# Phase 12 — TESTS

Run after all task pages in this phase are complete.

## Automated

- [ ] Pilot happy-path e2e green
- [ ] Essential matrix Must items green or waived with owner
- [ ] No duplicate order/charge/refund/assignment in concurrency tests

## Manual / field

- [ ] Field checklist completed on real devices
- [ ] Incident/rollback owners named
- [ ] Legal draft pages present

## Commands (adjust to repo scripts)

```bash
cd ../daig-backend && npm test && npm run test:e2e
cd ../daig-customer-app && flutter test
cd ../daig-rider-app && flutter test
cd ../daig-web-console && npm test && npm run test:e2e
```

Also run [../ESSENTIAL-TEST-MATRIX.md](../ESSENTIAL-TEST-MATRIX.md) items for this phase.
