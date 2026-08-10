# P04-T05 — Pricing engine + snapshots

**Repo:** `daig-backend`  
**Paths:** src/pricing  
**Depends:** T02,P03-T03

## Goal

Canonical total calculation; versioned prices; tip excluded from outlet revenue.

## Steps

1. quoteCart helper
2. fee rules
3. tax lines
4. priceVersion on lines

## Acceptance

- [x] Quote deterministic for fixture cart

## Tests

unit pricing fixtures

## DoNot

Do not charge payment.

## Next

T06
