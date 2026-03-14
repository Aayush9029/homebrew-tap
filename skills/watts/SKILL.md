---
name: watts
description: >
  Background battery and power logger for macOS.
  Use when the user needs to monitor battery health, log power data over time,
  or check Mac power stats from the command line.
---

# watts

Background battery and power logger for macOS.

## Install

```bash
brew install aayush9029/tap/watts
```

## Subcommands

| Command | Description |
|---------|-------------|
| `install` | Install config and launchd daemon |
| `uninstall` | Remove launchd daemon |
| `start` | Start daemon |
| `stop` | Stop daemon |
| `restart` | Restart daemon |
| `status` | Show service and database status |
| `tail` | Tail collector logs |
| `once` | Run one foreground sample and print JSON |
| `version` | Show version |
