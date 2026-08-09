# Backup and restore runbook (stub)

## Targets (fill during Phase 11)

- RPO:
- RTO:
- Backup schedule:
- Backup location:
- Incident owners:

## Postgres backup (example)

```bash
# example only — adapt to your hosting
pg_dump "$DATABASE_URL" > backup-$(date +%F).sql
```

## Restore drill checklist

- [ ] Restore to isolated instance
- [ ] Verify row counts for orders/payments/refunds
- [ ] Verify latest order timeline integrity
- [ ] Verify app login against restored DB
- [ ] Record time taken and gaps

## Notes

Untested backups are not a launch gate pass.
