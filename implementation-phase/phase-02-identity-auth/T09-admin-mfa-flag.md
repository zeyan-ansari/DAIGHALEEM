# P02-T09 — Admin MFA required flag

**Repo:** `daig-backend`  
**Paths:** src/iam  
**Depends:** T04

## Goal

Persist mfaEnabled/required on admin users; block console if required unmet (stub factor OK).

## Steps

1. Add fields
2. Enforce on admin login
3. Document stub TOTP/bypass for staging

## Acceptance

- [x] Admin with mfaRequired and not verified cannot access admin APIs

## Tests

e2e admin mfa gate

## DoNot

Do not integrate external IdP unless D14 specifies.

## Next

T10
