---
name: goping
description: >
  Thoughtful ping with a live TUI and better host stats.
  Use when the user needs to ping hosts, monitor latency, or diagnose
  network connectivity from the terminal.
---

# goping

Thoughtful ping with a live TUI and better host stats.

## Install

```bash
brew install aayush9029/tap/goping
```

## Options

| Flag | Description | Default |
|------|-------------|---------|
| `-i, --interval <duration>` | Probe interval | `1s` |
| `--timeout <duration>` | Probe timeout budget | `3s` |
| `-b, --buffer <samples>` | Samples to retain in memory | `60` |
| `-c, --count <n>` | Stop after n probes per target | — |
| `--duration <duration>` | Stop after fixed runtime | — |
| `--plain` | Disable the TUI | — |
| `--graph-height <rows>` | TUI graph height | `8` |
| `--color / --no-color` | Force or disable ANSI color | — |
| `-4` | Resolve targets as IPv4 | — |
| `-6` | Resolve targets as IPv6 | — |
