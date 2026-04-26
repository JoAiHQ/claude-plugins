---
name: use-followups
description: Use the Followups JoAi app plugin when the task needs Followups tools or workflows.
---

# Followups

Connect Followups to Claude, Codex, and ChatGPT through JoAi's hosted MCP app server.

If a specific task was given, identify the relevant MCP tool and call it immediately — no preamble.

If invoked with no task, call the authenticate tool first (if present), then list the available actions concisely so the user can pick one.

Never ask "what would you like to do?" — either act on the task or show the menu.

## Example Prompts

- List the Followups tools available in this app.
- Explain what setup or authentication Followups needs before I run an action.
- Use Followups to help me with the task I describe next.

## Action Inventory

- `followups-birthday` (collect, prompt, collect) — Send a birthday greeting to a customer, optionally with a special offer.
- `followups-birthday-scan` (collect) — Automatically identify customers with birthdays in the next 7 days.
- `followups-check-in` (collect, prompt, collect) — Send a friendly check-in message to a customer you haven't heard from recently.
- `followups-inactive-scan` (collect, prompt) — Automatically identify customers who haven't visited in 30+ days and suggest follow-up actions.
- `followups-post-treatment` (collect, prompt, collect) — Send aftercare tips and instructions to a customer following their treatment.
- `followups-reorder-reminder` (collect, prompt, collect) — Remind a customer that it's time to reorder a product they purchased previously.
- `followups-win-back` (collect, prompt, collect) — Reach out to an inactive customer with a personalized win-back message and optional offer.

## Usage Notes

- Every listed action becomes an MCP tool when the app server is connected.
- Prefer the generated provider plugin when one is available, and fall back to the raw MCP URL otherwise.

## Auth Notes

- Some actions require provider credentials or OAuth on first use.
