# P11-T03 — Webhook forgery + replay tests

**Repo:** `daig-backend`  
**Paths:** test/e2e/security  
**Depends:** P05-T05

## Goal

Reject forged signatures; replay protection; amount/order verification.

## Steps

1. Forgery cases
2. Replay cases
3. Amount mismatch cases

## Acceptance

- [x] All reject safely

## Tests

security.webhooks.spec.ts

## DoNot

Do not disable verify in staging permanently.

## Next

T04
