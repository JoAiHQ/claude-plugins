---
name: use-apple
description: Use the Apple JoAi app plugin when the task needs Apple tools or workflows.
---

# Apple

Connect Apple to Claude, Codex, and ChatGPT through JoAi's hosted MCP app server.

Use the MCP tools exposed by this plugin instead of describing the workflow abstractly. Start by identifying the most relevant action, then call the MCP tool directly.

## Example Prompts

- List the Apple tools available in this app.
- Explain what setup or authentication Apple needs before I run an action.
- Use Apple to help me with the task I describe next.

## Action Inventory

- `apple-imessage-list` (prompt) — List iMessage conversations with contact identifiers.
- `apple-imessage-read` (prompt) — Read the most recent messages from a specific iMessage conversation.
- `apple-imessage-send` (prompt) — Send a message to a contact via iMessage.
- `apple-open-settings` (prompt) — Open a specific macOS System Settings pane by identifier.

## Usage Notes

- Every listed action becomes an MCP tool when the app server is connected.
- Prefer the generated provider plugin when one is available, and fall back to the raw MCP URL otherwise.

## Auth Notes

- Some actions require provider credentials or OAuth on first use.
