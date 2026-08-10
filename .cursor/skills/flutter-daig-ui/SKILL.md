---
name: flutter-daig-ui
description: >
  Flutter UI patterns for DAIG Haleem customer and rider apps: browse-first
  food ordering, thin clients, calm Mira Road pilot visuals, OTP/auth shells,
  server-driven menu availability and pricing. Use when building or changing
  Flutter screens, widgets, navigation, auth UX, menu, cart, address, tracking,
  or rider flows in daig-customer-app or daig-rider-app.
---

# Flutter DAIG UI (customer + rider)

Single-brand haleem pilot. Clients render; **API owns** price, stock, fees,
serviceability, flags. Pair with **ponytail** (minimal) and
**lean-backend-architecture** (no chatty polling).

## Product posture

- **Browse-first** customer home: menu before cart chrome.
- **Thin client**: display server fields; never invent totals or sold-out state.
- **Availability badges** from API (`availability`, sold-out flags); disable Add when server says no.
- No client-authoritative price/stock. Show `priceVersion` mismatches as revalidate, not silent overwrite.

## Visual rules (easy on the eyes)

- Calm food-app feel: warm spice / deep brick / soft parchment — **not** purple gradients, neon glow, or generic cream+terracotta AI clichés.
- Expressive but readable type. If adding fonts, skip default Inter/Roboto/system-only stacks; keep body ≥16sp and contrast AA.
- Full-bleed hero/photo only where it helps (brand splash, empty states) — not on dense ops screens.
- **Minimal cards**: prefer list rows + spacing; cards only when they group a clear interaction.
- One job per screen; one primary CTA. Clear hierarchy: brand/title → content → action.
- Motion: 2–3 subtle transitions max (fade/slide); no decorative noise.

## Auth / OTP shells

- Contextual permission copy (“so we can deliver to you”), not scary system dumps.
- Mock OTP `123456` in local/dev; never hardcode production secrets.
- Persist tokens via existing `TokenStore`; gate with `AuthGate`.
- Phone → OTP → resume intended route (menu/cart/address).

## Feature layout

```
lib/features/<domain>/   # auth, menu, address, cart, orders, tracking, rider_*
lib/core/                # config, theme, http
```

Reuse existing API clients; add thin wrappers only when a new endpoint exists in contracts.

## Accessibility

- Semantics on primary buttons and sold-out state.
- Large tap targets (≥44); error text under fields, not toast-only.
- Don’t rely on color alone for available vs sold out.

## Anti-patterns

- Marketplace multi-vendor UI
- Live map tracking before Phase 08 tasks say so
- Payment gateway UI before Phase 05
- Polling catalogue every scroll — fetch on open/resume; trust cache headers if API adds them
- Hiding fees until pay (show delivery/tax/packaging before checkout CTA)

## Quick checklist

1. Server fields drive badges, prices, CTAs
2. Calm palette; no purple/AI-slop
3. One primary action; fees visible early
4. Feature folder + existing auth/http patterns
