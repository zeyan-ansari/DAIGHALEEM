# Phase 03 — STATUS

Phase complete: [x]

## Tasks

- [x] T01 — Catalogue contract schemas
- [x] T02 — Catalogue DB models and migrations
- [x] T03 — Batch and stock engine
- [x] T04 — Public availability + product APIs
- [x] T05 — Admin catalogue CRUD + publish
- [x] T06 — Mark item unavailable with duration
- [x] T07 — Console catalogue manager UI
- [x] T08 — Customer menu list + detail
- [x] T09 — Simple menu search
- [x] T10 — Combo rules without double stock bugs

## Notes

- T01 OpenAPI: product/variant/addon/combo + availability schemas; public list/detail/availability; admin CRUD/publish/unavailable/batches
- Backend T02–T06,T10: Postgres catalogue + atomic stock; Redis availability TTL 30s; seed outlet `11111111-1111-4111-8111-111111111111`
- Apply ponytail + lean-backend-architecture for UI tasks
- T07 console: `/admin/catalogue` thin CRUD + publish via cookie BFF; stock from Admin list `availability.remaining`
- T08–T09 customer app: browse-first `MenuScreen` + detail; `GET /catalogue/products` (+ optional `q`); availability badges; sold-out Add disabled; no cart
