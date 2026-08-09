# P10-T05 — Reports CSV export with RBAC

**Repo:** `daig-backend`  
**Paths:** src/reports  
**Depends:** T02,T03

## Goal

FIN-004 exports for orders, taxes, payments, refunds, riders, payouts.

## Steps

1. Export jobs
2. Permission checks
3. Signed download stub

## Acceptance

- [ ] finance_manager can export; support cannot

## Tests

e2e reports.rbac

## DoNot

Do not email PII exports broadly.

## Next

T06
