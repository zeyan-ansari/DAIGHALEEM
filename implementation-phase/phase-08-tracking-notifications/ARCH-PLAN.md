# Phase 08 — ARCH-PLAN

## Modules

| Module | Repo | Role |
|--------|------|------|
| `eta` | backend | `promised_window` immutable + `current_eta`; recalc on assign/pickup/location batch; mock MapsPort |
| `location` | backend | POST samples → Redis latest + short Postgres retain; reject inactive |
| `deliveries` | backend | OTP hash on order; complete; rider DTO never includes OTP |
| `notifications` | backend | Push/SMS/WA ports + mock adapters; critical vs marketing consent |
| `comms` | backend | Time-bound masked tokens; expire on deliver |
| `tracking` | customer Flutter | MVVM: timeline VM polls/refreshes; OTP from order payload + local cache |
| `delivery` | rider Flutter | Complete UI; maps handoff; offline outbox |
| `dispatch` | web | BFF list + mock lat/lng pins; ETA risk badges |

## Clean boundaries

- Nest feature modules; OrdersService owns FSM transitions to `delivered`.
- Flutter: feature folders + thin API clients against OpenAPI; no client-authoritative ETA/OTP generation.
- Web: cookie BFF only; no bearer in browser.

## Protocol-driven UI

- Timeline events + `currentEta` + `deliveryOtp` (customer GET order only).
- Rider active-task / complete APIs omit OTP plaintext.
- Location POST body: `{lat,lng,recordedAt?,accuracyM?}`.

## Admin / config knobs

- Location retention hours (feature flag / config row)
- Notification templates stub + marketing opt-out flag per user
- Support `wa.me` already Admin (Phase 09 expands); Phase 08 uses mock notify log
- ETA buffer minutes (config, not hardcoded in apps)

## Cost / load

- Throttle location writes (drop samples faster than N sec; keep latest in Redis).
- No per-second DB inserts; batch or coalesce.
- Mock notify = in-memory/DB log, no paid SMS/push.
- Polling OK for pilot (customer refresh ~15s); no global WS fan-out yet.

## Testability

- Unit: ETA recalc keeps original promise; notify critical bypasses marketing opt-out.
- E2E: location inactive reject; OTP wrong/right; rider DTO no OTP; privacy after deliver; comms token expiry.
