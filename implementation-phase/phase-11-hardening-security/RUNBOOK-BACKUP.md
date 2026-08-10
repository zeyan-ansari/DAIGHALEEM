# Backup and restore runbook

## Targets (pilot)

- RPO: 24h (daily dump acceptable for Mira Road pilot)
- RTO: 4h (restore + migrate + smoke)
- Backup schedule: daily `pg_dump` off-box
- Backup location: founder/ops-controlled storage (not in git)
- Incident owners: on-call ops + engineering

## Postgres backup

```bash
cd ../daig-backend
pg_dump "$DATABASE_URL" > backup-$(date +%F).sql
```

Redis OTP/session cache is ephemeral — no backup required for pilot.

## Restore drill checklist

- [ ] Restore to isolated instance
- [ ] Run migrations if needed
- [ ] Verify row counts for orders/payments/refunds
- [ ] Verify latest order timeline integrity
- [ ] Verify app login against restored DB
- [ ] Record time taken and gaps

## Notes

Untested backups are not a launch gate pass. Schedule first drill before leaving mocks.
