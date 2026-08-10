# Phase 01 — TESTS

Run after all task pages in this phase are complete.

## Automated

- [x] Backend /health returns 200 with postgres+redis up
- [x] Backend unit smoke test passes in CI config
- [x] Flutter customer `flutter analyze` / `flutter test` smoke passes
- [x] Flutter rider smoke passes
- [x] Next.js console build or lint smoke passes

## Manual / field

- [x] docker compose up brings postgres+redis healthy
- [x] Each sibling repo has README and .env.example
- [x] Repos remotes are separate (not nested)

## Commands (adjust to repo scripts)

```bash
# backend
cd ../daig-backend && npm test && npm run test:e2e

# customer (when applicable)
cd ../daig-customer-app && flutter test

# rider (when applicable)
cd ../daig-rider-app && flutter test

# web (when applicable)
cd ../daig-web-console && npm test && npm run test:e2e
```

From Phase 05 onward also run [../ESSENTIAL-TEST-MATRIX.md](../ESSENTIAL-TEST-MATRIX.md).
