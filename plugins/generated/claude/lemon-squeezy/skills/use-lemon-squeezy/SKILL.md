---
name: use-lemon-squeezy
description: Use the Lemon Squeezy JoAi app plugin when the task needs Lemon Squeezy tools or workflows.
---

# Lemon Squeezy

Connect Lemon Squeezy to Claude, Codex, and ChatGPT through JoAi's hosted MCP app server.

Use the MCP tools exposed by this plugin instead of describing the workflow abstractly. Start by identifying the most relevant action, then call the MCP tool directly.

## Example Prompts

- List the Lemon Squeezy tools available in this app.
- Explain what setup or authentication Lemon Squeezy needs before I run an action.
- Use Lemon Squeezy to help me with the task I describe next.

## Action Inventory

- `lemon-squeezy-create-checkout` (collect) — Create a checkout link for a specific product variant in your Lemon Squeezy store.
- `lemon-squeezy-get-customer` (collect) — Retrieve details of a customer by ID.
- `lemon-squeezy-list-license-keys` (collect) — Retrieve a list of license keys from your Lemon Squeezy store.
- `lemon-squeezy-list-orders` (collect) — Retrieve a list of orders from your Lemon Squeezy store.
- `lemon-squeezy-list-products` (collect) — Retrieve a list of products from your Lemon Squeezy store.
- `lemon-squeezy-list-subscriptions` (collect) — Retrieve a list of subscriptions from your Lemon Squeezy store.

## Usage Notes

- Every listed action becomes an MCP tool when the app server is connected.
- Prefer the generated provider plugin when one is available, and fall back to the raw MCP URL otherwise.

## Auth Notes

- Some actions require provider credentials or OAuth on first use.
