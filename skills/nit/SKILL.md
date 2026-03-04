---
name: nit
description: >
  Browse tweets, view user timelines, and search posts from the terminal via Nitter instances.
  Use when the user wants to read someone's tweets, check a Twitter profile, or search for
  tweets on a topic without opening a browser.
---

# nit

Browse tweets from the terminal via Nitter instances.

## Install

```bash
brew install aayush9029/tap/nit
```

## Subcommands

| Command | Description |
|---------|-------------|
| `timeline` | Show a user's timeline (default) |
| `profile` | Show a user's profile info |
| `search` | Search for tweets |

## Options

| Flag | Description |
|------|-------------|
| `--count <n>` | Maximum number of tweets to display |
| `--json` | Output as JSON |
| `--instance <url>` | Custom Nitter instance URL |
