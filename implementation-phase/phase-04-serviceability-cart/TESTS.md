# Phase 04 — TESTS

Run after all task pages in this phase are complete.

## Automated

- [x] Out of zone returns SERVICEABILITY_OUT_OF_ZONE and waitlist capture works
- [x] Cart price matches server quote
- [x] Fee lines present before payment
- [x] Price version mismatch rejected
- [x] Slot full returns SLOT_FULL on validate

## Manual / field

- [ ] Map pin address save on device *(deferred — no live map in MVP; lat/lng form + serviceability instead)*
- [x] Min order and delivery fee display clearly *(cart fee breakdown widget test + server quote lines)*

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
