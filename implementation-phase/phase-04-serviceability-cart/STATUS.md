# Phase 04 — STATUS

Phase complete: [x]

## Tasks

- [x] T01 — Serviceability/cart/pricing contracts
- [x] T02 — Outlet and delivery zones
- [x] T03 — Serviceability API
- [x] T04 — Customer addresses CRUD
- [x] T05 — Pricing engine + snapshots
- [x] T06 — Persisted carts API
- [x] T07 — Slots and capacity preview
- [x] T08 — Customer address + serviceability UX
- [x] T09 — Customer cart UI with fee breakdown
- [x] T10 — Admin zone/outlet settings UI
- [x] T11 — Coupon validation stub

## Notes

- T01 OpenAPI: serviceability, addresses, outlets/zones, slots, pricing, carts, coupons
- Backend T02–T07,T11: migration `003_serviceability_cart.sql`; Nest modules geo/outlets/serviceability/addresses/pricing/carts/slots/promotions
- Seeds: outlet `11111111-1111-4111-8111-111111111111`; zone Mira Road 8km; coupon `DAIG10`; full slot `99999999-9999-4999-8999-999999999993`; COD false
- Backend tests: `npm test` 13 pass; `npm run test:e2e` 37 pass
- T10 web: `/admin/outlets` + cookie BFF; npm test 9/9
- T08–T09 customer: address + waitlist + cart fee breakdown from server quote; flutter test 11/11
