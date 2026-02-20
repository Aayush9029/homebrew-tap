---
name: peek
description: Describe images from the terminal using vision LLMs.
---

# peek

Describe images from the terminal using vision LLMs via OpenRouter.

Requires `OPENROUTER_API_KEY` environment variable.

## Install

```bash
brew install aayush9029/tap/peek
```

## Usage

```bash
# Describe with defaults (qwen32b, normal detail)
peek photo.png

# Detailed description with larger model
peek shot.png -m qwen72b -d detailed

# With context hint
peek ui.png -c "iOS settings screen"

# Brief description
peek chart.png -d brief

# Just the name, no description
peek image.png --name-only

# Name from piped output
peek image.png | cut -f1

# List available models
peek --list-models
```

## Options

| Flag | Description | Default |
|------|-------------|---------|
| `-m, --model <name>` | Model shorthand | `qwen32b` |
| `-d, --detail <level>` | `brief`, `normal`, or `detailed` | `normal` |
| `-c, --context <text>` | Context to guide the description | |
| `--name-only` | Print only the name | |
| `--list-models` | List supported models | |
