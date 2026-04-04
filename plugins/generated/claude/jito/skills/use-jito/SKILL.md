---
name: use-jito
description: Use the Jito JoAi app plugin when the task needs Jito tools or workflows.
---

# Jito

Connect Jito to Claude, Codex, and ChatGPT through JoAi's hosted MCP app server.

Use the MCP tools exposed by this plugin instead of describing the workflow abstractly. Start by identifying the most relevant action, then call the MCP tool directly.

## Example Prompts

- List the Jito tools available in this app.
- Explain what setup or authentication Jito needs before I run an action.
- Use Jito to help me with the task I describe next.

## Action Inventory

- `jito-liquid-stake` (contract, link) — Stake SOL to secure the network and earn rewards using Jito Liquid Staking. Receive JitoSOL tokens in return.

## Usage Notes

- Every listed action becomes an MCP tool when the app server is connected.
- Prefer the generated provider plugin when one is available, and fall back to the raw MCP URL otherwise.

## Auth Notes

- Some actions require provider credentials or OAuth on first use.
