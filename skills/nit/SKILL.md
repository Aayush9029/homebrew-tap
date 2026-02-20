---
name: nit
description: >
  Browse tweets, view user timelines, and search posts from the terminal via Nitter instances.
  Use when the user wants to read someone's tweets, check a Twitter profile, or search for
  tweets on a topic without opening a browser. Renders tweet content directly in the terminal.
---

# nit

Browse tweets from the terminal via Nitter instances.

## Install

```bash
brew install aayush9029/tap/nit
```

## Usage

```bash
# Show a user's timeline (default command)
nit timeline elonmusk

# Show a user's profile info
nit profile elonmusk

# Search for tweets
nit search "swift concurrency"
```

## Subcommands

| Command | Description |
|---------|-------------|
| `timeline` | Show a user's timeline (default) |
| `profile` | Show a user's profile info |
| `search` | Search for tweets (best-effort, may be blocked on some instances) |
