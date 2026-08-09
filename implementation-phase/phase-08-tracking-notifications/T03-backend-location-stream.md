# P08-T03 — Rider location ingest

**Repo:** `daig-backend`  
**Paths:** src/location  
**Depends:** P07-T05

## Goal

Accept GPS samples during active delivery; adaptive frequency server-side OK; retain policy stub.

## Steps

1. POST location
2. Store samples
3. Reject when not active
4. Retention config

## Acceptance

- [ ] Inactive task rejects location

## Tests

e2e location

## DoNot

Do not keep GPS forever.

## Next

T04
