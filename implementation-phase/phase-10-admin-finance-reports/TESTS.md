# Phase 10 — TESTS

Run after all task pages in this phase are complete.

## Automated

- [ ] Payment ledger reconciles fixture
- [ ] Tip excluded from outlet revenue
- [ ] Export RBAC enforced
- [ ] Flags default safe for pilot
- [ ] Server emits order_delivered

## Manual / field

- [ ] Dashboard numbers match backend fixtures
- [ ] Rider statement downloadable

## Commands (adjust to repo scripts)

```bash
cd ../daig-backend && npm test && npm run test:e2e
cd ../daig-customer-app && flutter test
cd ../daig-rider-app && flutter test
cd ../daig-web-console && npm test && npm run test:e2e
```

Also run [../ESSENTIAL-TEST-MATRIX.md](../ESSENTIAL-TEST-MATRIX.md) items for this phase.
