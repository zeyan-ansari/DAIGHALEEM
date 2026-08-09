# Sibling repository layout

## Expected paths

Assume platform root:

`/Users/muhammedshahidsiddiqui/Desktop/Projects/DAIGHALEEM`

Sibling app repos (create in Phase 01 if missing):

| Repo | Path |
|------|------|
| Backend | `/Users/muhammedshahidsiddiqui/Desktop/Projects/daig-backend` |
| Customer app | `/Users/muhammedshahidsiddiqui/Desktop/Projects/daig-customer-app` |
| Rider app | `/Users/muhammedshahidsiddiqui/Desktop/Projects/daig-rider-app` |
| Web console | `/Users/muhammedshahidsiddiqui/Desktop/Projects/daig-web-console` |

## Ownership

| Concern | Lives in |
|---------|----------|
| NestJS API, workers, migrations, webhooks | `daig-backend` |
| Customer Flutter UI | `daig-customer-app` |
| Rider Flutter UI | `daig-rider-app` |
| Kitchen/dispatch/admin Next.js | `daig-web-console` |
| OpenAPI, enums, phase instructions, PRD | `DAIGHALEEM` (this repo) |

## Git remotes

Each app repo is its **own git repository** with its own remote. Do not nest app repos inside `DAIGHALEEM/`.

Suggested GitHub names (adjust to org):

- `daig-backend`
- `daig-customer-app`
- `daig-rider-app`
- `daig-web-console`
- `DAIGHALEEM` (platform)

## Local env

Each app repo gets `.env.example` only. Real secrets stay out of git (1Password/direnv/CI secrets).
