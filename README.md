# DAIG Haleem — Platform Orchestration

This repository (`DAIGHALEEM`) holds product requirements, shared API contracts, and a **phase-based implementation system**. Application code lives in **separate sibling repos**.

## Product

DAIG Haleem is a single-brand direct delivery platform (not a restaurant marketplace): customer app, rider app, kitchen/dispatch/admin web console, and backend APIs.

Source of truth for product rules: [DAIG_Haleem_Product_Requirements.docx](DAIG_Haleem_Product_Requirements.docx).

## Confirmed stack

| Repo | Role | Stack |
|------|------|--------|
| `daig-backend` | APIs, workers, DB, webhooks | NestJS + PostgreSQL + Redis + BullMQ |
| `daig-customer-app` | Customer mobile | Flutter (Android + iOS) |
| `daig-rider-app` | Delivery partner mobile | Flutter (Android-first) |
| `daig-web-console` | Kitchen, dispatch, support, admin | Next.js |
| `DAIGHALEEM` (this repo) | PRD, contracts, phase instructions | Docs only |

## Sibling layout

```
~/Desktop/Projects/
  DAIGHALEEM/           # this repo
  daig-backend/
  daig-customer-app/
  daig-rider-app/
  daig-web-console/
```

Details: [implementation-phase/00-REPO-LAYOUT.md](implementation-phase/00-REPO-LAYOUT.md).

## How to implement (autonomous)

1. Review [REQUIRED_DECISIONS.txt](REQUIRED_DECISIONS.txt). Phase 01 may use documented mocks; later phases are gated by [PHASE-DECISION-GATES.md](implementation-phase/PHASE-DECISION-GATES.md).
2. Open a new Cursor chat with **multi-task mode on**.
3. Paste the full contents of [START_IMPLEMENTATION.txt](START_IMPLEMENTATION.txt).
4. The agent works the first incomplete phase using small task pages under `implementation-phase/`.
5. A phase is done only when its `TESTS.md` passes and `STATUS.md` is checked off.
6. Repeat until Phase 12 acceptance.

## Phase map

See [implementation-phase/00-INDEX.md](implementation-phase/00-INDEX.md).

| Phase | Folder | Focus |
|------:|--------|--------|
| 01 | `phase-01-foundation` | Sibling repos, CI, docker, health |
| 02 | `phase-02-identity-auth` | OTP, roles, sessions |
| 03 | `phase-03-catalogue-inventory` | Menu, batches, stock |
| 04 | `phase-04-serviceability-cart` | Zones, addresses, cart, pricing |
| 05 | `phase-05-orders-payments` | Orders, payments, state machine |
| 06 | `phase-06-kitchen-ops` | Kitchen queue, capacity, pack |
| 07 | `phase-07-dispatch-rider` | Assignment, rider pickup flow |
| 08 | `phase-08-tracking-notifications` | ETA, tracking, OTP handoff |
| 09 | `phase-09-support-refunds` | Support, ratings, refunds |
| 10 | `phase-10-admin-finance-reports` | Ledgers, flags, reports |
| 11 | `phase-11-hardening-security` | Security, load, ops runbooks |
| 12 | `phase-12-pilot-acceptance` | E2E pilot sign-off |

## Contracts

Shared OpenAPI and enums live in [contracts/](contracts/). All app repos must treat these as the API source of truth.

Architecture decisions live in [`docs/adr/`](docs/adr/). Run `python3 scripts/validate_repo.py` before publishing orchestration or contract changes.

## Pilot cut

One kitchen zone · prepaid default · scheduled + limited instant · Android-first rider · web kitchen/dispatch. Defer COD, loyalty, referrals, and rider batching until reliability and unit economics are proven.

## Non-goals

- No Zomato/Swiggy branding, layouts, or proprietary logic
- No third-party restaurant marketplace features
- No production deploy during early phases (staging only)
