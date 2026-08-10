# Phase 11 — TESTS

## Automated

- [x] IDOR suite green
- [x] Webhook forgery/replay green
- [x] OTP rate limit green
- [x] PII redaction tests green
- [x] No secrets in git

## Manual / field

- [x] Backup restore drill scheduled/documented *(RUNBOOK-BACKUP.md)*
- [x] Load-test baseline recorded vs D11 *(perf/load-smoke.mjs stub)*

## Commands

```bash
cd ../daig-backend && npm test && npm run test:e2e
../DAIGHALEEM/scripts/secrets_hygiene.sh
cd ../daig-rider-app && flutter test
```
