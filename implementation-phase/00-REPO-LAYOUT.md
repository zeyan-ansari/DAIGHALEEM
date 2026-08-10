# Sibling repository layout

## Expected paths

Resolve the platform root from the checked-out `DAIGHALEEM` repository. Do not
hard-code a developer username or home directory. The documented default is:

`~/Desktop/Projects/DAIGHALEEM`

Sibling app repos (create in Phase 01 if missing):

| Repo | Path |
|------|------|
| Backend | `../daig-backend` |
| Customer app | `../daig-customer-app` |
| Rider app | `../daig-rider-app` |
| Web console | `../daig-web-console` |

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

Each app repo gets `.env.example` only. Real secrets stay out of git and live in
the approved secret manager and CI/deployment secret stores. Local development
may use untracked environment files or an approved environment loader.
