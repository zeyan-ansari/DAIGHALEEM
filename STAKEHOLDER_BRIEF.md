# DAIG Haleem — Build stance (simple)

**Updated:** 10 August 2026 · **Repo:** https://github.com/zeyan-ansari/DAIGHALEEM  
**Brand:** [instagram.com/daighaleem](https://www.instagram.com/daighaleem/)

## What we’re building
One kitchen brand (not a marketplace). Ops settings live in **Admin / Kitchen**.

## Decisions locked so we can keep coding

| Topic | Stance |
|--------|--------|
| Payments | **Mock only** — no real gateway keys |
| Support | **Configurable `wa.me` link** + custom prefilled message (free; Admin-editable) |
| Legal / GST / FSSAI | **Placeholders** until you replace them |
| Logo | From DAIG Instagram / placeholder until clean file uploaded |
| Play + Apple | **Us only** for now; can transfer later |
| API / store bills | **Us** if/when paid services are turned on (none required while mocked) |
| Menu, prices, zone, hours, capacity, fees | **Admin/Kitchen config** |

## What “vendor / store bills” means (for this one-brand model)
Not restaurant payouts. Only optional third-party costs if we leave mocks later, e.g.:
- Google Maps usage  
- SMS OTP  
- Firebase  
- Play / Apple developer fees  

While we stay on mocks + `wa.me`, **there are no vendor bills to set up**.

## What engineering can do **right now**
1. Finish Phase 01 scaffolds  
2. Auth with **mock OTP**  
3. Catalogue / cart / kitchen / dispatch with **configurable** data  
4. Checkout with **mock payment** success/fail  
5. Support button → **wa.me?text=…** from Admin settings  
6. Legal pages showing **placeholder** entity text  

## Optional from you (whenever convenient)
- Export a clear logo from Instagram  
- Paste the real WhatsApp number into Admin when you have it  
- Soft-launch week  

No sandbox keys or legal paperwork required to continue development.
