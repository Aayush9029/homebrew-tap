---
name: sip
description: >
  Summarize stdin using LLMs. Use when the user wants to summarize logs, code,
  git history, or any piped text using AI models via OpenRouter.
---

# sip

Summarize stdin using LLMs.

## Install

```bash
brew install aayush9029/tap/sip
```

## Options

| Flag | Description |
|------|-------------|
| `-h, --help` | Show usage info |
| `-v, --version` | Print version |
| `-p, --prompt <text>` | Ask a specific question about the input |
| `-l, --level <level>` | brief, normal, or detailed (default: normal) |
| `-s, --style <style>` | auto, logs, or code (default: auto) |
| `-m, --model <name>` | Model shorthand (default: flash) |
| `--list-models` | List supported models |
| `--setup` | Configure API key and defaults |
