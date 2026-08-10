# Phase 11 — REVIEW R2

## Fixes applied after R1

- Audit meta scrub via `safeLogMeta()` before DB insert
- Webhook replay test: same `eventId` + valid re-signed tampered body → deduped, payment stays captured
- IDOR suite: rider offer accept + empty active-task cases
- Mobile `token_store_test.dart` (customer + rider)
- `perf/load-location.mjs` + `scripts/load-smoke.sh` wrapper

## Corner cases re-checked

- OTP burst 429; forged webhook 401; unknown order ignored
- Customer order/address isolation; finance export 403; rider/admin RBAC
- Order idempotency retry (RS-06); duplicate webhook order intact (RS-02)
- Full e2e: **118 pass** · unit **26 pass**

## Remaining intentional stubs

- Global Nest throttler deferred (OTP Redis RL sufficient for mock pilot)
- Cert pinning documented, not enabled
- Backup runbook — drill not executed in CI
- Load scripts = smoke only, not 10× peak cert
