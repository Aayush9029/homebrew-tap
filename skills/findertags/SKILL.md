---
name: findertags
description: Read and modify Finder tags from the command line.
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

# Add tags to a file
findertags add ~/project --tags "Work,Important"

# Replace all tags on a file
findertags write ~/file.txt --tags "Archive"

# Remove specific tags
findertags remove ~/file.txt --tags "Draft"

# Clear all tags
findertags clear ~/file.txt

# List tag frequencies across paths
findertags list ~/Documents
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
