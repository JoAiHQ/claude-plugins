---
name: use-openai
description: Use the OpenAI JoAi app plugin when the task needs OpenAI tools or workflows.
---

# OpenAI

Connect OpenAI to Claude, Codex, and ChatGPT through JoAi's hosted MCP app server.

Use the MCP tools exposed by this plugin instead of describing the workflow abstractly. Start by identifying the most relevant action, then call the MCP tool directly.

## Example Prompts

- List the OpenAI tools available in this app.
- Explain what setup or authentication OpenAI needs before I run an action.
- Use OpenAI to help me with the task I describe next.

## Action Inventory

- `openai-add-followup` (collect) — Create a followup run continuing from a previous OpenAI run.
- `openai-cancel-task` (collect) — Cancel a running OpenAI background task. Stop an in-progress job to save resources or correct instructions before it completes.
- `openai-codex-add-followup` (prompt) — Send a follow-up instruction through Codex exec mode.
- `openai-codex-cancel-task` (prompt) — Request cancellation through Codex exec mode.
- `openai-codex-get-task-status` (prompt) — Check task status by asking Codex for a one-line status update.
- `openai-codex-launch-task` (prompt) — Launch a task through Codex CLI non-interactive exec mode.
- `openai-get-task-status` (collect) — Check the progress of an OpenAI background task. See whether your job is queued, processing, or completed, and review the results when ready.
- `openai-joai-plugin-install` (prompt) — Connect Codex to your JoAi agent as a plugin. This gives Codex direct access to your agent's skills, knowledge, and automations so you can use them from within Codex.
- `openai-launch-task` (collect) — Launch a new background task powered by OpenAI. Send instructions to be processed asynchronously, ideal for long-running AI jobs like content generation, data analysis, or batch processing.

## Usage Notes

- Every listed action becomes an MCP tool when the app server is connected.
- Prefer the generated provider plugin when one is available, and fall back to the raw MCP URL otherwise.

## Auth Notes

- Some actions require provider credentials or OAuth on first use.
