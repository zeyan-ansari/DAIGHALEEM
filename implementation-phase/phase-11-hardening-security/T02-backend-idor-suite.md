# P11-T02 — IDOR and authz regression suite

**Repo:** `daig-backend`  
**Paths:** test/e2e/security  
**Depends:** P02-T04,P04-T04,P05-T03

## Goal

Customer A cannot read B addresses/orders; rider cannot read others' tasks; role bypass attempts fail.

## Steps

1. Table-driven IDOR tests
2. Cover exports
3. Cover support tickets

## Acceptance

- [ ] All IDOR cases fail closed

## Tests

npm run test:e2e -- security.idor

## DoNot

Do not skip failing tests.

## Next

T03
