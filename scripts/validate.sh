#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

for script in \
  "$ROOT_DIR/scripts/"*.sh \
  "$ROOT_DIR/plugins/claude/hooks/"*.sh
do
  bash -n "$script"
done

if command -v claude >/dev/null 2>&1; then
  claude plugin validate "$ROOT_DIR/.claude-plugin/marketplace.json"
  claude plugin validate "$ROOT_DIR/plugins/claude/.claude-plugin/plugin.json"
else
  echo "Skipping Claude validation: 'claude' not found."
fi
