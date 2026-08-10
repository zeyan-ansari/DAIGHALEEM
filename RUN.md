# Run

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
`123456` · seed admin `+919999000001` · API `http://localhost:3000`
