---
name: use-opencode
description: Use the OpenCode JoAi app plugin when the task needs OpenCode tools or workflows.
---

# OpenCode

Connect OpenCode to Claude, Codex, and ChatGPT through JoAi's hosted MCP app server.

Use the MCP tools exposed by this plugin instead of describing the workflow abstractly. Start by identifying the most relevant action, then call the MCP tool directly.

## Example Prompts

- List the OpenCode tools available in this app.
- Explain what setup or authentication OpenCode needs before I run an action.
- Use OpenCode to help me with the task I describe next.

## Action Inventory

- `opencode-add-followup` (collect) — Send a followup message to an existing OpenCode session.
- `opencode-cancel-task` (collect) — Abort and close an OpenCode session.
- `opencode-get-task-status` (collect) — Get current status of an OpenCode session.
- `opencode-launch-task` (collect) — Create a new OpenCode session for task execution.

## Usage Notes

- Every listed action becomes an MCP tool when the app server is connected.
- Prefer the generated provider plugin when one is available, and fall back to the raw MCP URL otherwise.

## Auth Notes

- Some actions require provider credentials or OAuth on first use.
