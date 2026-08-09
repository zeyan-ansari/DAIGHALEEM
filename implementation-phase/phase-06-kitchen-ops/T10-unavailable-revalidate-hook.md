# P06-T10 — Unavailable item revalidates open carts

**Repo:** `daig-backend`  
**Paths:** src/carts, src/inventory  
**Depends:** T06,P04-T06

## Goal

When item marked unavailable, unaccepted carts/orders revalidate (OPS-005).

## Steps

1. Event/hook on unavailable
2. Invalidate cart lines
3. Notify via flag on next cart get

## Acceptance

- [ ] Cart validate fails for unavailable item

## Tests

e2e revalidate

## DoNot

Do not silently drop paid orders without policy.

## Next

TESTS.md then NEXT.md
