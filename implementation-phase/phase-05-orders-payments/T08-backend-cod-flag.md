# P05-T08 — COD feature flag default off

**Repo:** `daig-backend`  
**Paths:** src/feature-flags, src/orders  
**Depends:** T03

## Goal

COD only if flag+zone allow; pilot default off.

## Steps

1. flag cod_enabled
2. Reject COD create when off
3. Zone COD gate when on

## Acceptance

- [ ] COD order fails when flag off

## Tests

e2e cod.flag.spec.ts

## DoNot

Do not build COD ledger yet (Phase 10).

## Next

T09
