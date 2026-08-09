# P08-T09 — Rider low-connectivity queue

**Repo:** `daig-rider-app`  
**Paths:** lib/core/offline  
**Depends:** T08

## Goal

Cache active order; queue location/complete actions; retry indicators (RID-053).

## Steps

1. Local cache
2. Outbox queue
3. Flush on reconnect
4. UI retry state

## Acceptance

- [ ] Complete action queues offline and syncs

## Tests

unit offline queue

## DoNot

Do not invent success if server rejects later—surface conflict.

## Next

T10
