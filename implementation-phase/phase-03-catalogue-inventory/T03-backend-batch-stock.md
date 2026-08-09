# P03-T03 — Batch and stock engine

**Repo:** `daig-backend`  
**Paths:** src/inventory  
**Depends:** T02

## Goal

Batches tied to outlet/date with remaining quantity; atomic decrement API internal.

## Steps

1. batch table
2. remaining portions
3. wastage field
4. atomic decrement method

## Acceptance

- [ ] Two parallel decrements cannot oversell

## Tests

concurrency unit/e2e test

## DoNot

Do not wire payments.

## Next

T04
