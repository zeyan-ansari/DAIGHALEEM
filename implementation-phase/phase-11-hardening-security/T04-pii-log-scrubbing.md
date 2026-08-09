# P11-T04 — PII scrubbing in logs

**Repo:** `daig-backend`  
**Paths:** src/common/logging  
**Depends:** none

## Goal

Exclude PII/payment data from logs and analytics payloads.

## Steps

1. Redact phones/tokens
2. Test logger serializer
3. Audit sample log lines

## Acceptance

- [ ] Phone not present in log fixtures

## Tests

unit logging.redact

## DoNot

Do not log Authorization headers.

## Next

T05
