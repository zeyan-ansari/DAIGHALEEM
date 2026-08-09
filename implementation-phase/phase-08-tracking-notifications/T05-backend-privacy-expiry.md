# P08-T05 — Post-delivery PII expiry

**Repo:** `daig-backend`  
**Paths:** src/deliveries, src/riders  
**Depends:** T04

## Goal

After complete, remove rider access to customer contact/address beyond masked history.

## Steps

1. Access checks
2. Mask history DTO
3. Tests expiry

## Acceptance

- [ ] Rider cannot fetch raw address after delivered

## Tests

e2e privacy.expiry

## DoNot

Do not break finance dispute minimal references.

## Next

T06
