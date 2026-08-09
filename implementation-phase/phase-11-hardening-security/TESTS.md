# Phase 11 — TESTS

Run after all task pages in this phase are complete.

## Automated

- [ ] IDOR suite green
- [ ] Webhook forgery/replay green
- [ ] OTP rate limit green
- [ ] PII redaction tests green
- [ ] No secrets in git

## Manual / field

- [ ] Backup restore drill scheduled/documented
- [ ] Load-test baseline recorded vs D11

## Commands (adjust to repo scripts)

```bash
cd ../daig-backend && npm test && npm run test:e2e
cd ../daig-customer-app && flutter test
cd ../daig-rider-app && flutter test
cd ../daig-web-console && npm test && npm run test:e2e
```

Also run [../ESSENTIAL-TEST-MATRIX.md](../ESSENTIAL-TEST-MATRIX.md) items for this phase.
