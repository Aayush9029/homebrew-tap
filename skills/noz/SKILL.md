---
name: noz
description: Prevent Mac from sleeping with lid closed.
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
