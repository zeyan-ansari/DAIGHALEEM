# P07-T10 — Minimize rider-visible PII at pickup

**Repo:** `daig-backend`  
**Paths:** src/deliveries  
**Depends:** T05

## Goal

IAM-003: only minimum customer info for active task.

## Steps

1. DTO redaction
2. Tests that phone/address raw not in pickup payload
3. Masking placeholders

## Acceptance

- [ ] Pickup payload omits raw phone

## Tests

e2e privacy.pickup

## DoNot

Do not log PII.

## Next

TESTS.md then NEXT.md
