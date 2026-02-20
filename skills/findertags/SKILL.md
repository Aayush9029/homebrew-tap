---
name: findertags
description: >
  Read, add, remove, replace, and clear macOS Finder tags on files and directories from the command line.
  Use when the user wants to organize files with color tags, query which tags are on a path, bulk-tag
  project folders, or list tag frequencies across a directory tree. Works with any Finder-compatible tag.
---

# findertags

Read and modify macOS Finder tags from the command line.

## Install

```bash
brew install aayush9029/tap/findertags
```

## Usage

```bash
# Read tags on a file
findertags read ~/Documents/report.pdf

# Include paths with no tags
findertags read --verbose ~/Desktop/file.txt ~/Desktop/other.txt

# Add tags (positional args, not flags)
findertags add ~/project Work Important

# Replace all tags on a file
findertags write ~/file.txt Archive

# Remove specific tags
findertags remove ~/file.txt Draft

# Clear all tags
findertags clear ~/file.txt

# List tag frequencies across paths
findertags list ~/Documents

# JSON output
findertags read --format json ~/Documents/report.pdf
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
