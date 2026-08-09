# P01-T03 — Postgres + Redis docker compose

**Repo:** `daig-backend`  
**Paths:** docker-compose.yml  
**Depends:** T02

## Goal

Provide local Postgres and Redis for development and e2e.

## Steps

1. Add docker-compose with postgres:16 and redis:7
2. Document ports in README
3. Ensure volumes are named
4. Wire DATABASE_URL/REDIS_URL in .env.example

## Acceptance

- [ ] `docker compose up -d` healthy
- [ ] Backend can connect using env vars

## Tests

docker compose ps shows healthy/up

## DoNot

Do not deploy to cloud.

## Next

T04
