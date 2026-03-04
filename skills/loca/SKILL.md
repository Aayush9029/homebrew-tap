---
name: loca
description: >
  Get the current Mac location from the terminal with CoreLocation. Use when the user
  needs latitude/longitude, JSON output for scripting, or a quick status check for
  macOS Location Services and permission state.
---

# loca

Get your Mac's current location from the terminal.

## Install

```bash
brew install aayush9029/tap/loca
```

## Options

| Flag | Description |
|------|-------------|
| `-h, --help` | Show help |
| `-v, --version` | Show version |
| `--status` | Print service + permission status only |
| `-j, --json` | Output JSON |
| `-f, --format <text\|json>` | Output format |
| `-t, --timeout <sec>` | Timeout in seconds |
| `-a, --accuracy <best\|10m\|100m\|1km\|3km>` | Requested location accuracy |
