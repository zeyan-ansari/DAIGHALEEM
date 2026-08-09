# DAIG Haleem — Status & What We Need From You

**Date:** 9 August 2026  
**Purpose:** Share with founder / ops / finance / legal so they know what is already built in planning, what is not built yet, and what decisions / accounts / keys are needed before coding starts in earnest.

---

## 1. One-line summary

We are building a **single-brand haleem delivery platform** (customer app + rider app + kitchen/dispatch web + backend) — **not** a Zomato/Swiggy marketplace.

**Done so far:** product requirements + a full phased build plan and instruction system in the `DAIGHALEEM` repo.  
**Not done yet:** the actual apps/repos, live payments, maps, SMS, or a running pilot.  
**Blocked on you:** business/ops decisions, brand assets, vendor accounts, and (soon) API keys / sandbox credentials.

---

## 2. What the product is

| Audience | Product | Device |
|----------|---------|--------|
| Customer | Order DAIG Haleem, pay, track, support | Android + iOS app |
| Rider | Go online, pickup, deliver, earnings | Android app first |
| Kitchen / Dispatch / Support / Admin | Queue, pack, assign riders, refunds, catalogue, reports | Web console |
| System | Orders, inventory batches, payments, ETA, ledgers | Backend APIs |

**Pilot recommendation (from PRD):** one kitchen + one delivery zone, prepaid by default, scheduled slots + limited instant orders, Android-first riders. Defer COD, loyalty, referrals, and multi-order rider batching until delivery reliability looks good.

---

## 3. What has been done (current status)

All of this lives in the **`DAIGHALEEM`** (platform / planning) repository:

| Item | Status | What it means |
|------|--------|----------------|
| Product Requirements Document (PRD) | Done | Full spec: apps, workflows, payments, kitchen, dispatch, security, MVP phases |
| Confirmed tech stack | Done | Backend NestJS + Postgres + Redis; Customer & Rider Flutter; Console Next.js |
| Separate-repo architecture | Done (on paper) | Four app repos planned as siblings; code not created yet |
| Phase implementation system (12 phases) | Done | ~120 small task instruction pages + tests + handoff prompts |
| Shared API contracts skeleton | Done | OpenAPI + order states / error codes / analytics event names |
| Decisions questionnaire | Done (empty answers) | `REQUIRED_DECISIONS.txt` — waiting for your inputs |
| Autostart prompt for builders | Done | `START_IMPLEMENTATION.txt` — paste into Cursor with multi-task mode |
| Actual `daig-backend` / apps | **Not started** | Sibling folders do not exist yet |
| Live vendor integrations | **Not started** | Will use mocks until you provide sandbox keys |

**Bottom line for a non-technical reader:** the “blueprint and factory instructions” are ready. The “factory has not started assembling the product” until decisions and accounts below are filled.

---

## 4. What we need from you **now** (blockers)

Please answer these. You can write answers directly into `REQUIRED_DECISIONS.txt`, or reply in email/chat and we will paste them in.

### A. Business & operations (must answer before real build past bootstrap)

| # | Topic | What to tell us | Who usually owns it |
|---|--------|-----------------|---------------------|
| D01 | **Launch geography** | Kitchen address + map pin (lat/lng). Delivery radius **or** polygon. Example streets/areas you will serve in pilot. | Founder / Ops |
| D02 | **Order model** | Instant? Scheduled slots? Preorder-only on some days? Pickup yes/no? Hours per mode. | Founder / Ops |
| D03 | **Menu** | Launch items, sizes/weights (e.g. single / family), add-ons, combos, allergens, what “sold out” means (portions). | Culinary / Ops |
| D04 | **Kitchen capacity** | Portions per batch; max orders you can prep/pack per **15 minutes**. | Kitchen |
| D05 | **Riders model** | Employees vs contractors vs vendor? Shifts vs “go online when free”? | Founder / Legal / Ops |
| D06 | **Rider pay** | Base pay, distance, wait, surge, tips, payout day/method. | Finance / Ops |
| D07 | **Customer fees** | Delivery fee rules, packaging fee, minimum order, GST approach, free-delivery threshold. | Finance |
| D08 | **Cash on delivery** | On or off for pilot? If on: max order value, zones, cash limits. *(We recommend OFF for pilot.)* | Finance / Ops |
| D09 | **Cancel / refund rules** | When customer can cancel; when full/partial refund; how much support agents can refund without manager. | Founder / Support / Legal |
| D10 | **Support** | Hours, channels (app chat / call / WhatsApp), who escalates what, response targets. | Ops |
| D11 | **Peak volume guess** | Normal vs peak orders per 15 min; how many riders you expect online in pilot. | Founder / Ops |
| D12 | **Brand** | Logo files, colours, fonts, food photos, tone of voice (or “use placeholders for now”). | Brand / Design |
| D15 | **Compliance** | Legal entity name, GSTIN, FSSAI number/text to show, who owns Terms/Privacy, rider contract approach, data retention. | Legal / Finance |

### B. Already decided (no action unless you want to change)

| # | Topic | Current answer |
|---|--------|----------------|
| D13 | Platforms | Customer: Android + iOS. Rider: Android first. No public customer website ordering in MVP. Admin is web. |
| D16 | Repo layout | Apps will live next to this folder as `daig-backend`, `daig-customer-app`, `daig-rider-app`, `daig-web-console`. |

---

## 5. What you will need to arrange — accounts, API keys, credentials

You do **not** need every production key on day one. Prefer **sandbox / test** credentials first. **Never send secret keys in a public chat or commit them to git** — share via password manager / secure note.

### Required for a real pilot (choose vendors, then create accounts)

| Integration | Why we need it | What to create / send us | When needed |
|-------------|----------------|---------------------------|-------------|
| **Payment gateway** (e.g. Razorpay, PayU, Cashfree — your choice) | UPI / cards / netbanking, refunds | Merchant account + **sandbox** key ID/secret + webhook secret; later live keys | Before Phase 05 (orders/payments). Can mock until then. |
| **OTP / SMS** (e.g. MSG91, Twilio, Exotel) | Login OTP, critical SMS | Account + sender ID / DLT templates (India) + API key | Before real auth (Phase 02 can use mock OTP). |
| **Maps / geocoding / routing** (e.g. Google Maps, Mapbox) | Address search, zones, ETA, rider navigation handoff | API key with billing enabled; restrict by app/bundle/IP | Before solid serviceability & tracking (Phases 04 / 08). Mock OK early. |
| **Push notifications** (FCM + APNs) | Order updates on phones | Firebase project for Android; Apple Developer + APNs key for iOS | Before real customer/rider push (Phase 08). |
| **Object storage** (e.g. S3, GCS, Cloudflare R2) | Menu images, spill/evidence photos | Bucket + access keys (staging) | When catalogue images / support evidence go live. |
| **Hosting / database** (e.g. AWS / GCP / Railway / Render + managed Postgres/Redis) | Run backend & workers | Staging project access | When we leave local docker (Phase 01 is local first). |

### Strongly recommended (can defer slightly)

| Integration | Why | What to create |
|-------------|-----|----------------|
| **Masked calling / in-app chat** | Customer ↔ rider without sharing raw numbers | Provider account (e.g. Exotel, Twilio Proxy, or similar) |
| **WhatsApp Business API** (optional) | Transactional order updates | Meta / BSP account + approved templates + consent rules |
| **Crash / analytics** (e.g. Firebase Crashlytics, Sentry, Mixpanel) | Stability + funnel | Project keys (no PII in events) |
| **KYC provider** (for riders) | Aadhaar/DL/PAN verification | Approved KYC vendor account (Phase 07 deepens this) |

### Apple / Google (store & device)

| Item | Why | Owner |
|------|-----|--------|
| **Google Play Console** developer account | Publish customer + rider Android apps | Founder / Tech |
| **Apple Developer Program** | Publish customer iOS app | Founder / Tech |
| App privacy questionnaire answers | Store listing compliance | Align with Legal (D15) |

### Domains & email (small but easy to forget)

| Item | Why |
|------|-----|
| Domain for API / admin (e.g. `api.daig…`, `ops.daig…`) | Staging + production URLs |
| Transactional email (optional early) | Invoices / passwordless admin if used |
| Support phone / email for grievance contact | Shown in app (CUS-055 / D10 / D15) |

---

## 6. What engineering can do **without** waiting forever

If you want coding to start while decisions finish:

| Can start with mocks | Still need from you soon |
|----------------------|---------------------------|
| Phase 01: create empty repos, docker Postgres/Redis, health checks | Nothing critical |
| Phase 02: OTP login with **test OTP** (e.g. fixed code in staging) | Real SMS vendor before public users |
| Phase 03–04: catalogue/cart with **sample menu & fake zone** | Real D01–D04 before pilot data |
| Payments UI with **mock gateway** | Real Razorpay (or chosen) sandbox before money tests |

**Recommended minimum to unblock “serious” build (Phases 03–05):**  
D01 geography · D02 order modes · D03 menu · D04 capacity · D07 fees · D08 COD yes/no · D12 brand (or “placeholders OK”) · D14 payment + SMS + maps vendor **names** (keys can follow 1–2 weeks later as sandbox).

---

## 7. Suggested vendor shortlist (India-friendly — pick, don’t invent)

These are common choices; final pick is yours (D14):

| Need | Common options |
|------|----------------|
| Payments | Razorpay, Cashfree, PayU |
| SMS / OTP | MSG91, Twilio, Kaleyra, Exotel |
| Maps | Google Maps Platform, Mapbox |
| Masked calls | Exotel, Twilio |
| WhatsApp | Gupshup, AiSensy, Meta Cloud API via BSP |
| Cloud | AWS, GCP, or simpler PaaS for staging |

---

## 8. How work will proceed after you answer

1. You fill **blockers** in `REQUIRED_DECISIONS.txt` (or send answers).  
2. You create **sandbox** vendor accounts and share keys securely.  
3. Engineering pastes `START_IMPLEMENTATION.txt` into Cursor (multi-task mode) and builds **Phase 01 → 12** using small task pages.  
4. Each phase has automated/manual tests; Phase 12 is pilot acceptance sign-off.

**12 phases (for orientation):**  
Foundation → Auth → Catalogue/stock → Zones/cart → Orders/payments → Kitchen → Dispatch/rider → Tracking → Support/refunds → Finance/reports → Security → Pilot acceptance.

---

## 9. Action checklist for the person reading this

Please return the following (even as rough notes):

### This week (highest priority)

- [ ] Kitchen address + pilot delivery area (D01)  
- [ ] Instant vs scheduled vs pickup (D02)  
- [ ] Launch menu list with sizes (D03)  
- [ ] Batch / 15-min capacity numbers (D04)  
- [ ] Delivery fee + min order + tax approach (D07)  
- [ ] COD on or off for pilot (D08) — recommend **off**  
- [ ] Confirm payment + SMS + maps vendor preference (D14 names)  
- [ ] Logo / brand pack **or** written “use placeholders” (D12)  

### Next (before taking real money / public users)

- [ ] Sandbox payment keys + webhook secret  
- [ ] SMS OTP account + DLT templates  
- [ ] Maps API key  
- [ ] Firebase (and Apple Developer if iOS customer app in pilot)  
- [ ] Cancel/refund rules + support hours (D09, D10)  
- [ ] Legal entity, GST, FSSAI text, Terms/Privacy owner (D15)  
- [ ] Rider employment model + pay rules (D05, D06)  

### Secure sharing

- [ ] Prefer 1Password / Bitwarden / sealed note — **not** WhatsApp plain text for live secrets  
- [ ] Label keys as `STAGING` vs `PRODUCTION`  
- [ ] Name one owner for vendor billing (cards get charged for SMS/maps)

---

## 10. Files to open if you want detail

| File | For whom |
|------|----------|
| `STAKEHOLDER_BRIEF.md` (this file) | Everyone |
| `REQUIRED_DECISIONS.txt` | Fill answers here |
| `DAIG_Haleem_Product_Requirements.docx` | Full product rules |
| `README.md` | How the build system works |
| `START_IMPLEMENTATION.txt` | Engineers — start autonomous build |
| `implementation-phase/00-INDEX.md` | Phase map |
| `implementation-phase/ESSENTIAL-TEST-MATRIX.md` | Launch test bar |

---

## 11. Sign-off

I have read this brief and will provide the “This week” items by: _______________

**Name:** _______________________  
**Role:** _______________________  
**Date:** _______________________  
**Notes:**
