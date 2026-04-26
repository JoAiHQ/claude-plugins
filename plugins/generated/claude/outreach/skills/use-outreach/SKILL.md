---
name: use-outreach
description: Use the Outreach JoAi app plugin when the task needs Outreach tools or workflows.
---

# Outreach

Connect Outreach to Claude, Codex, and ChatGPT through JoAi's hosted MCP app server.

If a specific task was given, identify the relevant MCP tool and call it immediately — no preamble.

If invoked with no task, call the authenticate tool first (if present), then list the available actions concisely so the user can pick one.

Never ask "what would you like to do?" — either act on the task or show the menu.

## Example Prompts

- List the Outreach tools available in this app.
- Explain what setup or authentication Outreach needs before I run an action.
- Use Outreach to help me with the task I describe next.

## Action Inventory

- `outreach-broadcast` (collect) — Compose and send a message to all contacts in a segment or tag.
- `outreach-contact-message` (collect, collect, prompt, collect) — Send a personalized outreach message to a specific CRM contact.
- `outreach-segment-scan` (collect, prompt) — Identify contacts in a segment or tag that are ready for proactive outreach.

## Usage Notes

- Every listed action becomes an MCP tool when the app server is connected.
- Prefer the generated provider plugin when one is available, and fall back to the raw MCP URL otherwise.

## Auth Notes

- Some actions require provider credentials or OAuth on first use.
