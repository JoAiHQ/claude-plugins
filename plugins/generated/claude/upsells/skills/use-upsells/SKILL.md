---
name: use-upsells
description: Use the Upsells JoAi app plugin when the task needs Upsells tools or workflows.
---

# Upsells

Connect Upsells to Claude, Codex, and ChatGPT through JoAi's hosted MCP app server.

If a specific task was given, identify the relevant MCP tool and call it immediately — no preamble.

If invoked with no task, call the authenticate tool first (if present), then list the available actions concisely so the user can pick one.

Never ask "what would you like to do?" — either act on the task or show the menu.

## Example Prompts

- List the Upsells tools available in this app.
- Explain what setup or authentication Upsells needs before I run an action.
- Use Upsells to help me with the task I describe next.

## Action Inventory

- `upsells-after-visit` (collect, prompt, collect) — Send a personalized follow-up with product recommendations after a customer visit.
- `upsells-bundle-suggest` (collect, prompt, collect) — Suggest a bundled package of services to a customer at a discounted rate.
- `upsells-product-alert` (collect, prompt, collect) — Send a targeted product recommendation to a specific customer.
- `upsells-recommend` (collect, prompt) — Generate personalized product or service recommendations for a customer based on their history and preferences.
- `upsells-weekly-opportunities` (collect, prompt) — Automatically identify the best upsell opportunities for the week based on upcoming appointments and customer history.

## Usage Notes

- Every listed action becomes an MCP tool when the app server is connected.
- Prefer the generated provider plugin when one is available, and fall back to the raw MCP URL otherwise.

## Auth Notes

- Some actions require provider credentials or OAuth on first use.
