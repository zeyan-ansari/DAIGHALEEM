# ADR 0003: Contract and data conventions

Status: Accepted

- The OpenAPI and JSON schemas in `contracts/` are the client-facing source of truth.
- Authoritative money values use integer paise.
- Timestamps use UTC ISO 8601; phone numbers use E.164.
- Server-side price, stock, state and permission checks are authoritative.
- Mutating APIs document idempotency; errors use stable codes and request IDs.
- Public auth/health endpoints are unauthenticated; provider webhooks use
  provider-signature verification instead of user bearer tokens.
