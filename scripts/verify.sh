#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

bash "$ROOT_DIR/scripts/validate.sh"

echo
if command -v claude >/dev/null 2>&1; then
  if command -v jq >/dev/null 2>&1; then
    echo "Claude plugins:"
    claude plugin list --json | jq '.[] | select((.id // "") | contains("@joai-claude-plugins"))'
    echo "Claude marketplaces:"
    claude plugin marketplace list --json | jq '.[] | select(.name == "joai-claude-plugins")'
  else
    claude plugin list
    claude plugin marketplace list
  fi
else
  echo "Claude CLI not found; skipping installed-state checks."
fi
