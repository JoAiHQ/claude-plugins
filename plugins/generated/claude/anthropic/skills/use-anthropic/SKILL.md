---
name: use-anthropic
description: Use the Anthropic JoAi app plugin when the task needs Anthropic tools or workflows.
---

# Anthropic

Connect Anthropic to Claude, Codex, and ChatGPT through JoAi's hosted MCP app server.

Use the MCP tools exposed by this plugin instead of describing the workflow abstractly. Start by identifying the most relevant action, then call the MCP tool directly.

## Example Prompts

- List the Anthropic tools available in this app.
- Explain what setup or authentication Anthropic needs before I run an action.
- Use Anthropic to help me with the task I describe next.

## Action Inventory

- `anthropic-add-followup` (collect) — Launch a followup Anthropic run using Message Batches.
- `anthropic-cancel-task` (collect) — Cancel a running Claude background task. Stop an in-progress job to save resources or correct instructions before it completes.
- `anthropic-code-add-followup` (prompt) — Send a follow-up instruction through Claude Code print mode.
- `anthropic-code-cancel-task` (prompt) — Request cancellation through Claude Code print mode.
- `anthropic-code-get-task-status` (prompt) — Check task status by asking Claude Code for a one-line status update.
- `anthropic-code-launch-task` (prompt) — Launch a task through Claude Code non-interactive print mode.
- `anthropic-get-task-status` (collect) — Check the progress of a Claude background task. See whether your job is queued, processing, or completed, and review the results when ready.
- `anthropic-joai-plugin-install` (prompt) — Connect Claude to your JoAi agent as a plugin. This gives Claude direct access to your agent's skills, knowledge, and automations so you can use them from within Claude.
- `anthropic-launch-task` (collect) — Launch a new background task powered by Claude. Send instructions to be processed asynchronously, ideal for long-running AI jobs like content generation, data analysis, or batch processing.

## Usage Notes

- Every listed action becomes an MCP tool when the app server is connected.
- Prefer the generated provider plugin when one is available, and fall back to the raw MCP URL otherwise.

## Auth Notes

- Some actions require provider credentials or OAuth on first use.
