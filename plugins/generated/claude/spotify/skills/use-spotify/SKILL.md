---
name: use-spotify
description: Use the Spotify JoAi app plugin when the task needs Spotify tools or workflows.
---

# Spotify

Connect Spotify to Claude, Codex, and ChatGPT through JoAi's hosted MCP app server.

Use the MCP tools exposed by this plugin instead of describing the workflow abstractly. Start by identifying the most relevant action, then call the MCP tool directly.

## Example Prompts

- List the Spotify tools available in this app.
- Explain what setup or authentication Spotify needs before I run an action.
- Use Spotify to help me with the task I describe next.

## Action Inventory

- `spotify-get-album` (collect) — Get detailed information about an album on Spotify, including its tracks.
- `spotify-get-artist` (collect) — Get detailed information about an artist on Spotify.
- `spotify-get-artist-top-tracks` (collect) — Get the top tracks for an artist on Spotify.
- `spotify-get-currently-playing` (collect) — Get the track currently playing on the user's Spotify account.
- `spotify-get-playlist` (collect) — Get detailed information about a Spotify playlist, including its tracks.
- `spotify-get-track` (collect) — Get detailed information about a single track from Spotify.
- `spotify-search` (collect) — Search for tracks, artists, albums, or playlists on Spotify.

## Usage Notes

- Every listed action becomes an MCP tool when the app server is connected.
- Prefer the generated provider plugin when one is available, and fall back to the raw MCP URL otherwise.

## Auth Notes

- Some actions require provider credentials or OAuth on first use.
