# P01-T02 — Scaffold NestJS backend repo

**Repo:** `daig-backend`  
**Paths:** entire repo  
**Depends:** T01

## Goal

Create NestJS app with health module, config module, and .env.example.

## Steps

1. Create repo at sibling path if missing
2. nest new / manual NestJS scaffold with TypeScript
3. Add GET /health
4. Add .env.example for DATABASE_URL, REDIS_URL, PORT
5. Add README with run instructions

## Acceptance

- [ ] `npm run start:dev` serves /health
- [ ] .env.example committed
- [ ] No secrets committed

## Tests

curl -sf http://localhost:3000/health

## DoNot

Do not add auth, catalogue, or payments yet.

## Next

T03
