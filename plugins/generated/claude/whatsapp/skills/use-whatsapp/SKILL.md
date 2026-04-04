---
name: use-whatsapp
description: Use the WhatsApp JoAi app plugin when the task needs WhatsApp tools or workflows.
---

# WhatsApp

Connect WhatsApp to Claude, Codex, and ChatGPT through JoAi's hosted MCP app server.

Use the MCP tools exposed by this plugin instead of describing the workflow abstractly. Start by identifying the most relevant action, then call the MCP tool directly.

## Example Prompts

- List the WhatsApp tools available in this app.
- Explain what setup or authentication WhatsApp needs before I run an action.
- Use WhatsApp to help me with the task I describe next.

## Action Inventory

- `whatsapp-send-text` (prompt) — Send a text message to any phone number via WhatsApp. Perfect for customer notifications, order updates, reminders, or quick personal messages directly from your agent.

## Usage Notes

- Every listed action becomes an MCP tool when the app server is connected.
- Prefer the generated provider plugin when one is available, and fall back to the raw MCP URL otherwise.

## Auth Notes

- Some actions require provider credentials or OAuth on first use.
