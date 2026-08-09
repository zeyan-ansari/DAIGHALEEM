# P07-T03 — Atomic assignment offers

**Repo:** `daig-backend`  
**Paths:** src/dispatch  
**Depends:** T02,P06-T03

## Goal

Create offer; accept/decline; LOG-010 one rider wins; reassign with reason.

## Steps

1. offer table
2. countdown expiry job
3. transactional accept
4. manual assign API for dispatcher

## Acceptance

- [ ] Concurrent accept -> one ASSIGNMENT_CONFLICT

## Tests

e2e assignment.race.spec.ts

## DoNot

Do not enable batching.

## Next

T04
