# Phase decision gates

Apply these gates before starting each phase. `ANSWERED` and explicitly
`DEFERRED` decisions pass. `PARTIAL` and `UNANSWERED` decisions do not pass
unless the row explicitly permits mocks.

| Phase | Required decisions | Gate |
|---:|---|---|
| 01 | D13, D16 | Mocks allowed for every other decision. |
| 02 | D14 (OTP/auth portion) | Mock OTP is allowed only in local/staging. |
| 03 | D03 | Final catalogue required before pilot-accurate seed data. |
| 04 | D01, D02, D04, D07 | Required for real zone, slot, capacity and pricing configuration. |
| 05 | D08, D09, D14, D20 | Payment sandbox and invoice rules required; COD remains off. |
| 06 | D04, D23 | Capacity and packing SOP required. |
| 07 | D05, D06, D11 | Rider operating and pay models required. |
| 08 | D01, D10, D14 | Maps, communications and escalation details required. |
| 09 | D09, D10, D15 | Support, refund and legal content required. |
| 10 | D06, D07, D14, D20, D25 | Financial ownership and rules required. |
| 11 | D14, D15, D24, D25 | Production security, retention and infrastructure ownership required. |
| 12 | All `[BLOCKER]` items, D17-D25 as applicable, and SIGN-OFF | No mocks or placeholders in pilot acceptance. |

Production deployment is prohibited until every launch blocker is answered and
the sign-off section in `REQUIRED_DECISIONS.txt` is complete.
