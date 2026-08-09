# DAIG Haleem — Status & What We Need From You

**Date:** 9 August 2026 (updated after stakeholder pass 1)  
**Purpose:** Share progress, what is already decided, and the remaining asks (ops answers + API keys/accounts) so the next person can act without reading the full PRD.

**Source of answers:** `REQUIRED_DECISIONS.txt`  
**Repo:** https://github.com/zeyan-ansari/DAIGHALEEM

---

## 1. One-line summary

We are building a **single-brand DAIG Haleem delivery platform** (customer app + rider app + kitchen/dispatch web + backend) — **not** a marketplace like Zomato/Swiggy.

| Area | Status |
|------|--------|
| Product blueprint + phased build plan | **Done** (in this repo) |
| Business decisions | **Partially filled** — several critical gaps remain |
| App code (`daig-backend`, Flutter apps, console) | **Not started** |
| Live vendor keys (Razorpay, Maps, SMS, etc.) | **Not received** |

**Pilot city (known):** Mira Road, Maharashtra · **COD:** off for pilot · **Pickup:** off for MVP

---

## 2. What the product is

| Audience | Product | Device |
|----------|---------|--------|
| Customer | Order DAIG Haleem, pay prepaid, track, support | Android + iOS (Flutter) |
| Rider | Go online, pickup, deliver, earnings | Android first (Flutter) |
| Kitchen / Dispatch / Support / Admin | Queue, pack, assign, refunds, catalogue, reports | Next.js web |
| System | Batches/stock, orders, payments, ETA, ledgers | NestJS + Postgres + Redis |

**Pilot cut:** one kitchen + one zone · prepaid only · instant + scheduled slots · Android-first riders. Defer COD, loyalty, referrals, rider multi-order batching.

---

## 3. What engineering has already done

In **`DAIGHALEEM`** (pushed to GitHub):

| Item | Status |
|------|--------|
| Full Product Requirements Document | Done |
| Confirmed stack + 4 separate app repos (planned) | Done on paper |
| 12-phase implementation system (~120 small task pages + tests) | Done |
| Shared API contracts skeleton | Done |
| `START_IMPLEMENTATION.txt` (autonomous build prompt) | Done |
| This stakeholder brief + decisions questionnaire | Done / updating |
| Actual sibling app repositories | **Not created yet** |
| Production/staging integrations | **Not started** |

---

## 4. Decision scoreboard (pass 1)

| ID | Topic | Status | Summary |
|----|--------|--------|---------|
| D01 | Launch geography | **PARTIAL** | Mira Road only — need exact kitchen pin + radius/polygon |
| D02 | Order model | **PARTIAL** | Instant + scheduled + preorder; pickup off — need days/hours/slots |
| D03 | Menu | **PARTIAL** | 3 haleem types × 500 g / 1 kg proposed — need prices, add-ons, allergens |
| D04 | Capacity | **UNANSWERED** | Need batch size + 15-min prep/pack ceilings |
| D05 | Delivery workforce | **UNANSWERED** | Employee vs contractor vs vendor; shifts vs go-online |
| D06 | Rider pay | **UNANSWERED** | Base / distance / tips / payout cadence |
| D07 | Customer fees | **PARTIAL** | Distance delivery fee; packaging in item price — need min order + free-delivery threshold + GST |
| D08 | COD | **ANSWERED** | Disabled for pilot; feature-flagged for later |
| D09 | Cancel / refund | **ANSWERED** | Stage rules + agent limit ₹500 / manager above |
| D10 | Support | **PARTIAL** | In-app + WhatsApp; SLAs proposed — need hours + named owners |
| D11 | Peak forecast | **UNANSWERED** | Orders/15 min + rider count |
| D12 | Brand UX | **PARTIAL** | Black / deep maroon / muted gold direction — **logo files still required** |
| D13 | Platforms | **ANSWERED** | Flutter customer + rider; Next.js console; no customer web MVP |
| D14 | Vendors | **PARTIAL** | Proposed: Razorpay, Google Maps, MSG91, Exotel, Meta WhatsApp, Firebase — **approval + keys pending** |
| D15 | Compliance | **PARTIAL** | Hashforgamers Pvt Ltd proposed only if correct — GSTIN/FSSAI/policies pending |
| D16 | Repo paths | **ANSWERED** | Sibling folders under `~/Desktop/Projects/` |
| D17 | Pilot date | **UNANSWERED** *(new)* | Soft-launch week + go/no-go owner |
| D18 | Store accounts | **UNANSWERED** *(new)* | Google Play + Apple Developer ownership |
| D19 | Domains / URLs | **UNANSWERED** *(new)* | API/ops domains + support emails |
| D20 | Tax invoice | **UNANSWERED** *(new)* | Legal name, GST, HSN, tax-inclusive prices? |
| D21 | Pilot test users | **UNANSWERED** *(new)* | Internal phones + first admin accounts |
| D22 | Languages | **PARTIAL** *(new)* | Default English + Hindi — confirm |
| D23 | Pack / quality SOP | **UNANSWERED** *(new)* | Spill-proof checklist for kitchen/rider apps |
| D24 | Cloud hosting | **UNANSWERED** *(new)* | AWS/GCP/PaaS + billing owner |
| D25 | Vendor billing owner | **UNANSWERED** *(new)* | Who pays Maps/SMS/Firebase/Apple fees |

---

## 5. What we need from you **next** (prioritized)

### Priority A — unblock accurate pilot config (this week)

Answer these even as rough numbers; engineering can start scaffolding in parallel.

1. **D01** — Exact kitchen address + lat/lng + delivery radius **or** area list for Mira Road  
2. **D02** — Operating days/hours + slot length + order cutoff  
3. **D03** — Final menu with **prices**, add-ons, allergens  
4. **D04** — Batch size + max orders per 15 minutes (prep and pack)  
5. **D07** — Min order (₹), free-delivery threshold (or none), delivery fee table  
6. **D12** — Deliver **DAIG logo files** (SVG/PNG)  
7. **D14** — Confirm vendor set (Razorpay / Google Maps / MSG91 / Exotel / WhatsApp / Firebase)  
8. **D15** — Confirm legal entity (Hashforgamers Pvt Ltd **yes/no**) + GSTIN + FSSAI text  
9. **D17** — Target soft-launch week  

### Priority B — before real money / public users

10. **D05 / D06** — Rider model + pay rules  
11. **D10** — Support hours + named escalation owners + WhatsApp/phone numbers  
12. **D11** — Peak orders and rider count  
13. **D18** — Google Play + Apple Developer accounts  
14. **D20** — Invoice / tax details  
15. **D23** — Packaging / seal checklist SOP  
16. **D25** — Vendor billing owner  
17. **Sandbox API keys** (see section 6)

### Priority C — can follow shortly after coding starts

18. **D19** Domains · **D21** test phones · **D22** languages · **D24** hosting choice  

---

## 6. Accounts & API keys checklist

Prefer **sandbox/test** first. Share through the approved secret manager — **never commit secrets to git**.

| Vendor (proposed) | Purpose | Create now? | What to send |
|-------------------|---------|-------------|--------------|
| **Razorpay** | Prepaid UPI/cards/refunds | Yes (sandbox) | Key ID, key secret, webhook secret |
| **Google Maps Platform** | Geocoding, zones, ETA, navigation handoff | Yes (restricted key) | API key + enabled APIs list |
| **MSG91** | Login OTP + critical SMS | Yes | Auth key, sender ID, DLT template IDs |
| **Firebase** | FCM push, Crashlytics, Analytics, Remote Config | Yes | Project + service account / config files |
| **Exotel** | Masked customer↔rider calls | Soon | SID / API credentials |
| **Meta WhatsApp Cloud API** | Transactional WhatsApp | Soon | WABA, phone number ID, templates |
| **Cloud host** (TBD) | Staging API + DB + Redis | Before leaving local docker | Project access + billing owner |
| **Object storage** (S3/GCS/R2) | Menu + evidence images | When images go live | Bucket + staging keys |
| **Google Play Console** | Customer + rider Android | Before store upload | Account access |
| **Apple Developer** | Customer iOS | Before iOS TestFlight | Account access |

**Already decided commercially for pilot:** prepaid only (no COD).

---

## 7. What engineering should do next

Recommended sequence:

1. **You** close Priority A gaps in `REQUIRED_DECISIONS.txt` (or reply; we paste them in).  
2. **Engineering** may start **Phase 01** immediately (create sibling repos, docker, health checks) using mocks — does not need every answer.  
3. As soon as D01–D04 / D07 exist, seed real Mira Road zone + menu instead of placeholders.  
4. When Razorpay + MSG91 + Maps sandbox keys arrive, wire them in Phases 02 / 04 / 05.  
5. Continue phase-by-phase via `START_IMPLEMENTATION.txt` with multi-task mode on.

**Your next step as stakeholder:** fill Priority A (especially kitchen pin, hours, priced menu, capacity, logo, legal entity confirmation, launch week).  
**Engineering next step:** begin Phase 01 foundation once you say go (or after Priority A returns).

---

## 8. How to send answers

Option 1 — Edit `REQUIRED_DECISIONS.txt` and push / send the file.  
Option 2 — Reply in chat/email using the same D01…D25 IDs; we will update the repo.

For secrets: use the approved shared secret manager (not WhatsApp, email, or committed files).

---

## 9. Files

| File | Use |
|------|-----|
| `STAKEHOLDER_BRIEF.md` | This overview |
| `REQUIRED_DECISIONS.txt` | Detailed answers + still-needed lists |
| `DAIG_Haleem_Product_Requirements.docx` | Full product rules |
| `START_IMPLEMENTATION.txt` | Engineer start prompt |
| `implementation-phase/00-INDEX.md` | Build phases |

---

## 10. Sign-off

I will return Priority A answers by: _______________

**Name:** _______________________  
**Role:** _______________________  
**Date:** _______________________  
**Notes:**
