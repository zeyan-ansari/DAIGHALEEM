# P07-T05 — Pickup verification

**Repo:** `daig-backend`  
**Paths:** src/deliveries  
**Depends:** T03,P06-T05

## Goal

QR/code + package count; seal confirmation; block if not packed unless override.

## Steps

1. pickup endpoint
2. code check
3. package count match
4. override audited

## Acceptance

- [ ] Wrong code fails
- [ ] Unpacked blocked

## Tests

e2e pickup.spec.ts

## DoNot

Do not reveal customer OTP.

## Next

T06
