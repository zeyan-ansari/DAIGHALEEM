# P06-T04 — Capacity buckets per 15 minutes

**Repo:** `daig-backend`  
**Paths:** src/capacity  
**Depends:** P05-T03

## Goal

Limit orders per interval for prep and packing separately (OPS-007).

## Steps

1. bucket model
2. increment on reserve
3. reject when full
4. admin configure ceilings from D04

## Acceptance

- [ ] Full bucket returns CAPACITY_EXCEEDED

## Tests

e2e capacity

## DoNot

Do not use AI prediction.

## Next

T05
