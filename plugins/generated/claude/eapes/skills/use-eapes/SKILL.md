---
name: use-eapes
description: Use the EAPES JoAi app plugin when the task needs EAPES tools or workflows.
---

# EAPES

Connect EAPES to Claude, Codex, and ChatGPT through JoAi's hosted MCP app server.

Use the MCP tools exposed by this plugin instead of describing the workflow abstractly. Start by identifying the most relevant action, then call the MCP tool directly.

## Example Prompts

- List the EAPES tools available in this app.
- Explain what setup or authentication EAPES needs before I run an action.
- Use EAPES to help me with the task I describe next.

## Action Inventory

- `eapes-claim-rewards` (contract) — Claim your eGold (EGLD) staking rewards from EAPES.
- `eapes-redelegate-egld` (contract) — Restake your eGold (EGLD) staking rewards with EAPES.
- `eapes-stake-egld` (contract, link) — Stake your EGLD with EAPES, where capital meets culture on MultiversX. Earn staking rewards while supporting a community-driven validator that powers the chain and strengthens the tribe.
- `eapes-undelegate-egld` (contract) — Unstake your eGold (EGLD) you have previously staked with EAPES.

## Usage Notes

- Every listed action becomes an MCP tool when the app server is connected.
- Prefer the generated provider plugin when one is available, and fall back to the raw MCP URL otherwise.

## Auth Notes

- Some actions require provider credentials or OAuth on first use.
