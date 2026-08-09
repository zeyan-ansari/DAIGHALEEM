# P09-T10 — Abuse signal flag + human review

**Repo:** `daig-backend`  
**Paths:** src/risk  
**Depends:** T04

## Goal

Detect repeated abuse signals; require human review before restriction (QLT-003).

## Steps

1. signal counters
2. review queue record
3. no auto ban

## Acceptance

- [ ] Threshold creates review item not auto-block

## Tests

unit risk

## DoNot

Do not silently block accounts.

## Next

TESTS.md then NEXT.md
