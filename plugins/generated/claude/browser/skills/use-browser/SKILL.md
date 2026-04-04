---
name: use-browser
description: Use the Browser JoAi app plugin when the task needs Browser tools or workflows.
---

# Browser

Connect Browser to Claude, Codex, and ChatGPT through JoAi's hosted MCP app server.

Use the MCP tools exposed by this plugin instead of describing the workflow abstractly. Start by identifying the most relevant action, then call the MCP tool directly.

## Example Prompts

- List the Browser tools available in this app.
- Explain what setup or authentication Browser needs before I run an action.
- Use Browser to help me with the task I describe next.

## Action Inventory

- `browser-click` (mcp) — Click a specific element on the current browser page.
- `browser-evaluate` (mcp) — Execute JavaScript in the current browser tab and return the result.
- `browser-fill-form` (mcp) — Fill form fields on the current browser page.
- `browser-get-page-content` (mcp) — Retrieve the accessibility snapshot of the current browser page.
- `browser-list-console-messages` (mcp) — List all console messages captured from the current browser tab.
- `browser-list-network-requests` (mcp) — List all network requests captured from the current browser tab.
- `browser-navigate` (mcp) — Navigate Chrome to a specific URL.
- `browser-screenshot` (mcp) — Capture a screenshot of the current browser tab.

## Usage Notes

- Every listed action becomes an MCP tool when the app server is connected.
- Prefer the generated provider plugin when one is available, and fall back to the raw MCP URL otherwise.

## Auth Notes

- Some actions require provider credentials or OAuth on first use.
