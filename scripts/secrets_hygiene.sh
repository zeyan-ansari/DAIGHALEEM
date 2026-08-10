#!/usr/bin/env bash
# Secrets hygiene — fail if common secret patterns appear tracked in git.
set -euo pipefail
ROOTS=(
  "$(cd "$(dirname "$0")/.." && pwd)"
  "$(cd "$(dirname "$0")/../../daig-backend" && pwd)"
  "$(cd "$(dirname "$0")/../../daig-customer-app" && pwd)"
  "$(cd "$(dirname "$0")/../../daig-rider-app" && pwd)"
  "$(cd "$(dirname "$0")/../../daig-web-console" && pwd)"
)
# Split tokens so this file does not self-match.
P1='BEGIN (RSA |OPENSSH )?PRIVATE KEY'
P2='AKIA[0-9A-Z]{16}'
P3='rzp_''live_'
P4='sk_''live_'
PATTERN="($P1|$P2|$P3|$P4)"
fail=0
for root in "${ROOTS[@]}"; do
  if [ ! -d "$root" ]; then continue; fi
  if rg -n --hidden -g '!.git' -g '!.env' -g '!*.lock' -g '!**/node_modules/**' -g '!**/.dart_tool/**' -g '!**/secrets_hygiene.sh' -e "$PATTERN" "$root" 2>/dev/null; then
    echo "SECRET PATTERN HIT in $root"
    fail=1
  fi
done
if [ "$fail" -ne 0 ]; then
  exit 1
fi
echo "secrets hygiene: ok"
