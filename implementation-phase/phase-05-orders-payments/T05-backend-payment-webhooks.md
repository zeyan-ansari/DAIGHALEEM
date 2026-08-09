# P05-T05 — Signed webhooks with dedupe

**Repo:** `daig-backend`  
**Paths:** src/payments/webhooks  
**Depends:** T04

## Goal

Verify signatures, dedupe, reconcile late success; never trust client alone.

## Steps

1. Webhook route
2. Signature verify
3. Idempotent processing
4. Late success confirms once

## Acceptance

- [ ] Duplicate webhook no double confirm
- [ ] Forged signature rejected

## Tests

e2e webhooks.spec.ts

## DoNot

Do not skip signature verify in prod profile.

## Next

T06
