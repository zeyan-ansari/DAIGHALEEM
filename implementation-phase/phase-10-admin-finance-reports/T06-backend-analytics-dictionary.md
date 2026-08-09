# P10-T06 — Analytics event validation

**Repo:** `daig-backend`  
**Paths:** src/analytics  
**Depends:** T01

## Goal

ANA-001/002: document triggers; emit server-side fulfilment events as source of truth.

## Steps

1. Event emitter
2. Server events for order lifecycle
3. Tests for required props

## Acceptance

- [ ] order_delivered emitted from backend not only client

## Tests

e2e analytics.server

## DoNot

Do not send PII in analytics payloads.

## Next

T07
