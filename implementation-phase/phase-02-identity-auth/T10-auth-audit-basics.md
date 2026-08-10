# P02-T10 — Auth audit events

**Repo:** `daig-backend`  
**Paths:** src/audit  
**Depends:** T03,T04

## Goal

Log login, logout, revoke, role change with actor and request id.

## Steps

1. audit_events table
2. Write on auth actions
3. No PII secrets in logs

## Acceptance

- [x] Role change creates audit row

## Tests

unit/e2e audit write

## DoNot

Do not build full admin audit UI yet.

## Next

TESTS.md then NEXT.md
