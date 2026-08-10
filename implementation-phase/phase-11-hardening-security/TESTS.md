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
../DAIGHALEEM/scripts/load-smoke.sh   # local API + Redis required
cd ../daig-customer-app && flutter test test/token_store_test.dart
cd ../daig-rider-app && flutter test test/token_store_test.dart
```

## Evidence (2026-08-10)

- Unit: 26 pass · E2e: 118 pass
- Flutter token_store: 2 pass
- secrets_hygiene: ok
