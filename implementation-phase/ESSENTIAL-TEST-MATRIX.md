# Essential test matrix (PRD §13.3)

Run from **Phase 05 onward** as a regression pack. Each phase’s `TESTS.md` points here.

Legend: **Must** = launch integrity · **Should** = V1 strong · Waiver requires owner + reason in Notes.

Status per row: `[ ]` pending · `[x]` pass · `[~]` waived

---

## Cart / stock

| ID | Scenario | Min phase | Pri | Status | Evidence |
|----|----------|-----------|-----|--------|----------|
| CS-01 | Concurrent last portion — only one succeeds | 05 | Must | [x] | orders.create e2e / inventory |
| CS-02 | Stale price rejected at order create | 05 | Must | [x] | orders.create e2e |
| CS-03 | Sold-out add-on blocked | 05 | Must | [~] | addons have no stock engine yet |
| CS-04 | Slot full blocked | 05 | Must | [x] | orders.create / validate |
| CS-05 | Outlet closes during checkout | 05 | Must | [x] | orders.create outlet hours |

## Payment

| ID | Scenario | Min phase | Pri | Status | Evidence |
|----|----------|-----------|-----|--------|----------|
| PY-01 | Payment success → confirmed | 05 | Must | [x] | payments.intent / webhooks |
| PY-02 | Payment failure path | 05 | Must | [x] | payments.intent / matrix |
| PY-03 | Payment pending handling | 05 | Must | [x] | payments.matrix |
| PY-04 | Payment timeout / expiry releases reservation | 05 | Must | [x] | expirePendingPayments e2e |
| PY-05 | Late webhook confirms once | 05 | Must | [x] | webhooks / matrix |
| PY-06 | Duplicate webhook idempotent | 05 | Must | [x] | webhooks |
| PY-07 | Retry without duplicate order | 05 | Must | [x] | payments.matrix |
| PY-08 | Refund failure surfaced / retried safely | 09 | Must | [x] | refund.fail.spec (mock fail + retry) |

## Order

| ID | Scenario | Min phase | Pri | Status | Evidence |
|----|----------|-----------|-----|--------|----------|
| OR-01 | Kitchen reject after pay → refund path | 06 | Must | [x] | kitchen.accept reject e2e |
| OR-02 | Customer cancel before accept | 05 | Must | [x] | cancel.refund e2e |
| OR-03 | Customer cancel after accept policy | 09 | Must | [x] | cancel after accept → 409 |
| OR-04 | Admin/support override audited | 09 | Must | [x] | support resolve → ticket_events |
| OR-05 | Illegal/out-of-order state transition rejected | 05 | Must | [x] | fsm.spec.ts |
| OR-06 | Idempotent order create (double tap) | 05 | Must | [x] | orders.create e2e |

## Dispatch

| ID | Scenario | Min phase | Pri | Status | Evidence |
|----|----------|-----------|-----|--------|----------|
| DP-01 | No rider available escalation | 07 | Must | [x] | dispatch alerts e2e |
| DP-02 | Two riders accept simultaneously — one wins | 07 | Must | [x] | assignment.race e2e |
| DP-03 | Rider cancels before pickup → reassign | 07 | Must | [x] | assignment.race / reassign |
| DP-04 | Stale GPS / inactive location rejected | 08 | Must | [x] | location.spec e2e |
| DP-05 | Route deviation updates ETA (or risk flag) | 08 | Should | [x] | eta recalc on location (mock) |
| DP-06 | Customer unreachable flow | 08 | Must | [x] | complete unableReason → delivery_failed |

## Delivery

| ID | Scenario | Min phase | Pri | Status | Evidence |
|----|----------|-----------|-----|--------|----------|
| DL-01 | OTP correct completes | 08 | Must | [x] | delivery.otp.spec |
| DL-02 | OTP wrong rejected | 08 | Must | [x] | delivery.otp.spec |
| DL-03 | Customer OTP available offline on active order | 08 | Must | [x] | tracking_otp_cache_test |
| DL-04 | OTP never exposed to rider APIs early | 08 | Must | [x] | delivery.otp.spec |
| DL-05 | Contactless proof path | 08 | Should | [x] | supportOverride + proofStub |
| DL-06 | COD mismatch (only if COD enabled) | 10 | Must | [~] | COD off for pilot |
| DL-07 | Partial package / spill report | 09 | Must | [x] | order issues + support UI |
| DL-08 | Privacy expiry after delivered | 08 | Must | [x] | privacy.expiry.spec |

## Resilience

| ID | Scenario | Min phase | Pri | Status | Evidence |
|----|----------|-----------|-----|--------|----------|
| RS-01 | API timeout safe client retry | 11 | Must | [x] | idempotent order retry (resilience) |
| RS-02 | Provider outage degrades notifications, not core state | 11 | Must | [x] | duplicate webhook / order intact |
| RS-03 | Push failure does not block order | 08 | Must | [x] | mock adapter; order TX independent |
| RS-04 | App killed/restarted restores active order | 08 | Must | [x] | OTP cache + active-task GET |
| RS-05 | Rider network loss queue sync | 08 | Must | [x] | outbox_test.dart |
| RS-06 | Server deploy during active order — idempotent resume | 11 | Must | [x] | order idempotency key reuse |

## Security

| ID | Scenario | Min phase | Pri | Status | Evidence |
|----|----------|-----------|-----|--------|----------|
| SEC-01 | OTP abuse rate limited | 02 | Must | [x] | rate.limit.spec |
| SEC-02 | IDOR on orders/addresses | 05 | Must | [x] | orders + addresses e2e |
| SEC-03 | Role bypass attempts fail | 02 | Must | [x] | security.idor + rbac |
| SEC-04 | Webhook forgery rejected | 05 | Must | [x] | webhooks e2e 401 |
| SEC-05 | Coupon abuse basic controls | 04 | Should | [ ] | |
| SEC-06 | Location/privacy expiry | 08 | Must | [x] | privacy.expiry + location reject |
| SEC-07 | Export permissions | 10 | Must | [x] | finance.phase10 export RBAC |
| SEC-08 | Admin MFA gate | 02 | Must | [x] | admin.mfa.spec |

## Finance

| ID | Scenario | Min phase | Pri | Status | Evidence |
|----|----------|-----------|-----|--------|----------|
| FN-01 | Duplicate charge prevented | 05 | Must | [x] | idempotent order + intent retry |
| FN-02 | Partial refund ledger correct | 09 | Must | [x] | refund decision + execute mock |
| FN-03 | COD offset (if COD on) | 10 | Must | [~] | COD off for pilot |
| FN-04 | Tip payout separate from outlet revenue | 10 | Must | [x] | ledger tip vs outletRevenue |
| FN-05 | Failed payout shows resolution path | 10 | Should | [ ] | |
| FN-06 | Reconciliation exception report | 10 | Must | [x] | finance.exceptions job |
| FN-07 | Double refund prevented | 09 | Must | [x] | refund.dedupe.spec |

---

## Phase gating (what must be green before advancing)

| Advancing past | Required IDs |
|----------------|--------------|
| Phase 05 → 06 | CS-*, PY-01…07, OR-05, OR-06, FN-01, SEC-02, SEC-04 |
| Phase 06 → 07 | OR-01 + prior |
| Phase 07 → 08 | DP-01…03 + prior |
| Phase 08 → 09 | DL-01…04, DL-08, RS-03…05, SEC-06 + prior |
| Phase 09 → 10 | PY-08, OR-02…04, DL-07, FN-02, FN-07 + prior |
| Phase 10 → 11 | FN-04, FN-06, SEC-07 + prior |
| Phase 11 → 12 | RS-01, RS-02, RS-06, SEC-* Must + prior |
| Phase 12 accept | Entire Must column green or waived with owner |

## Notes / waivers

| ID | Waiver reason | Owner | Date |
|----|---------------|-------|------|
| | | | |
