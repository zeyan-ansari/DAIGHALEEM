# Essential test matrix (PRD §13.3)

Run from **Phase 05 onward** as a regression pack. Each phase’s `TESTS.md` points here.

Legend: **Must** = launch integrity · **Should** = V1 strong · Waiver requires owner + reason in Notes.

Status per row: `[ ]` pending · `[x]` pass · `[~]` waived

---

## Cart / stock

| ID | Scenario | Min phase | Pri | Status | Evidence |
|----|----------|-----------|-----|--------|----------|
| CS-01 | Concurrent last portion — only one succeeds | 05 | Must | [ ] | |
| CS-02 | Stale price rejected at order create | 05 | Must | [ ] | |
| CS-03 | Sold-out add-on blocked | 05 | Must | [ ] | |
| CS-04 | Slot full blocked | 05 | Must | [ ] | |
| CS-05 | Outlet closes during checkout | 05 | Must | [ ] | |

## Payment

| ID | Scenario | Min phase | Pri | Status | Evidence |
|----|----------|-----------|-----|--------|----------|
| PY-01 | Payment success → confirmed | 05 | Must | [ ] | |
| PY-02 | Payment failure path | 05 | Must | [ ] | |
| PY-03 | Payment pending handling | 05 | Must | [ ] | |
| PY-04 | Payment timeout / expiry releases reservation | 05 | Must | [ ] | |
| PY-05 | Late webhook confirms once | 05 | Must | [ ] | |
| PY-06 | Duplicate webhook idempotent | 05 | Must | [ ] | |
| PY-07 | Retry without duplicate order | 05 | Must | [ ] | |
| PY-08 | Refund failure surfaced / retried safely | 09 | Must | [ ] | |

## Order

| ID | Scenario | Min phase | Pri | Status | Evidence |
|----|----------|-----------|-----|--------|----------|
| OR-01 | Kitchen reject after pay → refund path | 06 | Must | [ ] | |
| OR-02 | Customer cancel before accept | 05 | Must | [ ] | |
| OR-03 | Customer cancel after accept policy | 09 | Must | [ ] | |
| OR-04 | Admin/support override audited | 09 | Must | [ ] | |
| OR-05 | Illegal/out-of-order state transition rejected | 05 | Must | [ ] | |
| OR-06 | Idempotent order create (double tap) | 05 | Must | [ ] | |

## Dispatch

| ID | Scenario | Min phase | Pri | Status | Evidence |
|----|----------|-----------|-----|--------|----------|
| DP-01 | No rider available escalation | 07 | Must | [ ] | |
| DP-02 | Two riders accept simultaneously — one wins | 07 | Must | [ ] | |
| DP-03 | Rider cancels before pickup → reassign | 07 | Must | [ ] | |
| DP-04 | Stale GPS / inactive location rejected | 08 | Must | [ ] | |
| DP-05 | Route deviation updates ETA (or risk flag) | 08 | Should | [ ] | |
| DP-06 | Customer unreachable flow | 08 | Must | [ ] | |

## Delivery

| ID | Scenario | Min phase | Pri | Status | Evidence |
|----|----------|-----------|-----|--------|----------|
| DL-01 | OTP correct completes | 08 | Must | [ ] | |
| DL-02 | OTP wrong rejected | 08 | Must | [ ] | |
| DL-03 | Customer OTP available offline on active order | 08 | Must | [ ] | |
| DL-04 | OTP never exposed to rider APIs early | 08 | Must | [ ] | |
| DL-05 | Contactless proof path | 08 | Should | [ ] | |
| DL-06 | COD mismatch (only if COD enabled) | 10 | Must | [ ] | |
| DL-07 | Partial package / spill report | 09 | Must | [ ] | |
| DL-08 | Privacy expiry after delivered | 08 | Must | [ ] | |

## Resilience

| ID | Scenario | Min phase | Pri | Status | Evidence |
|----|----------|-----------|-----|--------|----------|
| RS-01 | API timeout safe client retry | 11 | Must | [ ] | |
| RS-02 | Provider outage degrades notifications, not core state | 11 | Must | [ ] | |
| RS-03 | Push failure does not block order | 08 | Must | [ ] | |
| RS-04 | App killed/restarted restores active order | 08 | Must | [ ] | |
| RS-05 | Rider network loss queue sync | 08 | Must | [ ] | |
| RS-06 | Server deploy during active order — idempotent resume | 11 | Must | [ ] | |

## Security

| ID | Scenario | Min phase | Pri | Status | Evidence |
|----|----------|-----------|-----|--------|----------|
| SEC-01 | OTP abuse rate limited | 02 | Must | [ ] | |
| SEC-02 | IDOR on orders/addresses | 05 | Must | [ ] | |
| SEC-03 | Role bypass attempts fail | 02 | Must | [ ] | |
| SEC-04 | Webhook forgery rejected | 05 | Must | [ ] | |
| SEC-05 | Coupon abuse basic controls | 04 | Should | [ ] | |
| SEC-06 | Location/privacy expiry | 08 | Must | [ ] | |
| SEC-07 | Export permissions | 10 | Must | [ ] | |
| SEC-08 | Admin MFA gate | 02 | Must | [ ] | |

## Finance

| ID | Scenario | Min phase | Pri | Status | Evidence |
|----|----------|-----------|-----|--------|----------|
| FN-01 | Duplicate charge prevented | 05 | Must | [ ] | |
| FN-02 | Partial refund ledger correct | 09 | Must | [ ] | |
| FN-03 | COD offset (if COD on) | 10 | Must | [ ] | |
| FN-04 | Tip payout separate from outlet revenue | 10 | Must | [ ] | |
| FN-05 | Failed payout shows resolution path | 10 | Should | [ ] | |
| FN-06 | Reconciliation exception report | 10 | Must | [ ] | |
| FN-07 | Double refund prevented | 09 | Must | [ ] | |

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
