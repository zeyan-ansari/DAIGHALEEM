# P11-T01 — API rate limits

**Repo:** `daig-backend`  
**Paths:** src/common/throttling  
**Depends:** none

## Goal

Rate limit OTP, auth, and sensitive writes; return structured errors.

## Steps

1. Global + route limits
2. OTP tighter limits
3. Tests

## Acceptance

- [x] Burst OTP blocked

## Tests

e2e rate.limit

## DoNot

Do not lock out ops emergency break-glass without docs.

## Next

T02
