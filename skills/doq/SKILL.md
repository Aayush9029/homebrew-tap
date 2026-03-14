---
name: doq
description: >
  Query Apple developer documentation from the terminal.
  Use when the user needs to search symbols, view declarations, docs, availability,
  or relationships for Apple SDK APIs.
---

# doq

Query Apple developer documentation from your terminal.

## Install

```bash
brew install aayush9029/tap/doq
```

## Subcommands

| Command | Description |
|---------|-------------|
| `doq` | Launch interactive TUI |
| `doq search <term>` | Search symbols |
| `doq info <symbol>` | Show full symbol details |
| `doq list` | List indexed frameworks |
| `doq index [frameworks]` | Build/rebuild search index |
| `doq index --all` | Index all SDK frameworks |
