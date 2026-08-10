# P03-T04 — Public availability + product APIs

**Repo:** `daig-backend`  
**Paths:** src/catalogue  
**Depends:** T03

## Goal

GET products with availability, low stock, sold out, next batch indicators.

## Steps

1. Public list/detail
2. Map stock to badges
3. Never show stale available=true when 0

## Acceptance

- [x] Sold out flagged correctly

## Tests

e2e catalogue availability

## DoNot

Do not add search ranking complexity beyond simple name search.

## Next

T05
