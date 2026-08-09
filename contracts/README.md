# DAIG shared contracts

Source of truth for public/mobile and console APIs consumed by:

- `daig-backend` (implements)
- `daig-customer-app`
- `daig-rider-app`
- `daig-web-console`

## Contents

| Path | Purpose |
|------|---------|
| `openapi/openapi.yaml` | API skeleton by domain |
| `schemas/order-states.json` | Canonical order state enum + allowed transitions |
| `schemas/analytics-events.json` | Event name dictionary (expand in Phase 10) |
| `schemas/error-codes.json` | Structured error codes |

## Rules

1. Change contracts in this repo before implementing breaking changes in apps.
2. Version public paths under `/v1`.
3. Clients never invent price or order state; server is authoritative.
4. Keep examples free of real PII.
