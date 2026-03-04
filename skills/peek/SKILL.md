---
name: peek
description: >
  Describe and rename images from the terminal using vision LLMs via OpenRouter.
  Use when the user wants to describe or analyze images from the command line — single files
  or entire directories. Describe-only by default; use --rename to also rename files.
---

# peek

Describe images from the terminal using vision LLMs via OpenRouter.

Requires `OPENROUTER_API_KEY` environment variable.

## Install

```bash
brew install aayush9029/tap/peek
```

## Options

| Flag | Description | Default |
|------|-------------|---------|
| `-m, --model <name>` | Model shorthand | `qwen32b` |
| `-d, --detail <level>` | `brief`, `normal`, or `detailed` | `normal` |
| `-c, --context <text>` | Context to guide the description | |
| `--name-only` | Print only the name | |
| `--list-models` | List supported models | |
| `-r, --recursive` | Recurse into subdirectories | |
| `-j, --jobs <n>` | Parallel jobs | `1` |
| `--rename` | Rename files based on description | |
| `--no-timestamp-context` | Skip timestamp/neighbor context | |
