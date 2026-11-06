# JoAi Claude Plugin (`joai`)

JoAi plugin for Claude Code.

Current capabilities:
- `board`: callback bind/report loop for assigned board-item execution.
- `mcp`: connect to JoAi's MCP servers for apps and agents.

## Install

From monorepo root:
```bash
bash scripts/install-claude.sh
```

Install with scope:
```bash
bash scripts/install-claude.sh project
```

Remote source override:
```bash
JOAI_PLUGIN_REPO_SOURCE=https://github.com/JoAiHQ/claude-plugins bash scripts/install-claude.sh
```

Equivalent manual commands:
```bash
claude plugin marketplace add --scope user JoAiHQ/claude-plugins
claude plugin install --scope user joai@joai-claude-plugins
```

If already configured:
```bash
claude plugin marketplace update joai-claude-plugins
claude plugin install --scope user joai@joai-claude-plugins
```

Per-app example:
```bash
claude plugin install --scope user joai-multiversx@joai-claude-plugins
```

Optional sparse monorepo checkout:
```bash
claude plugin marketplace add --scope user --sparse .claude-plugin plugins JoAiHQ/claude-plugins
```

## MCP Servers (Apps & Agents)

JoAi exposes MCP servers for every app and agent. Tools are generated automatically at runtime.

### How it works

When you connect an app, all its actions become callable tools. When you connect an agent, you get tools for prompting it, managing memory, blueprints, knowledge, and contracts.

### Endpoints

| Type | URL pattern | Auth |
|------|-------------|------|
| App | `https://cortex.joai.ai/mcp/apps/{app-slug}` | OAuth 2.1 |
| Agent | `https://cortex.joai.ai/mcp/agents/{agent-uuid}` | OAuth 2.1 (private) or anonymous (public) |

### Discovering available apps

List available apps via the API:

```bash
curl https://api.joai.ai/brands
```

Each app's `slug` maps to an MCP endpoint at `https://cortex.joai.ai/mcp/apps/{slug}`.

You can also browse apps at [joai.ai/apps](https://joai.ai/apps).

### Connecting an app

Use the `mcp_url` from the discovery endpoint:

```bash
claude mcp add --transport http --scope user joai-{slug} {mcp_url}
```

Examples:
```bash
claude mcp add --transport http --scope user joai-google-sheets https://cortex.joai.ai/mcp/apps/google-sheets
claude mcp add --transport http --scope user joai-multiversx https://cortex.joai.ai/mcp/apps/multiversx
claude mcp add --transport http --scope user joai-github https://cortex.joai.ai/mcp/apps/github
```

### Connecting an agent

Get your agent's UUID from the JoAi app (agent settings or URL).

```bash
claude mcp add --transport http --scope user joai-agent-{name} https://cortex.joai.ai/mcp/agents/{agent-uuid}
```

Public agents can be connected without authentication. Private agents trigger the OAuth 2.1 flow on first use.

### Authentication

OAuth 2.1 is handled automatically by Claude Code. On first connection:
1. Claude Code discovers the OAuth server via `WWW-Authenticate` header
2. Opens browser for JoAi login
3. You select team + agent context
4. Token is stored securely — subsequent calls are automatic

### Agent MCP tools

When connected to an agent, these tools are available:
- `prompt_agent` — send a message to the agent
- `memory_create`, `memory_search`, `memory_update` — manage agent memory
- `blueprint_list`, `blueprint_get`, `blueprint_create` — manage blueprints
- `contract_*` — manage smart contracts
- `ingest_knowledge` — feed documents/URLs to the agent

### App MCP tools

When connected to an app, every action registered for that app becomes a tool. For example, connecting `google-sheets` gives you tools for creating, reading, and updating spreadsheets.

## Runtime Behavior (Board Capability)

- `UserPromptSubmit` hook auto-binds callback URL and secret when callback instructions are present in prompt text.
- `Stop` hook reports status to JoAi inbound webhook.
- If response indicates another iteration (`decision: block` or `data.nextAction=iterate`), Claude continues.

This aligns with Claude HTTP response hook handling:
- [Claude hooks HTTP response handling](https://code.claude.com/docs/en/hooks#http-response-handling)

## Plugin Files

- Manifest: `plugins/claude/.claude-plugin/plugin.json`
- Hook config: `plugins/claude/hooks/hooks.json`
- Commands:
  - `plugins/claude/commands/joai-board-bind-callback.md`
  - `plugins/claude/commands/joai-board-unbind-callback.md`

## Workspace Files

- State: `.claude/.joai-board.json`
- Logs: `.claude/logs/joai-board-hooks.log`

## Validate

From repo root:
```bash
claude plugin validate plugins/claude/.claude-plugin/plugin.json
```

## Uninstall

Plugin only:
```bash
bash scripts/uninstall-claude.sh
```

Plugin + marketplace:
```bash
bash scripts/uninstall-claude.sh user true
```
