---
name: huectl
description: >
  Control Philips Hue lights from the terminal through a local Hue Bridge.
  Use when the user wants to pair with a Hue Bridge, discover Hue bridges,
  list lights, or turn Hue lights on, off, or toggle them from the command line.
---

# huectl

Control Philips Hue lights from your terminal.

## Install

```bash
brew install aayush9029/tap/huectl
```

## Usage

```bash
huectl auth
huectl status
huectl on
huectl off all
huectl toggle "lamp 1"
```
