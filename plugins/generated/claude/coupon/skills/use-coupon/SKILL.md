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

- `coupon-create` (contract) — Create a discount coupon your customers can redeem at checkout. Set the code, percentage off, usage limit, and expiry — all stored on-chain.
- `coupon-list` (query) — View all discount coupons you have created on-chain.
- `coupon-redeem` (contract) — Enter your discount coupon code at checkout. The redemption is recorded on-chain and the discount percentage is returned instantly.
- `coupon-revoke` (contract) — Permanently deactivate a coupon you created. Customers will no longer be able to redeem it.
- `coupon-view` (query) — Look up a coupon code on-chain — see the discount, usage count, expiry, and status.

## Usage Notes

- Every listed action becomes an MCP tool when the app server is connected.
- Prefer the generated provider plugin when one is available, and fall back to the raw MCP URL otherwise.

## Auth Notes

- Some actions require provider credentials or OAuth on first use.
