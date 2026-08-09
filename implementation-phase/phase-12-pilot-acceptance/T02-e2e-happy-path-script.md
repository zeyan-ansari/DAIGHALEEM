# P12-T02 — E2E happy-path automation

**Repo:** `daig-backend + apps`  
**Paths:** test/e2e/pilot  
**Depends:** T01

## Goal

Automate: serviceability → cart → pay → kitchen accept/pack → assign → pickup → deliver → rate.

## Steps

1. API-level e2e first
2. Optional UI smoke
3. Assert ledgers close

## Acceptance

- [ ] Happy path green on staging/local compose

## Tests

npm run test:e2e -- pilot.happy

## DoNot

Do not skip ledger asserts.

## Next

T03
