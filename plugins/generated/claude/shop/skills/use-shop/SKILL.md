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

- `shop-register` (contract) — Register your shop on-chain. Uses your brand slug as the unique identifier.
- `shop-service-add` (contract) — Add a service to your shop — name, price, and duration.
- `shop-service-remove` (contract) — Remove a service from your shop.
- `shop-services` (query) — Browse available services and book an appointment.

## Usage Notes

- Every listed action becomes an MCP tool when the app server is connected.
- Prefer the generated provider plugin when one is available, and fall back to the raw MCP URL otherwise.

## Auth Notes

- Some actions require provider credentials or OAuth on first use.
