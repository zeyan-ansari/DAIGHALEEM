# Phase 11 — REVIEW R1

## Issues found

1. **Audit meta PII:** `AuditService.write` stored caller meta verbatim — phones/tokens could land in `audit_events`. Fixed: `safeLogMeta()` on insert.
2. **Webhook replay clarity:** Duplicate `eventId` with tampered body was untested. Added explicit dedupe + unknown-order ignore cases in `webhooks.spec.ts`.
3. **IDOR gaps:** Rider offer accept and empty active-task not in security suite. Added to `security.idor.spec.ts`.
4. **Mobile token tests:** Secure storage documented but no regression test. Added `token_store_test.dart` (customer + rider, memory backend).
5. **Load scripts:** Only OTP smoke existed; location post smoke + platform wrapper added.

## Corner cases covered

- OTP burst → 429 (existing)
- Customer order/address isolation; finance export RBAC; support ticket scope
- Rider cannot accept another rider's offer; no assignment → empty active-task
- Forged webhook 401; replay dedupe; unknown order ignored
- Order idempotency + duplicate webhook (resilience)

## Residual

- Global Nest throttler deferred — OTP Redis RL documented in `src/common/throttling/README.md`
- Certificate pinning stub only (mobile README)
- Backup drill not executed — runbook only
