---
name: use-shop
description: Use the Shop JoAi app plugin when the task needs Shop tools or workflows.
---

# Shop

Connect Shop to Claude, Codex, and ChatGPT through JoAi's hosted MCP app server.

Use the MCP tools exposed by this plugin instead of describing the workflow abstractly. Start by identifying the most relevant action, then call the MCP tool directly.

## Example Prompts

- List the Shop tools available in this app.
- Explain what setup or authentication Shop needs before I run an action.
- Use Shop to help me with the task I describe next.

## Action Inventory

- `shop-create` (collect, contract) — Register your shop on-chain to get a shop ID, then set up your loyalty program.
- `shop-loyalty-configure` (collect, contract) — Set up your stamp-based loyalty program — rewards, Google review incentive, and reminder frequency.
- `shop-loyalty-redeem` (query, contract) — Redeem a customer's loyalty reward and reset their stamps.
- `shop-loyalty-register` (query, query, collect, contract) — Register your loyalty card and start earning stamps towards free rewards.
- `shop-loyalty-remind` (query, query) — Check for customers who haven't visited recently and send them a reminder.
- `shop-loyalty-review` (query, link) — Rate us on Google and get a discount on your next visit.
- `shop-loyalty-setup` (compute) — Program NFC cards for a shop's loyalty program. All cards get the same agent URL — the NFC chip's hardware ID is the unique card identity.
- `shop-loyalty-stamp` (query, contract) — Scan a customer's loyalty card to add a stamp and track their reward progress. Automatically shows the current stamp count and notifies when a reward is ready to be redeemed.
- `shop-loyalty-status` (query) — Check your stamp progress and available rewards.

## Usage Notes

- Every listed action becomes an MCP tool when the app server is connected.
- Prefer the generated provider plugin when one is available, and fall back to the raw MCP URL otherwise.

## Auth Notes

- Some actions require provider credentials or OAuth on first use.
