---
name: use-poll
description: Use the Poll JoAi app plugin when the task needs Poll tools or workflows.
---

# Poll

Connect Poll to Claude, Codex, and ChatGPT through JoAi's hosted MCP app server.

If a specific task was given, identify the relevant MCP tool and call it immediately — no preamble.

If invoked with no task, call the authenticate tool first (if present), then list the available actions concisely so the user can pick one.

Never ask "what would you like to do?" — either act on the task or show the menu.

## Example Prompts

- List the Poll tools available in this app.
- Explain what setup or authentication Poll needs before I run an action.
- Use Poll to help me with the task I describe next.

## Action Inventory

- `poll` (query) — Query details of a specific poll.
- `poll-admin-transfer` (contract) — Hand over group admin rights to another member.
- `poll-create` (contract) — Create a new poll in your group. Provide a question, deadline (Unix timestamp), and up to 4 answer options.
- `poll-group` (query) — Query details about a voting group.
- `poll-group-create` (contract) — Create a new voting group. You become the admin and first member.
- `poll-group-polls` (query) — Query all poll IDs belonging to a group (active and expired).
- `poll-invite` (query) — Check if an invite code is still valid and how many uses remain.
- `poll-invite-create` (contract) — Generate an invite code that lets people join your space directly without approval.
- `poll-invite-join` (contract) — Use an invite code to join a group instantly without waiting for approval.
- `poll-invite-revoke` (contract) — Revoke an active invite code so it can no longer be used.
- `poll-member-approve` (contract) — Approve a pending membership request and add the person to the group.
- `poll-member-check` (query) — Check if an address is a member of a group.
- ...and 10 more actions exposed by the hosted MCP app server.

## Usage Notes

- Every listed action becomes an MCP tool when the app server is connected.
- Prefer the generated provider plugin when one is available, and fall back to the raw MCP URL otherwise.

## Auth Notes

- Some actions require provider credentials or OAuth on first use.
