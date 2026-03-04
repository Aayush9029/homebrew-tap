---
name: bump
description: >
  Bump MARKETING_VERSION in Xcode projects from the terminal. Use when the user needs
  patch/minor/major bumps or a direct version set for an app project.
---

# bump

Bump Xcode project marketing version from the command line.

## Install

```bash
brew install aayush9029/tap/bump
```

## Options

| Flag | Description |
|------|-------------|
| `-h, --help` | Show usage info |
| `-v, --version` | Print version |
| `-c, --check` | Show current version only |
| `patch` | Bump patch version |
| `minor` | Bump minor version |
| `major` | Bump major version |
| `<version>` | Set exact version (e.g. `2.0.0`) |
