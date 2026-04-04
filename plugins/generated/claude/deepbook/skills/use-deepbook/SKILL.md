---
name: use-deepbook
description: Use the Deepbook JoAi app plugin when the task needs Deepbook tools or workflows.
---

# Deepbook

Connect Deepbook to Claude, Codex, and ChatGPT through JoAi's hosted MCP app server.

Use the MCP tools exposed by this plugin instead of describing the workflow abstractly. Start by identifying the most relevant action, then call the MCP tool directly.

## Example Prompts

- List the Deepbook tools available in this app.
- Explain what setup or authentication Deepbook needs before I run an action.
- Use Deepbook to help me with the task I describe next.

## Action Inventory

- `deepbook-get-pool-info` (query) — Retrieve information about a DeepBook liquidity pool by querying the pool object.

## Usage Notes

- Every listed action becomes an MCP tool when the app server is connected.
- Prefer the generated provider plugin when one is available, and fall back to the raw MCP URL otherwise.

## Auth Notes

- Some actions require provider credentials or OAuth on first use.
