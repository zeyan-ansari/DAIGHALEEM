# Phase 02 — TESTS

Run after all task pages in this phase are complete.

## Automated

- [ ] OTP request rate limited
- [ ] Invalid OTP rejected
- [ ] Session revoke blocks subsequent calls
- [ ] Role without permission receives AUTH_FORBIDDEN
- [ ] Customer browse endpoints work without auth where required

## Manual / field

- [ ] Admin MFA flag visible in user record even if provider stubbed

## Commands (adjust to repo scripts)

```bash
# backend
cd ../daig-backend && npm test && npm run test:e2e

# customer (when applicable)
cd ../daig-customer-app && flutter test

# rider (when applicable)
cd ../daig-rider-app && flutter test

# web (when applicable)
cd ../daig-web-console && npm test && npm run test:e2e
```

From Phase 05 onward also run [../ESSENTIAL-TEST-MATRIX.md](../ESSENTIAL-TEST-MATRIX.md).
