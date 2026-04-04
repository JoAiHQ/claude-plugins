---
name: use-typefully
description: Use the Typefully JoAi app plugin when the task needs Typefully tools or workflows.
---

# Typefully

Connect Typefully to Claude, Codex, and ChatGPT through JoAi's hosted MCP app server.

Use the MCP tools exposed by this plugin instead of describing the workflow abstractly. Start by identifying the most relevant action, then call the MCP tool directly.

## Example Prompts

- List the Typefully tools available in this app.
- Explain what setup or authentication Typefully needs before I run an action.
- Use Typefully to help me with the task I describe next.

## Action Inventory

- `typefully-create-draft` (collect) — Create and schedule social media posts for Twitter/X and LinkedIn via Typefully. Draft content, auto-split threads, and queue posts for optimal publishing times.

## Usage Notes

- Every listed action becomes an MCP tool when the app server is connected.
- Prefer the generated provider plugin when one is available, and fall back to the raw MCP URL otherwise.

## Auth Notes

- Some actions require provider credentials or OAuth on first use.
