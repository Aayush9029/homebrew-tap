---
name: spu
description: >
  Check and update Swift package dependencies from Package.swift files. Use when the
  user wants to audit outdated dependencies, update selected packages interactively,
  or run recursive updates across multiple Swift package projects.
---

# spu

Check and update Swift package dependencies from the command line.

## Install

```bash
brew install aayush9029/tap/spu
```

## Usage

```bash
# Check current directory
spu

# Check a specific project
spu ~/project

# Show table only (no prompt)
spu --check

# Find and update all Package.swift files recursively
spu --all
```

## Options

| Flag | Description |
|------|-------------|
| `-h, --help` | Show usage info |
| `-v, --version` | Print version |
| `-c, --check` | Show version table only |
| `-a, --all` | Recursively find and update all |
