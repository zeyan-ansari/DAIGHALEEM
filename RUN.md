# Run

Docs: [USER_JOURNEYS.md](USER_JOURNEYS.md) · [ARCHITECTURE.md](ARCHITECTURE.md)

Paths below assume you cloned with submodules (`apps/…`). If you use side-by-side siblings, replace `apps/` with `../`.

## Postgres + Redis
```bash
cd apps/daig-backend && docker compose up -d
```

## API
```bash
cd apps/daig-backend && cp -n .env.example .env && npm install && npm run start:dev
```

## Web console
```bash
cd apps/daig-web-console && cp -n .env.example .env.local && npm install && npm run dev
```

## Customer app
```bash
cd apps/daig-customer-app && flutter pub get && flutter run
```

## Rider app
```bash
cd apps/daig-rider-app && flutter pub get && flutter run
```

## Mock OTP
`123456` · seed admin `+919999000001` · kitchen `+919999000010` · rider `+919999000020` · dispatcher `+919999000021` · API `http://localhost:3000`

## Notes
Payments **mock only**. Delivery OTP is on the customer order screen (not the rider app).
Phases **01–12** implementation complete for automated/dev scope; human ACCEPTANCE sign-off still open before public pilot.
See [implementation-phase/00-INDEX.md](implementation-phase/00-INDEX.md) and [ACCEPTANCE.md](implementation-phase/phase-12-pilot-acceptance/ACCEPTANCE.md).
