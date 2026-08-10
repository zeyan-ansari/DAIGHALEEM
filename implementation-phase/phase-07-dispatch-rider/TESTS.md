# Phase 07 — TESTS

Run after all task pages in this phase are complete.

## Automated

- [x] Two riders accept race: only one wins
- [x] Assignment audited with reason on reassign
- [x] Pickup blocked if not packed unless override role
- [x] Go online blocked without required checks stub
- [x] Batching flag off prevents multi-order assign

## Manual / field

- [ ] Dispatcher can assign from list without map polish
- [ ] Rider offer countdown visible

## Commands (adjust to repo scripts)

```bash
cd ../daig-backend && npm test && npm run test:e2e
cd ../daig-customer-app && flutter test
cd ../daig-rider-app && flutter test
cd ../daig-web-console && npm test && npm run test:e2e
```

Also run [../ESSENTIAL-TEST-MATRIX.md](../ESSENTIAL-TEST-MATRIX.md) items for this phase.
