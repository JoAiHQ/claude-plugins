---
name: use-shopify
description: Use the Shopify JoAi app plugin when the task needs Shopify tools or workflows.
---

# Shopify

Connect Shopify to Claude, Codex, and ChatGPT through JoAi's hosted MCP app server.

Use the MCP tools exposed by this plugin instead of describing the workflow abstractly. Start by identifying the most relevant action, then call the MCP tool directly.

## Example Prompts

- List the Shopify tools available in this app.
- Explain what setup or authentication Shopify needs before I run an action.
- Use Shopify to help me with the task I describe next.

## Action Inventory

- `shopify-create-order` (collect) — Create a new order in your Shopify store. Add line items with product variants, set customer information, and shipping details.
- `shopify-create-product` (collect) — Create a new product in your Shopify store. Set the title, description, price, variants, and inventory.
- `shopify-get-order` (collect) — Retrieve detailed information about a specific order including line items, customer information, shipping details, and payment status.
- `shopify-list-orders` (collect) — Retrieve a list of orders from your Shopify store. Filter by query, status, or date range.
- `shopify-list-products` (collect) — Retrieve a list of products from your Shopify store. Filter by query, product type, vendor, or tags.
- `shopify-update-product` (collect) — Update an existing product in your Shopify store. Modify the title, description, price, variants, or other product attributes.

## Usage Notes

- Every listed action becomes an MCP tool when the app server is connected.
- Prefer the generated provider plugin when one is available, and fall back to the raw MCP URL otherwise.

## Auth Notes

- Some actions require provider credentials or OAuth on first use.
