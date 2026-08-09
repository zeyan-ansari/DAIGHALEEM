# P10-T02 — Payment ledger reconciliation

**Repo:** `daig-backend`  
**Paths:** src/finance  
**Depends:** P05-T05,P09-T06

## Goal

FIN-001 reconcile order amount, gateway payment, fees, tax, tip, refund, settlement refs.

## Steps

1. ledger entries
2. daily exception query
3. unmatched payment detection

## Acceptance

- [ ] Fixture order fully reconciles

## Tests

e2e finance.payment_ledger

## DoNot

Do not mix tip into outlet revenue.

## Next

T03
