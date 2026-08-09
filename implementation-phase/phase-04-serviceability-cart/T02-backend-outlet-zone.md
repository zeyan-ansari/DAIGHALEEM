# P04-T02 — Outlet and delivery zones

**Repo:** `daig-backend`  
**Paths:** src/outlets, src/zones  
**Depends:** T01

## Goal

Outlet settings + polygon/radius zones with fee, min order, COD flag, ETA defaults.

## Steps

1. Migrations
2. Admin upsert zone
3. Point-in-polygon or radius check helper

## Acceptance

- [ ] Point inside/outside detected

## Tests

unit geo + e2e zone

## DoNot

Do not auto-assign riders.

## Next

T03
