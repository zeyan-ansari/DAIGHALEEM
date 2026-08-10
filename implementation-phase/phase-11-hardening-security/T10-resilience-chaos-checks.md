# P11-T10 — Resilience checklist tests

**Repo:** `daig-backend`  
**Paths:** test/e2e/resilience  
**Depends:** none

## Goal

API timeout handling, provider outage mock, deploy-during-active-order notes/tests for idempotency.

## Steps

1. Provider down cases
2. Push failure does not break order
3. Idempotent retries

## Acceptance

- [x] Core order path survives provider outage with degraded notifications

## Tests

resilience.spec.ts

## DoNot

Do not require perfect availability for non-critical content.

## Next

TESTS.md then NEXT.md
