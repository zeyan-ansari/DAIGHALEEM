# P08-T06 — Notification dispatcher stubs

**Repo:** `daig-backend`  
**Paths:** src/notifications  
**Depends:** P05-T05

## Goal

Push/SMS/WhatsApp ports; critical events ignore marketing consent; templates stub.

## Steps

1. Provider interfaces
2. Mock adapters
3. Events on confirm/assign/pickup/deliver
4. Consent checks

## Acceptance

- [ ] Marketing opt-out still gets delivery updates

## Tests

unit notifications

## DoNot

Do not require WhatsApp for core path.

## Next

T07
