# Run

Docs: [USER_JOURNEYS.md](USER_JOURNEYS.md) · [ARCHITECTURE.md](ARCHITECTURE.md)

## Postgres + Redis
```bash
cd ../daig-backend && docker compose up -d
```

## API
```bash
cd ../daig-backend && cp -n .env.example .env && npm run start:dev
```

## Web console
```bash
cd ../daig-web-console && cp -n .env.example .env.local && npm run dev
```

## Customer app
```bash
cd ../daig-customer-app && flutter run
```

## Rider app
```bash
cd ../daig-rider-app && flutter run
```

## Mock OTP
`123456` · seed admin `+919999000001` · kitchen `+919999000010` · rider `+919999000020` · dispatcher `+919999000021` · API `http://localhost:3000`

## Notes
Payments **mock only**. Delivery OTP is on the customer order screen (not the rider app).
Phases **01–12** implementation complete for automated/dev scope; human ACCEPTANCE sign-off still open before public pilot.
See [implementation-phase/00-INDEX.md](implementation-phase/00-INDEX.md) and [ACCEPTANCE.md](implementation-phase/phase-12-pilot-acceptance/ACCEPTANCE.md).
