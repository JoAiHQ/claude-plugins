---
name: use-resend
description: Use the Resend JoAi app plugin when the task needs Resend tools or workflows.
---

# Resend

Connect Resend to Claude, Codex, and ChatGPT through JoAi's hosted MCP app server.

Use the MCP tools exposed by this plugin instead of describing the workflow abstractly. Start by identifying the most relevant action, then call the MCP tool directly.

## Example Prompts

- List the Resend tools available in this app.
- Explain what setup or authentication Resend needs before I run an action.
- Use Resend to help me with the task I describe next.

## Action Inventory

- `resend-send-email` (collect) — Send transactional or marketing emails with full HTML and plain text support. Includes CC, BCC, reply-to, and custom headers for newsletters, notifications, and automated email workflows.

## Usage Notes

- Every listed action becomes an MCP tool when the app server is connected.
- Prefer the generated provider plugin when one is available, and fall back to the raw MCP URL otherwise.

## Auth Notes

- Some actions require provider credentials or OAuth on first use.
