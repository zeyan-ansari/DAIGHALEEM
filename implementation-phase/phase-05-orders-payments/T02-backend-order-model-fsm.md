# P05-T02 — Order model and state machine

**Repo:** `daig-backend`  
**Paths:** src/orders  
**Depends:** T01

## Goal

Persist orders/items/charges/address snapshot/state events; enforce transitions.

## Steps

1. Migrations
2. transition service with audit fields
3. reject illegal transitions
4. correlation ids

## Acceptance

- [ ] ORD-001 enforced in tests

## Tests

unit fsm.spec.ts

## DoNot

Do not let clients PATCH arbitrary state.

## Next

T03
