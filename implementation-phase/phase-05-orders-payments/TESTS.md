# Phase 05 — TESTS

Run after all task pages in this phase are complete.

## Automated

- [x] Idempotent create: double submit one order
- [x] Payment success/fail/pending/timeout/late webhook/duplicate webhook
- [x] Retry payment does not duplicate order or lose hold incorrectly
- [x] Invalid state transition rejected
- [ ] Kitchen rejection preserves cancelled fulfilment and starts a separate refund lifecycle _(Phase 06 OR-01)_
- [x] COD path blocked when flag off

## Manual / field

- [ ] Invoice shows itemized GST fields placeholders
- [ ] No fee appears only after authorize

## Commands (adjust to repo scripts)

```bash
cd ../daig-backend && npm test && npm run test:e2e
cd ../daig-customer-app && flutter test
cd ../daig-rider-app && flutter test
cd ../daig-web-console && npm test && npm run test:e2e
```

Also run [../ESSENTIAL-TEST-MATRIX.md](../ESSENTIAL-TEST-MATRIX.md) items for this phase.
