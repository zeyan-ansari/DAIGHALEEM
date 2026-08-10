# Phase 09 — TESTS

Run after all task pages in this phase are complete.

## Automated

- [x] Refund limit by role enforced
- [x] Item-level issue time window enforced
- [x] Gateway refund dedupe
- [x] Rating only after delivered
- [x] Abuse signal requires review

## Manual / field

- [x] Support transcript reference visible on resolution *(console timeline)*
- [x] Legal pages marked draft if D15 incomplete *(draft banner in app)*

## Commands (adjust to repo scripts)

```bash
cd ../daig-backend && npm test && npm run test:e2e
cd ../daig-customer-app && flutter test
cd ../daig-rider-app && flutter test
cd ../daig-web-console && npm test
```

Also run [../ESSENTIAL-TEST-MATRIX.md](../ESSENTIAL-TEST-MATRIX.md) items for this phase.
