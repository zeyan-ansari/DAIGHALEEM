# Field device checklist

- [x] Customer Android: login, order, tracking, OTP visible offline *(covered by automated + local flutter tests; device sign-off pending)*
- [ ] Customer iOS (if in scope): same critical path
- [x] Rider Android: background location during active delivery *(API + app paths; device sign-off pending)*
- [x] Rider: offline complete queues and syncs *(outbox_test)*
- [x] Kitchen tablet/desktop browser: queue accept/pack *(web smoke)*
- [x] Dispatch desktop: assign/reassign *(web smoke)*
- [x] Push notifications received for confirm/assign/deliver (or documented stub limits) *(mock notify adapter)*

## Results

| Device / OS | Result | Tester | Date |
|-------------|--------|--------|------|
| Local compose + flutter test / web smoke | Automated green | eng | 2026-08-10 |
| Physical field devices | Pending human | | |
