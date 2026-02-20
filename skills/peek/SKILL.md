---
name: peek
description: >
  Describe and rename images from the terminal using vision LLMs via OpenRouter. Supports multiple
  models, detail levels (brief, normal, detailed), and directory batch renaming with parallel jobs.
  Use when the user wants to describe, rename, or analyze images from the command line — single files
  or entire directories. Can also output just a short name for scripting and piping.
---

# peek

Describe and rename images from the terminal using vision LLMs via OpenRouter.

Requires `OPENROUTER_API_KEY` environment variable.

## Install

```bash
brew install aayush9029/tap/peek
```

## Usage

```bash
# Describe a single image
peek photo.png

# Detailed description with larger model
peek shot.png -m qwen72b -d detailed

# With context hint
peek ui.png -c "iOS settings screen"

# Brief description
peek chart.png -d brief

# Just the name, no description
peek image.png --name-only

# Piped output is tab-separated
peek image.png | cut -f1    # just the name
peek image.png | cut -f2    # just the description

# List available models
peek --list-models
```

## Directory Mode

Pass a directory to batch-rename files using vision. Rename and timestamp context are enabled by default.

```bash
peek ./screenshots                    # rename all images in dir
peek ./screenshots --no-rename        # describe only, no rename
peek ./images -r -j 4                 # parallel recursive
peek ./photos --no-timestamp-context  # skip timestamp/neighbor context
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
| `--no-rename` | Don't rename files (describe only) | |
| `--no-timestamp-context` | Skip timestamp/neighbor context | |
