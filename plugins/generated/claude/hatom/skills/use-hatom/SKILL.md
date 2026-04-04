---
name: use-hatom
description: Use the Hatom JoAi app plugin when the task needs Hatom tools or workflows.
---

# Hatom

Connect Hatom to Claude, Codex, and ChatGPT through JoAi's hosted MCP app server.

Use the MCP tools exposed by this plugin instead of describing the workflow abstractly. Start by identifying the most relevant action, then call the MCP tool directly.

## Example Prompts

- List the Hatom tools available in this app.
- Explain what setup or authentication Hatom needs before I run an action.
- Use Hatom to help me with the task I describe next.

## Action Inventory

- `hatom-liquid-stake` (contract) — Liquid-stake your EGLD through Hatom Protocol on MultiversX and receive sEGLD in return. Earn staking rewards while keeping your assets liquid for use across DeFi lending, borrowing, and yield farming.
- `hatom-liquid-unstake` (contract) — Unstake liquid staking tokens to initiate the withdrawal process. You will receive unstake tokens that can be redeemed for eGold after the unbonding period.
- `hatom-liquid-withdraw` (contract) — Withdraw your eGold after the unbonding period has passed. Send your unstake tokens to claim the underlying eGold. The unbonding period must be complete before withdrawal is possible.

## Usage Notes

- Every listed action becomes an MCP tool when the app server is connected.
- Prefer the generated provider plugin when one is available, and fall back to the raw MCP URL otherwise.

## Auth Notes

- Some actions require provider credentials or OAuth on first use.
