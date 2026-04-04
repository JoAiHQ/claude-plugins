---
name: use-colombia-staking
description: Use the Colombia Staking JoAi app plugin when the task needs Colombia Staking tools or workflows.
---

# Colombia Staking

Connect Colombia Staking to Claude, Codex, and ChatGPT through JoAi's hosted MCP app server.

Use the MCP tools exposed by this plugin instead of describing the workflow abstractly. Start by identifying the most relevant action, then call the MCP tool directly.

## Example Prompts

- List the Colombia Staking tools available in this app.
- Explain what setup or authentication Colombia Staking needs before I run an action.
- Use Colombia Staking to help me with the task I describe next.

## Action Inventory

- `colombia-staking-claim-rewards` (contract) — Claim your eGold (EGLD) staking rewards from Colombia Staking.
- `colombia-staking-cols-earn-four` (collect) — Calculate the user's stake.
- `colombia-staking-cols-earn-one` (collect) — Check your wallet EGLD balance and use it to wrap to WEGLD and buyback for stakers.
- `colombia-staking-cols-earn-three` (contract) — Buyback the tokens of the stakers.
- `colombia-staking-cols-earn-two` (contract) — Wrap EGLD to WEGLD and buyback the tokens of the stakers.
- `colombia-staking-redelegate-egld` (contract) — Restake your eGold (EGLD) staking rewards with Colombia Staking.
- `colombia-staking-stake-egld` (contract, link) — Delegate your EGLD to Colombia Staking and earn staking rewards on the MultiversX network. Colombia Staking helps secure the blockchain while giving you a reliable way to grow your eGold holdings through delegation.
- `colombia-staking-undelegate-egld` (contract) — Unstake your eGold (EGLD) you have previously staked with Colombia Staking.

## Usage Notes

- Every listed action becomes an MCP tool when the app server is connected.
- Prefer the generated provider plugin when one is available, and fall back to the raw MCP URL otherwise.

## Auth Notes

- Some actions require provider credentials or OAuth on first use.
