# P11-T05 — Secrets hygiene pass

**Repo:** `all app repos + DAIGHALEEM`  
**Paths:** .env.example, CI  
**Depends:** none

## Goal

Ensure no secrets committed; examples only; document secret manager usage.

## Steps

1. Scan repos for keys
2. Fix leaks
3. Document required env vars

## Acceptance

- [ ] rg finds no private keys/tokens in git

## Tests

secret scan script or rg checks

## DoNot

Do not commit .env.

## Next

T06
