# Admin MFA + access review checklist

- [ ] Super admin + finance roles use MFA when `mfa_required=true`
- [ ] Stub verify only in non-prod (`POST /admin/mfa/stub-verify`)
- [ ] Quarterly access review: remove unused console phones
- [ ] Support agents cannot export finance CSVs
- [ ] Break-glass: document who can disable rate limits via env
