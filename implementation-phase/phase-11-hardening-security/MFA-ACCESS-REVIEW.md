# Admin MFA + access review checklist

Verified against `admin.mfa.spec.ts`, `security.idor.spec.ts`, `reports.rbac.spec.ts` (Phase 11).

- [x] Super admin + finance roles use MFA when `mfa_required=true`
- [x] Stub verify only in non-prod (`POST /admin/mfa/stub-verify`)
- [ ] Quarterly access review: remove unused console phones *(ops process — schedule before public pilot)*
- [x] Support agents cannot export finance CSVs
- [x] Break-glass: document who can disable rate limits via env *(Redis `DEL otp:rl:{phone}` — see throttling README)*

## Quarterly access review (ops)

1. Export console user list from Admin / DB `users` where `roles` overlaps ops roles.
2. Remove or revoke sessions for phones no longer on team.
3. Confirm MFA required for super_admin + finance.
4. Log review date in incident/runbook notes.
