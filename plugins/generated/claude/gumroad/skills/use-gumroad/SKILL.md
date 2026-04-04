---
name: use-gumroad
description: Use the Gumroad JoAi app plugin when the task needs Gumroad tools or workflows.
---

# Gumroad

Connect Gumroad to Claude, Codex, and ChatGPT through JoAi's hosted MCP app server.

Use the MCP tools exposed by this plugin instead of describing the workflow abstractly. Start by identifying the most relevant action, then call the MCP tool directly.

## Example Prompts

- List the Gumroad tools available in this app.
- Explain what setup or authentication Gumroad needs before I run an action.
- Use Gumroad to help me with the task I describe next.

## Action Inventory

- `gumroad-get-product` (collect) — Retrieve details of a specific product by ID.
- `gumroad-list-products` (collect) — Retrieve all products from your Gumroad account.
- `gumroad-list-sales` (collect) — Retrieve a list of sales from your Gumroad account.
- `gumroad-list-subscribers` (collect) — Retrieve a list of subscribers for a specific product.

## Usage Notes

- Every listed action becomes an MCP tool when the app server is connected.
- Prefer the generated provider plugin when one is available, and fall back to the raw MCP URL otherwise.

## Auth Notes

- Some actions require provider credentials or OAuth on first use.
