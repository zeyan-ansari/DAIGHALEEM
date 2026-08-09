# Phase 06 — Kitchen operations console

## Goal

Kitchen can accept/reject, progress prep to packed with labels/codes, and capacity limits prevent oversell.

## PRD mapping

OPS-001…008; capacity engine; pack checklist.

## Task pages

- `T01` — Kitchen API contracts (`DAIGHALEEM`)
- `T02` — Kitchen queue + accept/reject (`daig-backend`)
- `T03` — Preparing and packed transitions (`daig-backend`)
- `T04` — Capacity buckets per 15 minutes (`daig-backend`)
- `T05` — Pickup QR/code + ticket payload (`daig-backend`)
- `T06` — Kitchen batch quantity ops (`daig-backend`)
- `T07` — Kitchen queue UI (`daig-web-console`)
- `T08` — Pack checklist + ticket UI (`daig-web-console`)
- `T09` — Capacity configuration UI (`daig-web-console`)
- `T10` — Unavailable item revalidates open carts (`daig-backend`)

## Exit criteria

- All boxes in [STATUS.md](STATUS.md) checked
- [TESTS.md](TESTS.md) passing
- Follow [NEXT.md](NEXT.md)
