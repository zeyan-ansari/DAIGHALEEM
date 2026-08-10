# P02-T04 — RBAC roles and permissions

**Repo:** `daig-backend`  
**Paths:** src/iam  
**Depends:** T02

## Goal

Server-side authorize console roles (kitchen, dispatcher, support, catalogue, finance, outlet, super_admin).

## Steps

1. roles/permissions tables or enums
2. guards on sample admin route
3. seed super admin in dev

## Acceptance

- [x] Unauthorized role gets 403
- [x] Authorized role succeeds

## Tests

e2e rbac.spec.ts

## DoNot

Do not implement refund policy engine yet.

## Next

T05
