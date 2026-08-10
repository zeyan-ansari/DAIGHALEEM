# Phase 11 — AUDIT R1

## Security

- OTP rate limit: Redis `otp:rl:{phone}` 5/15m (SEC-01)
- IDOR suite: orders, addresses, tickets, exports, rider offers, admin RBAC (SEC-02, SEC-03)
- Webhook HMAC verify + event dedupe (SEC-04)
- MFA gate blocks admin until stub-verify in dev (SEC-08)
- PII redact unit + audit meta scrub
- Mobile tokens in `FlutterSecureStorage`, not SharedPreferences

## Secrets

- `scripts/secrets_hygiene.sh` scans all repos for private keys / live payment patterns
- `.env.example` only in each repo — no committed `.env`

## Resilience (RS-01, RS-02, RS-06)

- Idempotent order create retry
- Duplicate capture webhook leaves order confirmed once

## Cost / load

- Rate limits cut OTP abuse; perf scripts local-only
- Mock payments — no live gateway keys per REQUIRED_DECISIONS

## Gaps for R2

- Confirm full e2e + unit green after audit scrub change
- Flutter token_store tests green
- Mark MFA checklist items with test evidence
- SEC-05 coupon: promotions + serviceability-cart validate paths
