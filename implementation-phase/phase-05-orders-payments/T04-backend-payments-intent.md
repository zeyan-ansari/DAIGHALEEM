# P05-T04 — Payment intent + retry hold

**Repo:** `daig-backend`  
**Paths:** src/payments  
**Depends:** T03

## Goal

Create payment intent via provider port; sandbox/mock adapter; retry without new order during hold.

## Steps

1. Provider interface
2. Mock/sandbox adapter
3. Hold TTL config
4. Map success to confirmed

## Acceptance

- [ ] Failure keeps `paymentStatus=pending` until expiry policy; fulfilment status is unchanged

## Tests

e2e payments.intent.spec.ts

## DoNot

Do not put provider secrets in repo.

## Next

T05
