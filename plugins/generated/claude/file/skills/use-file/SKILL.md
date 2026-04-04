---
name: use-file
description: Use the File JoAi app plugin when the task needs File tools or workflows.
---

# File

Connect File to Claude, Codex, and ChatGPT through JoAi's hosted MCP app server.

Use the MCP tools exposed by this plugin instead of describing the workflow abstractly. Start by identifying the most relevant action, then call the MCP tool directly.

## Example Prompts

- List the File tools available in this app.
- Explain what setup or authentication File needs before I run an action.
- Use File to help me with the task I describe next.

## Action Inventory

- `file-convert-to-pdf` (prompt) — Convert a JPG or PNG image file to PDF format.

## Usage Notes

- Every listed action becomes an MCP tool when the app server is connected.
- Prefer the generated provider plugin when one is available, and fall back to the raw MCP URL otherwise.

## Auth Notes

- Some actions require provider credentials or OAuth on first use.
