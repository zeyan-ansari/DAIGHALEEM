# P08-T04 — Delivery OTP + complete

**Repo:** `daig-backend`  
**Paths:** src/deliveries  
**Depends:** P07-T05

## Goal

Generate customer OTP; complete prepaid with OTP/proof; never expose OTP to rider APIs.

## Steps

1. OTP on customer order payload only
2. Complete endpoint
3. Wrong OTP fails
4. Support override audited

## Acceptance

- [ ] Rider GET task has no deliveryOtp field

## Tests

e2e delivery.otp.spec.ts

## DoNot

Do not send OTP to rider push.

## Next

T05
