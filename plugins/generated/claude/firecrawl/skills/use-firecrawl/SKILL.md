---
name: use-firecrawl
description: Use the Firecrawl JoAi app plugin when the task needs Firecrawl tools or workflows.
---

# Firecrawl

Connect Firecrawl to Claude, Codex, and ChatGPT through JoAi's hosted MCP app server.

Use the MCP tools exposed by this plugin instead of describing the workflow abstractly. Start by identifying the most relevant action, then call the MCP tool directly.

## Example Prompts

- List the Firecrawl tools available in this app.
- Explain what setup or authentication Firecrawl needs before I run an action.
- Use Firecrawl to help me with the task I describe next.

## Action Inventory

- `firecrawl-crawl` (collect) — Start an async crawl of a website following links across multiple pages. Returns a job ID to track progress.
- `firecrawl-map` (collect) — Discover and list all URLs on a website. Useful for understanding site structure or finding specific pages.
- `firecrawl-scrape` (collect) — Scrape a single web page and extract its content, metadata, and links as clean markdown.
- `firecrawl-search` (collect) — Search the web and extract content from relevant results.

## Usage Notes

- Every listed action becomes an MCP tool when the app server is connected.
- Prefer the generated provider plugin when one is available, and fall back to the raw MCP URL otherwise.

## Auth Notes

- Some actions require provider credentials or OAuth on first use.
