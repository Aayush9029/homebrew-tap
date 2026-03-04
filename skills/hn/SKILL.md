---
name: hn
description: >
  Browse Hacker News from the terminal with a CLI and interactive TUI.
  Use when the user wants to read top/new/best/ask/show/jobs stories,
  view threads with nested comments, or search HN via Algolia.
---

# hn

Browse Hacker News from the terminal — CLI + interactive TUI.

## Install

```bash
brew install aayush9029/tap/hn
```

## Usage

```bash
# List stories from a feed
hn top 10
hn new 20
hn ask

# View a thread with comments
hn thread 12345678

# Search stories
hn search "rust lang"

# Interactive TUI
hn -i
```

## Options

| Flag | Description |
|------|-------------|
| `top/new/best/ask/show/jobs [n]` | List stories (default 30) |
| `thread, t <id>` | View story + nested comments |
| `search, s <query> [n]` | Search stories (default 20) |
| `-i, --interactive` | Launch full TUI |
| `-v, --version` | Print version |
| `-h, --help` | Show help |
