---
name: use-bluesky
description: Use the Bluesky JoAi app plugin when the task needs Bluesky tools or workflows.
---

# Bluesky

Connect Bluesky to Claude, Codex, and ChatGPT through JoAi's hosted MCP app server.

Use the MCP tools exposed by this plugin instead of describing the workflow abstractly. Start by identifying the most relevant action, then call the MCP tool directly.

## Example Prompts

- List the Bluesky tools available in this app.
- Explain what setup or authentication Bluesky needs before I run an action.
- Use Bluesky to help me with the task I describe next.

## Action Inventory

- `bluesky-create-post` (collect) — Create a new post on Bluesky using the AT Protocol.
- `bluesky-get-author-feed` (collect) — Get posts from a Bluesky user's feed.
- `bluesky-get-profile` (collect) — Get a Bluesky user's profile information including followers and post count.

## Usage Notes

- Every listed action becomes an MCP tool when the app server is connected.
- Prefer the generated provider plugin when one is available, and fall back to the raw MCP URL otherwise.

## Auth Notes

- Some actions require provider credentials or OAuth on first use.
