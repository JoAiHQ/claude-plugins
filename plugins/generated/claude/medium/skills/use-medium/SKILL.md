---
name: use-medium
description: Use the Medium JoAi app plugin when the task needs Medium tools or workflows.
---

# Medium

Connect Medium to Claude, Codex, and ChatGPT through JoAi's hosted MCP app server.

Use the MCP tools exposed by this plugin instead of describing the workflow abstractly. Start by identifying the most relevant action, then call the MCP tool directly.

## Example Prompts

- List the Medium tools available in this app.
- Explain what setup or authentication Medium needs before I run an action.
- Use Medium to help me with the task I describe next.

## Action Inventory

- `medium-create-post` (collect) — Create a new post on Medium with HTML content. Supports draft and public publish statuses, and tags.
- `medium-get-user` (collect) — Retrieve information about the authenticated Medium user including username, name, and profile URL.

## Usage Notes

- Every listed action becomes an MCP tool when the app server is connected.
- Prefer the generated provider plugin when one is available, and fall back to the raw MCP URL otherwise.

## Auth Notes

- Some actions require provider credentials or OAuth on first use.
