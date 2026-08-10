---
name: user-journey-docs
description: >
  When writing or updating DAIG Haleem docs (USER_JOURNEYS, phase notes, RUN,
  READMEs, handoffs), always include user perspective for customer, rider,
  kitchen, and admin and what changed for them. Use for documentation tasks,
  phase summaries, status notes, and stakeholder-facing markdown.
---

# User-journey docs

Keep docs short. Always answer: **who can do what now**, and **what’s next for them**.

## Required angles

For each doc that describes product state, cover as relevant:

| Actor | Ask |
|-------|-----|
| **Customer** | Can they browse, auth, address, cart, pay, track? |
| **Rider** | Can they login, go online, see jobs, navigate, OTP deliver? |
| **Kitchen** | Can they see queue, mark prep/pack, mark unavailable? |
| **Admin** | Can they edit catalogue, zones, fees, flags, support link? |

## Shape

1. **Now** — works today (phases done)
2. **Next** — coming in later phases (plain language)
3. Optional one-line **how to try** pointing at `RUN.md`

## Rules

- Plain language; no essay. Prefer bullets.
- Don’t invent features as “done” unless STATUS/TESTS say so.
- Mention mocks (OTP `123456`, mock pay) when the user would hit them.
- Prefer one `USER_JOURNEYS.md` over many phase essays.
