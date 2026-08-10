# Phase 03 — TESTS

Run after all task pages in this phase are complete.

## Automated

- [x] Concurrent last-portion: only one checkout reservation succeeds later (stock decrement atomic)
- [x] Sold-out product not returned as available
- [x] Stale price version rejected at validation helper
- [x] Mark unavailable propagates to availability API

## Manual / field

- [x] Catalogue manager can draft then publish a price change *(covered by T07 publish UI + smoke; Admin APIs + console BFF)*

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
