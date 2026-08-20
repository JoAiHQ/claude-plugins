---
name: use-joai
description: Use the JoAi JoAi app plugin when the task needs JoAi tools or workflows.
---

# JoAi

Connect JoAi to Claude, Codex, and ChatGPT through JoAi's hosted MCP app server.

If a specific task was given, identify the relevant MCP tool and call it immediately — no preamble.

If invoked with no task, call the authenticate tool first (if present), then list the available actions concisely so the user can pick one.

Never ask "what would you like to do?" — either act on the task or show the menu.

## Example Prompts

- List the JoAi tools available in this app.
- Explain what setup or authentication JoAi needs before I run an action.
- Use JoAi to help me with the task I describe next.

## Action Inventory

- `joai-agent-create` (collect) — Create a new AI assistant agent in your team that can chat, manage tasks, and automate workflows on your behalf. Give it a name and start customizing its skills, knowledge, and personality to fit your needs.
- `joai-agent-list` (collect) — View all agents in your workspace with their MCP server URLs.
- `joai-agent-name-update` (collect) — Rename your AI agent to better reflect its purpose or brand identity. The updated name will appear across all conversations and shared links.
- `joai-agent-publish` (collect) — Publish your AI agent so anyone can discover and chat with it via a shareable link. Once public, your agent becomes accessible to the world while you keep full control over its configuration and knowledge.
- `joai-api-token-create` (collect) — Create a desktop-session API token for server-to-server API access. The token allows external applications to authenticate against the JoAi API on behalf of your team.
- `joai-billing-address-set` (collect) — Set the billing address for a user. Required before generating an upgrade link. Pass a VAT ID to mark the account as a business (routes to Stripe instead of LemonSqueezy).
- `joai-blueprint-create` (collect) — Create a reusable automation blueprint that your agent can execute to carry out complex multi-step tasks.
- `joai-blueprint-get` (collect) — Get the details of a specific agent blueprint by its slug.
- `joai-blueprint-list` (collect) — View available agent blueprints, optionally filtered by team.
- `joai-blueprint-update` (collect) — Edit an existing blueprint's name, description, or configuration.
- `joai-broadcast` (collect) — Post a message as the bot to one or all connected social channels (Telegram, Slack, Discord, etc.).
- `joai-campaign-create` (collect) — Create a marketing campaign to send messages to your contacts via email, WhatsApp, or SMS. Target a saved segment, contacts with specific tags, or specific contacts by ID. The campaign is created as a draft — use Send Campaign to start delivery.
- ...and 145 more actions exposed by the hosted MCP app server.

## Usage Notes

- Every listed action becomes an MCP tool when the app server is connected.
- Prefer the generated provider plugin when one is available, and fall back to the raw MCP URL otherwise.

## Auth Notes

- Some actions require provider credentials or OAuth on first use.
