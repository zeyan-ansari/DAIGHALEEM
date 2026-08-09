# P02-T02 — OTP request/verify with mock provider

**Repo:** `daig-backend`  
**Paths:** src/auth  
**Depends:** T01

## Goal

Implement OTP flow with mock SMS provider and fixed/test OTP in non-prod.

## Steps

1. Auth module
2. Redis/store OTP codes with TTL
3. Rate limit per phone
4. Verify issues JWT/session

## Acceptance

- [ ] request+verify works in e2e
- [ ] Rate limit returns AUTH_OTP_RATE_LIMITED

## Tests

e2e auth.otp.spec.ts

## DoNot

Do not hardcode production SMS credentials.

## Next

T03
