# DAIG Haleem — What we still need

**Updated:** 10 August 2026 · **Repo:** https://github.com/zeyan-ansari/DAIGHALEEM

## Done / in progress
- Product plan + phase system  
- Peer PR merged (orchestration + lifecycle contracts)  
- Phase 01 app scaffolds started (`daig-backend`, customer, rider, console)  
- Pilot defaults: Mira Road · prepaid · COD off · instant + scheduled  

## Configurable in Admin / Kitchen (you do **not** need to decide these in a doc)
Enter later in the console — engineering builds them as settings:
- Kitchen address, map pin, delivery radius/areas  
- Open hours, slots, cutoffs  
- Menu, sizes, **prices**, add-ons, allergens  
- Batch / 15‑min capacity  
- Delivery fee, min order, free-delivery threshold  
- Pack / seal checklist  
- Support hours text  

## Still required from you (simple list)

| # | What | Why |
|---|------|-----|
| 1 | **Legal entity + GSTIN + FSSAI text** | Invoices & app legal pages |
| 2 | **DAIG logo files** (SVG/PNG) | Branding (placeholders until then) |
| 3 | **Rider model** (employee / contractor / vendor) | Legal / contracts |
| 4 | **Google Play + Apple Developer** account owners | Publish apps |
| 5 | **Who pays** Maps/SMS/Firebase/Razorpay/store bills | Finance |
| 6 | **Sandbox API keys** when ready (Razorpay, MSG91, Maps, Firebase) | Leave mocks; not blocking coding |
| 7 | **Live WhatsApp + phone + support owners** | Before public users |
| 8 | **Soft-launch week** (optional) | Planning only |

## How to send
Reply with items 1–8, or edit `REQUIRED_DECISIONS.txt`.  
Secrets → approved secret manager only (never git / WhatsApp).
