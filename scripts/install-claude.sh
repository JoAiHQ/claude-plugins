#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
REPO_SOURCE="${JOAI_PLUGIN_REPO_SOURCE:-$ROOT_DIR}"
MARKETPLACE_NAME="joai-claude-plugins"
PLUGIN_NAME="joai"
SCOPE="${1:-user}"
if [[ ! "$SCOPE" =~ ^(user|project|local)$ ]]; then
  echo "Error: scope must be one of: user, project, local" >&2
  exit 1
fi

if ! command -v claude >/dev/null 2>&1; then
  echo "Error: 'claude' CLI is not installed or not on PATH." >&2
  exit 1
fi

ADD_OUTPUT=""
if ! ADD_OUTPUT="$(claude plugin marketplace add --scope "$SCOPE" "$REPO_SOURCE" 2>&1)"; then
  if printf '%s' "$ADD_OUTPUT" | grep -Eiq 'already|exists|configured'; then
    claude plugin marketplace update "$MARKETPLACE_NAME"
  else
    echo "$ADD_OUTPUT" >&2
    exit 1
  fi
fi

claude plugin install --scope "$SCOPE" "$PLUGIN_NAME@$MARKETPLACE_NAME"

echo "Installed Claude plugin '$PLUGIN_NAME' from marketplace '$MARKETPLACE_NAME' (scope: $SCOPE)."
