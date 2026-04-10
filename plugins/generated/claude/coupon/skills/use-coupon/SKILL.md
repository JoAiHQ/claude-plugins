---
name: use-coupon
description: Use the Coupon JoAi app plugin when the task needs Coupon tools or workflows.
---

# Coupon

Connect Coupon to Claude, Codex, and ChatGPT through JoAi's hosted MCP app server.

If a specific task was given, identify the relevant MCP tool and call it immediately — no preamble.

If invoked with no task, call the authenticate tool first (if present), then list the available actions concisely so the user can pick one.

Never ask "what would you like to do?" — either act on the task or show the menu.

## Example Prompts

- List the Coupon tools available in this app.
- Explain what setup or authentication Coupon needs before I run an action.
- Use Coupon to help me with the task I describe next.

## Action Inventory

- `coupon-create` (contract) — Create a discount coupon your customers can redeem at checkout. Set the code, percentage off, and how many times it can be used.
- `coupon-redeem` (contract) — Apply a discount coupon code at checkout. Your redemption is securely recorded.
- `coupon-view` (query) — Check the details, discount, and remaining uses of a coupon code.

## Usage Notes

- Every listed action becomes an MCP tool when the app server is connected.
- Prefer the generated provider plugin when one is available, and fall back to the raw MCP URL otherwise.

## Auth Notes

- Some actions require provider credentials or OAuth on first use.
