# DAIG implementation phases — index

Use this file to find the current phase. Work **one phase at a time**. Mark tasks in that phase’s `STATUS.md`.

## How to start

1. Review [REQUIRED_DECISIONS.txt](../REQUIRED_DECISIONS.txt) and apply the current phase's [decision gate](PHASE-DECISION-GATES.md). Phase 01 may start with mocks.
2. Paste [START_IMPLEMENTATION.txt](../START_IMPLEMENTATION.txt) with multi-task mode on.
3. Follow [00-EXECUTION-RULES.md](00-EXECUTION-RULES.md).
4. Sibling paths: [00-REPO-LAYOUT.md](00-REPO-LAYOUT.md).

## Phase checklist

| # | Folder | Status file | Goal |
|---|--------|-------------|------|
| 01 | [phase-01-foundation](phase-01-foundation/) | STATUS.md | Bootstrap sibling repos, CI, docker, health |
| 02 | [phase-02-identity-auth](phase-02-identity-auth/) | STATUS.md | OTP auth, roles, sessions |
| 03 | [phase-03-catalogue-inventory](phase-03-catalogue-inventory/) | STATUS.md | Catalogue, batches, stock |
| 04 | [phase-04-serviceability-cart](phase-04-serviceability-cart/) | STATUS.md | Zones, addresses, cart, pricing |
| 05 | [phase-05-orders-payments](phase-05-orders-payments/) | STATUS.md | Orders, payments, state machine |
| 06 | [phase-06-kitchen-ops](phase-06-kitchen-ops/) | STATUS.md | Kitchen queue, capacity, pack |
| 07 | [phase-07-dispatch-rider](phase-07-dispatch-rider/) | STATUS.md | Dispatch + rider pickup |
| 08 | [phase-08-tracking-notifications](phase-08-tracking-notifications/) | STATUS.md | Tracking, ETA, notifications, delivery OTP |
| 09 | [phase-09-support-refunds](phase-09-support-refunds/) | STATUS.md | Support, ratings, refunds |
| 10 | [phase-10-admin-finance-reports](phase-10-admin-finance-reports/) | STATUS.md | Ledgers, flags, reports |
| 11 | [phase-11-hardening-security](phase-11-hardening-security/) | STATUS.md | Security, load, runbooks |
| 12 | [phase-12-pilot-acceptance](phase-12-pilot-acceptance/) | STATUS.md | Pilot E2E acceptance |

## Global regression pack

From Phase 05 onward, also run [ESSENTIAL-TEST-MATRIX.md](ESSENTIAL-TEST-MATRIX.md).

## Done means

A phase is complete only when:

- Every task checkbox in `STATUS.md` is `[x]`
- `TESTS.md` scenarios pass (automated preferred)
- Contracts updated if APIs changed
- `NEXT.md` handoff written/followed
