# Phase decision gates

Single-brand pilot. Prefer **mocks + Admin config** over external accounts.

| Phase | Gate |
|---:|---|
| 01–12 (development) | No human blockers. Use mocks/placeholders. |
| Payments (Phase 05+) | **Mock gateway only** until product owner explicitly asks to go live. |
| Support / WhatsApp | Admin-configurable `wa.me` + prefilled message. No Meta Cloud API required. |
| Legal / GST / FSSAI | Placeholder strings in Admin. |
| Maps / SMS / push | Mock or free/dev defaults until explicitly enabled. |
| Store release | Accounts = “us” for now; transfer later. |

Do **not** integrate real Razorpay/live payment keys unless a later decision flips mock mode off.
