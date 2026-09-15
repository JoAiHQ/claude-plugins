#!/usr/bin/env bash
set -euo pipefail

MARKETPLACE_NAME="joai-claude-plugins"
PLUGIN_NAME="joai"
SCOPE="${1:-user}"
REMOVE_MARKETPLACE="${2:-false}"
if [[ ! "$SCOPE" =~ ^(user|project|local)$ ]]; then
  echo "Error: scope must be one of: user, project, local" >&2
  exit 1
fi

if [[ ! "$REMOVE_MARKETPLACE" =~ ^(true|false)$ ]]; then
  echo "Error: remove-marketplace flag must be true or false" >&2
  exit 1
fi

if ! command -v claude >/dev/null 2>&1; then
  echo "Error: 'claude' CLI is not installed or not on PATH." >&2
  exit 1
fi

claude plugin uninstall --scope "$SCOPE" "$PLUGIN_NAME" >/dev/null 2>&1 || true
if [[ "$REMOVE_MARKETPLACE" == "true" ]]; then
  claude plugin marketplace remove "$MARKETPLACE_NAME" >/dev/null 2>&1 || true
fi

if [[ "$REMOVE_MARKETPLACE" == "true" ]]; then
  echo "Removed Claude plugin '$PLUGIN_NAME' and marketplace '$MARKETPLACE_NAME' (scope: $SCOPE)."
else
  echo "Removed Claude plugin '$PLUGIN_NAME' (scope: $SCOPE). Marketplace kept."
fi
