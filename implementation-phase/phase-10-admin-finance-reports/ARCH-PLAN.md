# Phase 10 — ARCH-PLAN

## Modules

| Module | Role |
|--------|------|
| `finance` / `ledgers` | Payment ledger lines; tip not outlet revenue |
| `earnings` | Rider earnings statements; payout stub |
| `feature-flags` | Admin CRUD (already public GET) |
| `reports` | Async-ish CSV export; RBAC |
| `analytics` | Validate event names/payloads server-side |
| Web admin | Flags + finance dashboards via BFF |
| Rider Flutter | Earnings home thin client |

## Cost

- Reports: sync CSV OK for pilot volume; no BI warehouse
- Daily exception: callable interval like expire payments (no BullMQ unless present)

## Config

- All flags Admin-editable; report retention days in app_config
