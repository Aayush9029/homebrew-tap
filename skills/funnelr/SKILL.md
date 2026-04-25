---
name: funnelr
description: >
  Expose local web servers with Tailscale Funnel.
  Use when the user needs to share localhost over a public Tailscale Funnel URL,
  inspect active tunnels, or tail funnelr request metadata logs.
---

# funnelr

Expose local web servers with Tailscale Funnel.

## Install

```bash
brew install aayush9029/tap/funnelr
```

## Usage

```bash
funnelr             # scan common ports and pick one
funnelr 3000        # expose localhost:3000
funnelr status      # show active Funnel URL
funnelr logs        # tail request metadata logs
funnelr stop        # stop the active tunnel
```
