# Pilot acceptance — PRD §13.2

Pilot cut: one zone · prepaid default · scheduled + limited instant · Android-first rider · web kitchen/dispatch.

## Definition of done

- [x] Customer in configured zone can discover haleem, place prepaid (or permitted COD) order, see accurate status, track rider, complete support flow *(API+apps; COD off)*
- [x] Kitchen can accept, prepare, pack, label, hand off with stock/capacity protected against oversell
- [x] Dispatcher can see exceptions and assign/reassign; rider completes pickup and OTP/proof delivery with low-connectivity recovery
- [x] Every rupee traceable across order, payment/refund, rider earning, tip, COD (if enabled), payout ledgers *(COD N/A)*
- [x] No duplicate order, double charge, double refund, or double rider assignment in retry/concurrency tests
- [x] Critical notifications, monitoring, audit, backup, incident, rollback procedures tested/documented *(mock notify; runbooks)*
- [x] App-store privacy disclosures, legal policies, food/outlet details, production support ownership complete or explicitly drafted with owners *(DRAFT docs)*

## Sign-off

| Role | Name | Date | Notes |
|------|------|------|-------|
| Product/Founder | _pending human_ | | Leave mocks until signed |
| Tech | eng automation | 2026-08-10 | Phases 01–12 automated green |
| Ops/Kitchen | _pending human_ | | |
| Finance | _pending human_ | | |
| Legal (if required) | _pending human_ | | Placeholders OK until public invoices |

## Evidence links

- Happy-path test: `daig-backend/test/pilot.happy.spec.ts`
- Essential matrix: `implementation-phase/ESSENTIAL-TEST-MATRIX.md`
- Field checklist: `implementation-phase/phase-12-pilot-acceptance/FIELD-CHECKLIST.md`
- Incident/rollback doc: `implementation-phase/phase-12-pilot-acceptance/INCIDENT-ROLLBACK.md`
- Run: [RUN.md](../../RUN.md)
