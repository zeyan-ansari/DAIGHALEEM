# P08-T02 — Promise/ETA model

**Repo:** `daig-backend`  
**Paths:** src/eta  
**Depends:** T01,P05-T03

## Goal

Initial promised window; recalculate at key events; keep original for SLA.

## Steps

1. Store promised_window + current_eta
2. Recalc hooks
3. Map provider port with mock

## Acceptance

- [ ] Original promise retained after recalc

## Tests

unit eta

## DoNot

Do not show false second-level precision to customers.

## Next

T03
