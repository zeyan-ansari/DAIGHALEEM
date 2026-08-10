# P02-T03 — Sessions and device registration

**Repo:** `daig-backend`  
**Paths:** src/auth, src/devices  
**Depends:** T02

## Goal

Persist sessions/devices; support revoke.

## Steps

1. devices table
2. POST /devices
3. revoke session endpoint
4. middleware loads session

## Acceptance

- [x] Revoked session cannot call protected route

## Tests

e2e session revoke

## DoNot

Do not build full profile UI.

## Next

T04
