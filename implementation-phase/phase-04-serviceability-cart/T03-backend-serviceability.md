# P04-T03 — Serviceability API

**Repo:** `daig-backend`  
**Paths:** src/serviceability  
**Depends:** T02

## Goal

Return deliverable, outlet, mode, fee, min order, ETA/slots preview.

## Steps

1. POST /serviceability
2. Use D01 defaults if coords provided
3. Out of zone error + waitlist endpoint

## Acceptance

- [ ] Out of zone structured error

## Tests

e2e serviceability

## DoNot

Do not require real maps key if mock geocode suffices.

## Next

T04
