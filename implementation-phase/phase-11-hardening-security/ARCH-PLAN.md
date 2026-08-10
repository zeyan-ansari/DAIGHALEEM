# Phase 11 — ARCH-PLAN

## Approach

- Nest throttler / Redis rate limits on OTP + public endpoints
- Expand e2e IDOR matrix (orders/addresses/tickets)
- Webhook signature + replay already partial — harden tests
- Structured log redaction middleware
- Docs: backup/restore, MFA access review, load scripts under `scripts/`
- Flutter: secure storage already; certificate pin stub optional skip if YAGNI

## Cost

- Rate limits reduce abuse load; load scripts local only
