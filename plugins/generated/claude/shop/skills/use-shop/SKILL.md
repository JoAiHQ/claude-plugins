---
name: use-shop
description: Use the Shop JoAi app plugin when the task needs Shop tools or workflows.
---

# Shop

Connect Shop to Claude, Codex, and ChatGPT through JoAi's hosted MCP app server.

If a specific task was given, identify the relevant MCP tool and call it immediately — no preamble.

If invoked with no task, call the authenticate tool first (if present), then list the available actions concisely so the user can pick one.

Never ask "what would you like to do?" — either act on the task or show the menu.

## Example Prompts

- List the Shop tools available in this app.
- Explain what setup or authentication Shop needs before I run an action.
- Use Shop to help me with the task I describe next.

## Action Inventory

- `shop-browse` (query) — View all products available in a shop.
- `shop-configure` (contract) — Update your shop's category, location, description, and more.
- `shop-payment-info` (query) — Get the payment destination for a shop — chain, address, and accepted token.
- `shop-product-add` (contract) — Add a product to your shop catalog.
- `shop-product-remove` (contract) — Remove a product from your shop.
- `shop-product-stock` (contract) — Mark a product as in stock or out of stock.
- `shop-products` (query) — Browse available products and make a purchase.
- `shop-register` (contract, collect) — Register your shop on-chain with category, location, and details.
- `shop-search` (query) — Search registered shops by category.
- `shop-service-add` (contract) — Add a service to your shop — name, price, duration, and description.
- `shop-service-pay` (query, transfer) — {{SERVICE_DESCRIPTION}}
- `shop-service-remove` (contract) — Remove a service from your shop.
- ...and 2 more actions exposed by the hosted MCP app server.

## Usage Notes

- Every listed action becomes an MCP tool when the app server is connected.
- Prefer the generated provider plugin when one is available, and fall back to the raw MCP URL otherwise.

## Auth Notes

- Some actions require provider credentials or OAuth on first use.
