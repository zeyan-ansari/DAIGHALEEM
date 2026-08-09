# Phase 09 — TESTS

Run after all task pages in this phase are complete.

## Automated

- [ ] Refund limit by role enforced
- [ ] Item-level issue time window enforced
- [ ] Gateway refund dedupe
- [ ] Rating only after delivered
- [ ] Abuse signal requires review

## Manual / field

- [ ] Support transcript reference visible on resolution
- [ ] Legal pages marked draft if D15 incomplete

## Commands (adjust to repo scripts)

```bash
cd ../daig-backend && npm test && npm run test:e2e
cd ../daig-customer-app && flutter test
cd ../daig-rider-app && flutter test
cd ../daig-web-console && npm test && npm run test:e2e
```

Also run [../ESSENTIAL-TEST-MATRIX.md](../ESSENTIAL-TEST-MATRIX.md) items for this phase.
