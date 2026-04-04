---
name: use-jupiter
description: Use the Jupiter JoAi app plugin when the task needs Jupiter tools or workflows.
---

# Jupiter

Connect Jupiter to Claude, Codex, and ChatGPT through JoAi's hosted MCP app server.

Use the MCP tools exposed by this plugin instead of describing the workflow abstractly. Start by identifying the most relevant action, then call the MCP tool directly.

## Example Prompts

- List the Jupiter tools available in this app.
- Explain what setup or authentication Jupiter needs before I run an action.
- Use Jupiter to help me with the task I describe next.

## Action Inventory

- `jupiter-swap-quote` (collect) — Get the best swap quote from Jupiter DEX aggregator on Solana. Compares routes across multiple liquidity sources to find the optimal price for your token swap.
- `jupiter-token-price` (collect) — Retrieve the current USD price of any Solana token using the Jupiter Price API. Returns price, decimals, 24h price change, and liquidity data.

## Usage Notes

- Every listed action becomes an MCP tool when the app server is connected.
- Prefer the generated provider plugin when one is available, and fall back to the raw MCP URL otherwise.

## Auth Notes

- Some actions require provider credentials or OAuth on first use.
