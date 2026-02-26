---
name: bump
description: >
  Bump MARKETING_VERSION in Xcode projects from the terminal. Use when the user needs
  patch/minor/major bumps or a direct version set for an app project, including
  checking the current version without writing changes.
---

# bump

Bump Xcode project marketing version from the command line.

## Install

```bash
brew install aayush9029/tap/bump
```

## Usage

```bash
# Interactive prompt
bump

# Semver bumps
bump patch
bump minor
bump major

# Direct version set
bump 2.0.0

# Target a specific folder
bump ~/MyApp patch
```

## Options

| Flag | Description |
|------|-------------|
| `-h, --help` | Show usage info |
| `-v, --version` | Print version |
| `-c, --check` | Show current version only |
