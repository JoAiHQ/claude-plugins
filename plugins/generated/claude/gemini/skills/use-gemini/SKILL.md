---
name: use-gemini
description: Use the Gemini JoAi app plugin when the task needs Gemini tools or workflows.
---

# Gemini

Connect Gemini to Claude, Codex, and ChatGPT through JoAi's hosted MCP app server.

Use the MCP tools exposed by this plugin instead of describing the workflow abstractly. Start by identifying the most relevant action, then call the MCP tool directly.

## Example Prompts

- List the Gemini tools available in this app.
- Explain what setup or authentication Gemini needs before I run an action.
- Use Gemini to help me with the task I describe next.

## Action Inventory

- `gemini-add-followup` (collect) — Launch a followup Gemini batch task with additional instruction context.
- `gemini-cancel-task` (collect) — Cancel a Gemini long-running operation.
- `gemini-get-task-status` (collect) — Get status for a Gemini batch generation task.
- `gemini-launch-task` (collect) — Launch a new Gemini batch generation task.

## Usage Notes

- Every listed action becomes an MCP tool when the app server is connected.
- Prefer the generated provider plugin when one is available, and fall back to the raw MCP URL otherwise.

## Auth Notes

- Some actions require provider credentials or OAuth on first use.
