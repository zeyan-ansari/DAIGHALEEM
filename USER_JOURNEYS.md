# User journeys — DAIG Haleem

Single-brand Mira Road pilot. Mock OTP `123456`. **Mock pay only**.

How to run: [RUN.md](RUN.md) · Architecture: [ARCHITECTURE.md](ARCHITECTURE.md)

## Now (Phases 01–11 done)

| Who | What works |
|-----|------------|
| **Customer** | Full order path + tracking/OTP + support/ratings + DRAFT legal. Tokens stored securely on device. OTP abuse rate-limited server-side. |
| **Rider** | Full delivery path + earnings home. Secure token storage; cannot accept another rider's offer. Seed `+919999000020`. |
| **Kitchen / Dispatch** | Queue, pack, board, live list. |
| **Support** | Tickets + policy-capped mock refunds. |
| **Admin** | Catalogue, zones, capacity, flags, finance/reports, wa.me. MFA gate for privileged roles (stub-verify in dev). |

## Next

| Who | Coming |
|-----|--------|
| **All** | **12:** pilot acceptance sign-off, field checklist, soft-launch readiness |

## Still off / mocked

COD · loyalty · referrals · rider batching · auto-assign · real Razorpay · live Maps/SMS/push · cert pinning · backup drill (runbook only).
