# Phase 09 — ARCH-PLAN

## Modules

| Module | Role |
|--------|------|
| `support` | Tickets, timeline append, attachments metadata (no public blobs) |
| `support/policy` | Cap refunds by role/issue/value from `app_config` / Admin |
| `ratings` | Food/packaging/delivery after delivered only |
| `refunds` | Decision vs mock gateway execute; dedupe |
| `admin` legal/support | wa.me URL+message, GST/FSSAI placeholders |
| Flutter `support` / `legal` | Thin MVVM against OpenAPI |
| Web `/support` | Agent console BFF |

## Boundaries

- Server is source of truth for refund amounts and eligibility windows
- Clients never invent refund totals
- Mock refund adapter only (REQUIRED_DECISIONS)

## Config knobs

- Refund caps by role
- Issue time windows
- support_wa_me (already in app_config)
- Legal placeholder strings

## Cost

- No chat vendor; tickets in Postgres
- Evidence = metadata + stub signed URL, not object storage yet
