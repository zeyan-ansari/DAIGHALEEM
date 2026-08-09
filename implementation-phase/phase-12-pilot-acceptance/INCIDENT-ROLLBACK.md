# Incident and rollback checklist

## Contacts (from D10)

- Primary on-call:
- Kitchen lead:
- Dispatch lead:
- Finance:
- Eng:

## Kill switches

- [ ] Pause outlet ordering (dispatch/admin)
- [ ] Disable COD flag
- [ ] Disable new rider offers
- [ ] Feature-flag risky modules off

## Rollback

- [ ] Backend previous release artifact identified
- [ ] Mobile staged rollout halt steps
- [ ] Database migration rollback feasibility noted

## Manual continuity

- [ ] How kitchen records orders if API down
- [ ] How customers are notified
- [ ] How reconciliation happens after recovery
