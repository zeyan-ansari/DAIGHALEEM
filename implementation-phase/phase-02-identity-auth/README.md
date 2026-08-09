# Phase 02 — Identity and authentication

## Goal

Ship phone OTP auth (mock provider OK), sessions, device registration, RBAC for console roles, browse-first customer gating.

## PRD mapping

IAM-001…005; CUS-001, CUS-002, CUS-007; RID-001 (OTP register path).

## Task pages

- `T01` — Expand auth/users contract paths (`DAIGHALEEM`)
- `T02` — OTP request/verify with mock provider (`daig-backend`)
- `T03` — Sessions and device registration (`daig-backend`)
- `T04` — RBAC roles and permissions (`daig-backend`)
- `T05` — Customer profile endpoints (`daig-backend`)
- `T06` — Customer OTP login UI (`daig-customer-app`)
- `T07` — Rider OTP login shell (`daig-rider-app`)
- `T08` — Console login and role shell (`daig-web-console`)
- `T09` — Admin MFA required flag (`daig-backend`)
- `T10` — Auth audit events (`daig-backend`)

## Exit criteria

- All boxes in [STATUS.md](STATUS.md) checked
- [TESTS.md](TESTS.md) passing
- Follow [NEXT.md](NEXT.md)
