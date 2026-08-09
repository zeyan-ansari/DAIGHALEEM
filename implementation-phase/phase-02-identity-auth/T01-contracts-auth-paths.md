# P02-T01 — Expand auth/users contract paths

**Repo:** `DAIGHALEEM`  
**Paths:** contracts/openapi/openapi.yaml  
**Depends:** none

## Goal

Document /auth/otp/*, /users/me, /devices, admin role endpoints.

## Steps

1. Add request/response schemas for OTP
2. Add users/me
3. Add devices register
4. Keep error codes aligned

## Acceptance

- [ ] OpenAPI includes auth verify/request and users/me

## Tests

File contains /auth/otp/verify

## DoNot

Do not implement backend in this task.

## Next

T02
