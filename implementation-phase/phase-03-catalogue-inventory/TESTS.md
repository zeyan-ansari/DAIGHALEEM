# Phase 03 — TESTS

Run after all task pages in this phase are complete.

## Automated

- [ ] Concurrent last-portion: only one checkout reservation succeeds later (stock decrement atomic)
- [ ] Sold-out product not returned as available
- [ ] Stale price version rejected at validation helper
- [ ] Mark unavailable propagates to availability API

## Manual / field

- [ ] Catalogue manager can draft then publish a price change

## Commands (adjust to repo scripts)

```bash
# backend
cd ../daig-backend && npm test && npm run test:e2e

# customer (when applicable)
cd ../daig-customer-app && flutter test

# rider (when applicable)
cd ../daig-rider-app && flutter test

# web (when applicable)
cd ../daig-web-console && npm test && npm run test:e2e
```

From Phase 05 onward also run [../ESSENTIAL-TEST-MATRIX.md](../ESSENTIAL-TEST-MATRIX.md).
