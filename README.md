## Easily make a new pgdb

Create DB
```bash
createdb skydiving-gear
```

Connect to DB
```bash
psql skydiving-gear
```

Load test data from `database/gear.sql`
```bash
psql skydiving-gear < database/gear.sql
```
