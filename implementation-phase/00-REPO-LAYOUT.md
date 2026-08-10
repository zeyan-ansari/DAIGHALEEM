# Repository layout

## Clone with all app code (submodules)

```bash
git clone --recurse-submodules -b code/phasedimplementation \
  https://github.com/zeyan-ansari/DAIGHALEEM.git
```

| Repo | Path in this clone | Remote |
|------|--------------------|--------|
| Backend | `apps/daig-backend` | https://github.com/Siddiqui-Shahid/daig-backend |
| Customer app | `apps/daig-customer-app` | https://github.com/Siddiqui-Shahid/daig-customer-app |
| Rider app | `apps/daig-rider-app` | https://github.com/Siddiqui-Shahid/daig-rider-app |
| Web console | `apps/daig-web-console` | https://github.com/Siddiqui-Shahid/daig-web-console |
| Platform (this) | `.` | https://github.com/zeyan-ansari/DAIGHALEEM |

Submodules track branch `code/phasedimplementation`.

Update later:

```bash
git pull
git submodule update --init --recursive
```

## Alternate: side-by-side siblings

Some agents/docs still use paths next to the platform root:

```
~/Desktop/Projects/
  DAIGHALEEM/
  daig-backend/
  daig-customer-app/
  daig-rider-app/
  daig-web-console/
```

Either layout is fine; prefer `apps/` when cloning this repo once.

## Ownership

| Concern | Lives in |
|---------|----------|
| NestJS API, workers, migrations, webhooks | `daig-backend` |
| Customer Flutter UI | `daig-customer-app` |
| Rider Flutter UI | `daig-rider-app` |
| Kitchen/dispatch/admin Next.js | `daig-web-console` |
| OpenAPI, enums, phase instructions, PRD | `DAIGHALEEM` (this repo) |

## Local env

Each app repo gets `.env.example` only. Real secrets stay out of git.
