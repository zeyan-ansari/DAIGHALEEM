# Phase 09 — AUDIT R1

## Security

- Support resolve MFA-gated for console roles
- Refund caps server-side by role; clients cannot bypass
- Evidence is metadata stub only (no public blobs)

## Idempotency

- Refund execute dedupe key enforced

## Config

- `refund_agent_cap_paise`, `issue_window_hours`, `support_wa_me`, legal placeholders in app_config / Admin

## Cost

- Mock refund gateway; no WhatsApp Business API — wa.me link only

## R2 focus

- Confirm full e2e green after slot LEAST fix
- Mark TESTS + ESSENTIAL rows
