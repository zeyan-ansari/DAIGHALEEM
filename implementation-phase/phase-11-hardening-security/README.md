# Phase 11 — Hardening and security

## Goal

Rate limits, IDOR suite, webhook forgery tests, secrets hygiene, PII scrubbing, load-test scripts, backup/restore runbook.

## PRD mapping

§11 NFRs; security acceptance baseline; §13.3 security/resilience groups.

## Task pages

- `T01` — API rate limits (`daig-backend`)
- `T02` — IDOR and authz regression suite (`daig-backend`)
- `T03` — Webhook forgery + replay tests (`daig-backend`)
- `T04` — PII scrubbing in logs (`daig-backend`)
- `T05` — Secrets hygiene pass (`all app repos + DAIGHALEEM`)
- `T06` — Load-test scripts order+location (`daig-backend`)
- `T07` — Backup/restore runbook (`DAIGHALEEM`)
- `T08` — Mobile security basics (`daig-customer-app + daig-rider-app`)
- `T09` — Admin MFA + access review checklist (`daig-web-console + daig-backend`)
- `T10` — Resilience checklist tests (`daig-backend`)

## Exit criteria

- All boxes in [STATUS.md](STATUS.md) checked
- [TESTS.md](TESTS.md) passing
- Follow [NEXT.md](NEXT.md)
