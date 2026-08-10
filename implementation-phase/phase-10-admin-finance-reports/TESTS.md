# Phase 10 — TESTS

## Automated

- [x] Payment ledger reconciles fixture
- [x] Tip excluded from outlet revenue
- [x] Export RBAC enforced
- [x] Flags default safe for pilot
- [x] Server emits order_delivered *(analytics / notify path)*

## Manual / field

- [x] Dashboard numbers match backend fixtures *(smoke)*
- [x] Rider statement downloadable *(earnings home)*

## Commands

```bash
cd ../daig-backend && npm test && npm run test:e2e
cd ../daig-rider-app && flutter test
cd ../daig-web-console && npm test
```
