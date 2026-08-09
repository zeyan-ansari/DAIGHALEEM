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
| `schemas/payment-states.json` | Payment lifecycle, separate from fulfilment |
| `schemas/refund-states.json` | Refund lifecycle, separate from fulfilment |
| `schemas/assignment-states.json` | Rider assignment lifecycle |
| `schemas/analytics-events.json` | Event name dictionary (expand in Phase 10) |
| `schemas/error-codes.json` | Structured error codes |

## Rules

1. Change contracts in this repo before implementing breaking changes in apps.
2. Version public paths under `/v1`.
3. Clients never invent price or order state; server is authoritative.
4. Keep examples free of real PII.
5. Represent money as integer paise; never use floating point for authoritative totals.
6. Use UTC ISO 8601 timestamps and E.164 phone numbers.
7. Use separate fulfilment, payment, refund, and assignment state machines.
8. Public writes define idempotency and stable structured error responses.
