---
name: use-replicate
description: Use the Replicate JoAi app plugin when the task needs Replicate tools or workflows.
---

# Replicate

Connect Replicate to Claude, Codex, and ChatGPT through JoAi's hosted MCP app server.

Use the MCP tools exposed by this plugin instead of describing the workflow abstractly. Start by identifying the most relevant action, then call the MCP tool directly.

## Example Prompts

- List the Replicate tools available in this app.
- Explain what setup or authentication Replicate needs before I run an action.
- Use Replicate to help me with the task I describe next.

## Action Inventory

- `replicate-get-prediction` (collect) — Check the status and results of a Replicate prediction.
- `replicate-run-model` (collect) — Run any AI model on Replicate by providing the model version and input parameters.
- `replicate-search-models` (collect) — Search for AI models available on Replicate.

## Usage Notes

- Every listed action becomes an MCP tool when the app server is connected.
- Prefer the generated provider plugin when one is available, and fall back to the raw MCP URL otherwise.

## Auth Notes

- Some actions require provider credentials or OAuth on first use.
