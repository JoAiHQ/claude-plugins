---
name: use-social
description: Use the Social JoAi app plugin when the task needs Social tools or workflows.
---

# Social

Connect Social to Claude, Codex, and ChatGPT through JoAi's hosted MCP app server.

Use the MCP tools exposed by this plugin instead of describing the workflow abstractly. Start by identifying the most relevant action, then call the MCP tool directly.

## Example Prompts

- List the Social tools available in this app.
- Explain what setup or authentication Social needs before I run an action.
- Use Social to help me with the task I describe next.

## Action Inventory

- `social-critique-refine` (prompt) — Critique a social media post, identify its weaknesses, then deliver an improved rewrite.
- `social-expand` (prompt) — Expand a short post into a fuller, more detailed piece of social media content.
- `social-make-punchier` (prompt) — Rewrite a social media post to be more direct, punchy, and scroll-stopping.
- `social-make-shorter` (prompt) — Condense a social media post while preserving its core message and impact.
- `social-match-voice` (prompt) — Rewrite a post to match the author's personal voice and style as defined in the agent's character.
- `social-optimize-hook` (prompt) — Rewrite only the opening line of a post to be more attention-grabbing and scroll-stopping.
- `social-write-variations` (prompt) — Generate three distinct variations of a social media post from the same core message.

## Usage Notes

- Every listed action becomes an MCP tool when the app server is connected.
- Prefer the generated provider plugin when one is available, and fall back to the raw MCP URL otherwise.

## Auth Notes

- Some actions require provider credentials or OAuth on first use.
