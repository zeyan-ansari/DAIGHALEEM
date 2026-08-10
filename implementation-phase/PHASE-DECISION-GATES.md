# Phase decision gates

Ops data (zone, hours, menu/prices, capacity, fees, pack checklist) is
**Admin/Kitchen configuration**, not a hard stop for coding. Use mocks or
seed defaults until configured in the console.

Stop only for the human items below when a phase truly needs them.

| Phase | Hard gate (human) | Notes |
|---:|---|---|
| 01–04 | None | Mocks/placeholders OK |
| 05 | Sandbox payment keys **or** keep mock gateway | COD remains off |
| 06–07 | Rider employment model (legal) | Pay *rates* are admin config |
| 08 | Maps/SMS/push sandbox **or** mocks; support phone/WA before public beta | |
| 09–10 | Legal entity + GSTIN + FSSAI for real invoices/policies | |
| 11–12 | Billing owner, store accounts, launch sign-off, no mocks in acceptance | |

Production pilot is blocked until `REQUIRED_DECISIONS.txt` items 1–7 are filled
and sign-off is complete.
