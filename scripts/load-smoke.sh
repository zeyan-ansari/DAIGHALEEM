#!/usr/bin/env bash
# Thin wrapper — run backend perf smoke scripts from platform repo.
set -euo pipefail
BACKEND="$(cd "$(dirname "$0")/../../daig-backend" && pwd)"
export API_BASE="${API_BASE:-http://localhost:3000}"
export LOAD_N="${LOAD_N:-5}"
node "$BACKEND/perf/load-smoke.mjs"
node "$BACKEND/perf/load-location.mjs"
