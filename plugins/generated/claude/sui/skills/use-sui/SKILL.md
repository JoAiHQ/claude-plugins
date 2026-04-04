---
name: use-sui
description: Use the Sui JoAi app plugin when the task needs Sui tools or workflows.
---

# Sui

Connect Sui to Claude, Codex, and ChatGPT through JoAi's hosted MCP app server.

Use the MCP tools exposed by this plugin instead of describing the workflow abstractly. Start by identifying the most relevant action, then call the MCP tool directly.

## Example Prompts

- List the Sui tools available in this app.
- Explain what setup or authentication Sui needs before I run an action.
- Use Sui to help me with the task I describe next.

## Action Inventory

- `sui-get-balance` (query) — Retrieve the SUI token balance for a specific wallet address on the Sui blockchain by querying the first coin object.
- `sui-get-object` (query) — Retrieve information about a specific object on the Sui blockchain by its object ID.
- `sui-get-stakes` (query) — Retrieve staking information for a specific staked SUI object ID on the Sui blockchain.
- `sui-get-sui-system-state` (query) — Retrieve the current Sui system state including validator information and network parameters.

## Usage Notes

- Every listed action becomes an MCP tool when the app server is connected.
- Prefer the generated provider plugin when one is available, and fall back to the raw MCP URL otherwise.

## Auth Notes

- Some actions require provider credentials or OAuth on first use.
