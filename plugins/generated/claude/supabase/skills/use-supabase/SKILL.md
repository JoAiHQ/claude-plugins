---
name: use-supabase
description: Use the Supabase JoAi app plugin when the task needs Supabase tools or workflows.
---

# Supabase

Connect Supabase to Claude, Codex, and ChatGPT through JoAi's hosted MCP app server.

Use the MCP tools exposed by this plugin instead of describing the workflow abstractly. Start by identifying the most relevant action, then call the MCP tool directly.

## Example Prompts

- List the Supabase tools available in this app.
- Explain what setup or authentication Supabase needs before I run an action.
- Use Supabase to help me with the task I describe next.

## Action Inventory

- `supabase-call-rpc` (collect) — Call a PostgreSQL function (RPC) on your Supabase database.
- `supabase-delete-rows` (collect) — Delete rows from a Supabase table matching a filter condition.
- `supabase-insert-rows` (collect) — Insert one or more rows into a Supabase table.
- `supabase-query-rows` (collect) — Query rows from a Supabase table with optional filters using PostgREST syntax.
- `supabase-update-rows` (collect) — Update rows in a Supabase table matching a filter condition.

## Usage Notes

- Every listed action becomes an MCP tool when the app server is connected.
- Prefer the generated provider plugin when one is available, and fall back to the raw MCP URL otherwise.

## Auth Notes

- Some actions require provider credentials or OAuth on first use.
