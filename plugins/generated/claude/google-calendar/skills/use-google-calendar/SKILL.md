---
name: use-google-calendar
description: Use the Google Calendar JoAi app plugin when the task needs Google Calendar tools or workflows.
---

# Google Calendar

Connect Google Calendar to Claude, Codex, and ChatGPT through JoAi's hosted MCP app server.

If a specific task was given, identify the relevant MCP tool and call it immediately — no preamble.

If invoked with no task, call the authenticate tool first (if present), then list the available actions concisely so the user can pick one.

Never ask "what would you like to do?" — either act on the task or show the menu.

## Example Prompts

- List the Google Calendar tools available in this app.
- Explain what setup or authentication Google Calendar needs before I run an action.
- Use Google Calendar to help me with the task I describe next.

## Action Inventory

- `google-calendar-create-event` (collect) — Create a new event in your Google Calendar. Set the title, description, start and end times, location, and attendees.
- `google-calendar-delete-event` (collect) — Delete an event from your Google Calendar. This action cannot be undone.
- `google-calendar-list-events` (collect) — Retrieve a list of events from your Google Calendar. Filter by date range, search for specific events, or get upcoming events.
- `google-calendar-update-event` (collect) — Update an existing event in your Google Calendar. Modify the title, description, time, location, or attendees.

## Usage Notes

- Every listed action becomes an MCP tool when the app server is connected.
- Prefer the generated provider plugin when one is available, and fall back to the raw MCP URL otherwise.

## Auth Notes

- Some actions require provider credentials or OAuth on first use.
