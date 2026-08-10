# Phase 08 — AUDIT R1

## Security

- Delivery OTP never on rider APIs; hashed at rest + plaintext only for customer DTO while active
- Masked comms tokens; no raw phone in responses
- Post-delivery: active-task empty; OTP columns cleared

## Idempotency

- Complete wrong OTP fails cleanly; second complete after delivered should conflict (verify in R2)

## Configurability

- `app_config`: eta_buffer_minutes, location_retention_hours, location_min_interval_sec, support_wa_me
- Notification prefs via `/users/me/notification-preferences`

## Cost / load

- Location throttle via min interval; samples pruned on complete
- Mock notify log only — no SMS/push spend
- Customer poll ~refresh; no global WS

## Gaps for R2

- Confirm complete-after-delivered returns CONFLICT
- Ensure dispatch live BFF authz matches board roles
- Document OTP in USER_JOURNEYS
