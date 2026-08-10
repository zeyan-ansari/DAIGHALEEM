# ADR 0002: Separate lifecycle state machines

Status: Accepted

Order fulfilment, payment, refund and rider assignment are independent but
correlated lifecycles. A refund after delivery must not erase the fact that the
order was delivered, and a cancelled order must remain cancelled while its
refund processes.

The backend stores and validates each status independently. Cross-lifecycle
effects are idempotent domain operations with an auditable event history.
