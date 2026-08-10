# Phase 08 — AUDIT R2

## Security

- OTP/PII controls hold under e2e privacy + delivery.otp suites
- Live BFF uses same cookie auth as other dispatch routes

## Idempotency / money

- No payment path changes beyond post-commit notify; capture still single-row locked

## Config

- app_config knobs live; support_wa_me seeded for later Admin UI (Phase 09/10)

## Cost

- Throttled location + prune; mock notifications — OK for pilot

## Sign-off for phase exit

TESTS.md automated items green; ESSENTIAL DP-04, DL-01…04, DL-08, RS-03…05, SEC-06 marked with evidence.
