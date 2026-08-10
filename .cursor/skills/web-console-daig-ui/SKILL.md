---
name: web-console-daig-ui
description: >
  Next.js kitchen/dispatch/admin console UI for DAIG Haleem: dense but calm
  ops screens, role shells, catalogue and zone clarity, keyboard-friendly
  forms, cookie BFF patterns. Use when building or changing daig-web-console
  pages, BFF routes, admin/kitchen/dispatch UI, or role-gated shells.
---

# Web console DAIG UI

Ops tool for a single Mira Road kitchen — not a marketing site. Pair with
**ponytail** and **lean-backend-architecture**.

## Product posture

- **Dense but calm**: tables, filters, clear status chips; generous spacing without fluff.
- **Role shells**: Admin / Kitchen / Dispatch see only what RBAC allows (server + BFF).
- **Backend-driven**: fees, zones, hours, catalogue publish state from API; console edits config, does not invent business rules.
- Cookie session + **BFF** (`src/app/api/...`) already used — prefer that over exposing bearer tokens in the browser.

## Visual rules

- Neutral ops palette (slate/ink + one warm accent). Avoid purple gradients, glow, and brochure heroes.
- No marketing copy, hero banners, or card grids for vanity metrics unless a task asks for dashboards.
- Typography: readable UI sans; tabular numbers for money/stock.
- Status: short labels (Published, Sold out, Out of zone) with accessible color + text.
- One job per page: e.g. catalogue CRUD, zone/outlet settings, kitchen queue.

## Interaction

- Keyboard-friendly: tab order, Enter to submit primary form, Esc closes simple dialogs when present.
- Destructive actions need confirm; saves show inline success/error.
- Prefer server pagination/filters; don’t load entire tables for “completeness.”

## Layout conventions

```
src/app/admin/...          # admin pages
src/app/api/admin/...      # cookie BFF proxies
src/app/(kitchen|dispatch)/ when those phases land
```

Match existing catalogue admin patterns: thin client components, fetch via BFF, mutate then refresh list.

## Anti-patterns

- Full GIS map editors unless task says “quick” and a JSON/radius field suffices
- Chatty polling of kitchen boards when a slower refresh or future push is enough for pilot
- Real payment keys or live Maps billing surfaces
- Marketplace multi-outlet brand switchers

## Quick checklist

1. BFF + cookie session
2. Calm dense ops UI; keyboard OK
3. Config edits only; API is source of truth
4. Reuse catalogue admin patterns
