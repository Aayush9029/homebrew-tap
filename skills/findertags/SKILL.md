---
name: findertags
description: >
  Read, add, remove, replace, and clear macOS Finder tags on files and directories from the command line.
  Use when the user wants to organize files with color tags, query which tags are on a path, bulk-tag
  project folders, or list tag frequencies across a directory tree.
---

# findertags

Read and modify macOS Finder tags from the command line.

## Install

```bash
brew install aayush9029/tap/findertags
```

## Subcommands

| Command | Description |
|---------|-------------|
| `read` | Read tags for one or more paths |
| `write` | Replace tags on a path |
| `add` | Add tags without duplicating existing ones |
| `remove` | Remove one or more tags from a path |
| `clear` | Remove all tags from a path |
| `list` | List tag frequencies across paths |

## Options

| Flag | Description |
|------|-------------|
| `--verbose` | Include paths with no tags |
| `--format json` | Output as JSON |
