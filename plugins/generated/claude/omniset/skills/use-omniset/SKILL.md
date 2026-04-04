---
name: use-omniset
description: Use the OmniSet JoAi app plugin when the task needs OmniSet tools or workflows.
---

# OmniSet

Connect OmniSet to Claude, Codex, and ChatGPT through JoAi's hosted MCP app server.

Use the MCP tools exposed by this plugin instead of describing the workflow abstractly. Start by identifying the most relevant action, then call the MCP tool directly.

## Example Prompts

- List the OmniSet tools available in this app.
- Explain what setup or authentication OmniSet needs before I run an action.
- Use OmniSet to help me with the task I describe next.

## Action Inventory

- `omniset-deposit-arbitrum` (contract, contract, link) — Deposit a blockchain asset from Arbitrum to OmniSet.
- `omniset-deposit-ethereum` (contract, contract, link) — Deposit a blockchain asset from Ethereum to OmniSet.

## Usage Notes

- Every listed action becomes an MCP tool when the app server is connected.
- Prefer the generated provider plugin when one is available, and fall back to the raw MCP URL otherwise.

## Auth Notes

- Some actions require provider credentials or OAuth on first use.
