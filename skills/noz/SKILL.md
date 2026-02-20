---
name: noz
description: >
  Prevent a Mac from sleeping when the lid is closed, with a configurable timeout.
  Use when the user needs their Mac to stay awake for downloads, long builds, server tasks,
  or any background work while the laptop lid is shut. Defaults to 45 minutes, supports
  custom durations, and can be stopped early with Enter.
---

# noz

Prevent Mac from sleeping with the lid closed.

## Install

```bash
brew install aayush9029/tap/noz
```

## Usage

```bash
# Default: 45 minutes
noz

# Custom duration
noz -m 60    # 1 hour
noz -m 5     # 5 minutes
```

Press Enter to stop early, or wait for timeout.

## Options

| Flag | Description | Default |
|------|-------------|---------|
| `-m, --minutes N` | Duration in minutes | `45` |
