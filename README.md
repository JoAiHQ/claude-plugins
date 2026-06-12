# JoAi Claude Plugins

Official JoAi Claude plugin marketplace for ChatGPT-style app discovery with Claude-native install flows.

[Browse apps](https://joai.ai/apps) · [Open JoAi](https://joai.ai)

## Why This Repo Exists

- Faster plugin discovery for Claude users
- One trusted public marketplace for official JoAi app plugins
- Cleaner install flow than digging through a broader monorepo
- Easier sharing across teams using Claude Code

## Quick Start

Add the marketplace:

```bash
claude plugin marketplace add --scope user JoAiHQ/claude-plugins
```

Install the main JoAi plugin:

```bash
claude plugin install --scope user joai@joai-claude-plugins
```

Install a specific app plugin:

```bash
claude plugin install --scope user joai-multiversx@joai-claude-plugins
```

If the marketplace is already configured:

```bash
claude plugin marketplace update joai-claude-plugins
```

## What You Get

- Official JoAi plugins for Claude Code
- Public app plugins that stay easy to discover and install
- Hosted JoAi app connections without local MCP setup complexity

## Notes

- This repository is generated from the JoAi plugin source repo.
- Use the repo list and search to jump to the app you want.
