---
name: lean-backend-architecture
description: >
  Senior staff-engineer architecture for DAIG Haleem and similar pilots:
  minimize server cost and request load, keep systems scalable, and keep
  clients thin with backend-driven / Admin-config-driven behavior. Use when
  designing architecture, choosing infra, drawing diagrams, adding APIs,
  caching, queues, realtime, payments, maps/SMS, or any feature that could
  increase cloud spend or server CPU. Also use when the user mentions cost
  optimization, least server hit, scalable architecture, backend-driven UI,
  dynamic config, or staff-engineer review.
---

# Lean backend architecture (cost + scale)

Act as a **senior staff engineer**: ship a pilot that stays cheap at low volume
and scales when load appears — without premature microservices.

## Default posture (DAIG pilot)

- **Single NestJS API** + Postgres + Redis is enough until metrics say otherwise.
- **Mocks first** (payments, SMS, maps, push) — no paid vendor traffic in dev.
- **Server is source of truth** for price, stock, order state, feature flags,
  fees, zones, support wa.me URL, copy, and capacity.
- **Clients are thin**: Flutter/web render what the API returns; no hardcoding
  business rules that Admin must change without an app release.
- Prefer **Admin/Kitchen config** over code deploys for operational knobs.

## Cost & load ladder (stop early)

Before adding infra, climb this ladder:

1. **Do less work** — cache, coalesce, avoid N+1, don’t poll when push/SSE/WS fits.
2. **Push work off the request path** — queue + worker for SMS, webhooks fan-out,
   reports, heavy writes. Keep HTTP handlers short.
3. **Cache aggressively at the edge of truth** — Redis for OTP TTL, sessions,
   catalogue snapshots, serviceability; short TTLs + invalidate on Admin change.
4. **Paginate & filter server-side** — never dump full tables to mobile/console.
5. **Idempotency keys** on orders/payments/refunds/assignments — retries must not
   multiply DB load or money side effects.
6. **One Postgres** with indexes and constraints; add read replicas only when
   read QPS or reporting proves need.
7. **Split services** only when a domain has independent scale/failure/cost
   (e.g. location ingest) — not because “microservices look senior.”

## Backend-driven / dynamic rules

- Feature flags (COD, loyalty, referrals, rider batching) live server-side; default **off**.
- Menu, prices, slots, fees, capacity, support link/message → Admin APIs + config tables.
- Mobile/web fetch **bootstrap/config** (flags, copy keys, endpoints behavior) on launch / resume.
- Version contracts in `contracts/`; never break clients by silent field semantics.

## Least server hit patterns

| Concern | Prefer | Avoid for pilot |
|---------|--------|-----------------|
| Tracking | Batched location samples, throttle | Per-second unbatched writes |
| Notifications | Provider SDK + server templates; dedupe | Chatty fan-out loops |
| Catalogue | Cached read models; ETag/If-None-Match | Hitting DB every scroll |
| Auth | Short-lived access + revoke list/Redis | Giant JWT claims / DB hit every guard without cache |
| Reports | Async job + file/object result | Sync heavy SQL on request |
| Realtime | Targeted channels per order/rider | Global broadcast storms |
| Media | Object storage + CDN later | Serving blobs from API pods |

## Scalability without bill shock

- Stateless API pods behind one load balancer; sessions in Redis/DB.
- Horizontal scale of **API** first; keep workers separately scalable.
- Connection pooling to Postgres; bound Redis memory (TTL everything ephemeral).
- Rate-limit OTP and public endpoints at the edge (API gateway or Nest throttler).
- Structured logs + request IDs; sample high-cardinality debug in prod.
- Health: liveness cheap; readiness may check Postgres/Redis without heavy queries.

## Architecture drawing checklist

When proposing or drawing architecture, explicitly call out:

1. **Request path** vs **async path**
2. **What is cached** and invalidation trigger
3. **What is Admin-configurable** vs code
4. **Mock vs paid** external dependency
5. **Cost driver** (DB writes, SMS, maps, realtime fan-out) and the mitigation
6. **Scale trigger** — the metric that justifies the next rung (not “someday”)

## Anti-patterns (reject unless justified)

- Marketplace / multi-tenant restaurant complexity
- Real Razorpay/live keys while mock mode is required
- Per-feature new databases or new services
- Client-authoritative price/stock/order state
- Always-on websockets for screens that can poll slowly or use push
- Premature Kubernetes multi-cluster / service mesh for a single-brand Mira Road pilot

## Output shape for architecture answers

1. **Recommended shape** (one paragraph + optional mermaid)
2. **Cost controls** (bullet list)
3. **Backend-driven knobs** (what Admin owns)
4. **Scale path** (what changes at 10x / 100x) — only the next concrete step

Pair with **ponytail** for implementation: minimal code that still honors validation,
security, idempotency, and these cost rules.
