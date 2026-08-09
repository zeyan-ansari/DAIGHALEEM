# Phase 05 — Orders and payments

## Goal

Idempotent orders, stock/capacity reservation, payment intents/webhooks, canonical state machine, invoices; COD feature-flagged off by default.

## PRD mapping

CUS-028, CUS-030…035; ORD-001…005; PAY-001…004; §6 exception matrix; COD flag.

## Task pages

- `T01` — Orders/payments contract expansion (`DAIGHALEEM`)
- `T02` — Order model and state machine (`daig-backend`)
- `T03` — Idempotent order create + reservations (`daig-backend`)
- `T04` — Payment intent + retry hold (`daig-backend`)
- `T05` — Signed webhooks with dedupe (`daig-backend`)
- `T06` — Cancel + refund pending hooks (`daig-backend`)
- `T07` — Invoice/receipt snapshot (`daig-backend`)
- `T08` — COD feature flag default off (`daig-backend`)
- `T09` — Expire abandoned payment reservations (`daig-backend`)
- `T10` — Customer place order + pay UI (`daig-customer-app`)
- `T11` — Customer order detail + invoice entry (`daig-customer-app`)
- `T12` — Payment exception matrix tests (`daig-backend`)

## Exit criteria

- All boxes in [STATUS.md](STATUS.md) checked
- [TESTS.md](TESTS.md) passing
- Follow [NEXT.md](NEXT.md)
