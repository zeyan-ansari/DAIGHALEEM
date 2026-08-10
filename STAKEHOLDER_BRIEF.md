# DAIG Haleem — Status & Asks

**Updated:** 10 August 2026  
**Repo:** https://github.com/zeyan-ansari/DAIGHALEEM  
**Details:** `REQUIRED_DECISIONS.txt`

---

## Snapshot

| Area | Status |
|------|--------|
| Blueprint + 12-phase build plan | Done |
| Peer PR (orchestration gates + lifecycle contracts) | **Merged** (#1) |
| App code (backend / Flutter / console) | **Starting Phase 01 now** |
| Live vendor keys | Not received — mocks until sandbox |

**Pilot:** Mira Road · prepaid only (COD off) · instant + scheduled · Flutter customer + Android rider · Next.js ops console

---

## Already decided

- COD off; pickup off  
- Refund policy + ₹500 agent / manager above  
- Brand direction: black / deep maroon / muted gold  
- Proposed vendors: Razorpay, Google Maps, MSG91, Exotel, WhatsApp, Firebase  
- Platforms and sibling repo layout  

---

## Still needed from you (trimmed)

### Need soon (pilot-accurate data — Phases 03–07)

| ID | Ask |
|----|-----|
| D01 | Kitchen address + lat/lng + Mira Road radius/areas |
| D02 | Days/hours + slot length + cutoff |
| D03 | Menu **prices**, add-ons, allergens |
| D04 | Batch size + max orders per 15 min |
| D07 | Delivery fee table + min order + free-delivery threshold |
| D12 | Logo files (SVG/PNG) |
| D14 | Confirm vendor list |
| D15 | Legal entity yes/no + GSTIN + FSSAI |
| D17 | Soft-launch week |

### Need before public users / real money

| ID | Ask |
|----|-----|
| D05/D06 | Rider model + pay |
| D10 | Support hours + named owners + WhatsApp/phone |
| D11 | Peak orders + riders |
| D18 | Play / Apple accounts |
| D23 | Pack/seal checklist (default pack rules used until then) |
| D25 | Who pays vendor bills |
| Keys | Razorpay + MSG91 + Maps + Firebase **sandbox** via secret manager |

### Deferred (engineering defaults)

Domains, test phones, languages (EN+HI), cloud host — local docker until staging.

---

## API keys (sandbox first)

Never commit secrets. Share via approved secret manager.

| Vendor | When |
|--------|------|
| Razorpay | Before real payment tests (Phase 05) |
| MSG91 | Before real OTP (Phase 02 can mock) |
| Google Maps | Before real zones/ETA (Phase 04/08) |
| Firebase | Before real push (Phase 08) |
| Exotel / WhatsApp | Before masked call / WA (Phase 08/09) |

---

## Engineering status

1. Peer contribution from **zeyan-ansari** reviewed, approved, merged.  
2. Collaborator **Siddiqui-Shahid** has write access — appropriate.  
3. **Phase 01 foundation** is in progress: create sibling repos + scaffolds with mocks.  
4. Missing Priority-A answers do **not** block Phase 01; they block pilot-accurate later phases (see `PHASE-DECISION-GATES.md`).

**Your next step:** return the “Need soon” table (even rough numbers).  
**Our next step:** finish Phase 01 scaffolds, then Phase 02 auth with mock OTP.

---

## Sign-off

Priority-A answers by: _______________  
Name / role / date:
