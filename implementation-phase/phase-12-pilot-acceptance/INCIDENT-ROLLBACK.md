# Incident and rollback checklist

## Contacts (from D10)

- Primary on-call: founder/ops (fill name)
- Kitchen lead: seed kitchen `+919999000010`
- Dispatch lead: seed dispatcher `+919999000021`
- Finance: super_admin / finance role
- Eng: platform maintainers

## Kill switches

- [x] Pause outlet ordering — Admin outlets hours / capacity ceilings
- [x] Disable COD flag — `/admin/feature-flags` `codEnabled=false` (default)
- [x] Disable new rider offers — rider offline / `auto_assign=false`
- [x] Feature-flag risky modules off — Admin flags UI

## Rollback

- [x] Backend previous release artifact identified — git tag / container digest (ops)
- [x] Mobile staged rollout halt steps — store staged rollout pause
- [x] Database migration rollback feasibility noted — forward-only SQL; restore from `pg_dump` per RUNBOOK-BACKUP

## Manual continuity

- [x] How kitchen records orders if API down — paper ticket + reconcile when API returns
- [x] How customers are notified — WhatsApp `wa.me` support link
- [x] How reconciliation happens after recovery — finance exception job + ledger export
