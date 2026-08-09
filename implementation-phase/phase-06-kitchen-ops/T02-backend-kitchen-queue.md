# P06-T02 — Kitchen queue + accept/reject

**Repo:** `daig-backend`  
**Paths:** src/kitchen  
**Depends:** T01,P05-T02

## Goal

List orders by kitchen states; accept/reject with reason; SLA countdown metadata.

## Steps

1. Queue query
2. Accept -> accepted
3. Reject -> cancel/refund path
4. RBAC kitchen_operator

## Acceptance

- [ ] Reject requires reason

## Tests

e2e kitchen.accept.spec.ts

## DoNot

Do not assign riders here.

## Next

T03
