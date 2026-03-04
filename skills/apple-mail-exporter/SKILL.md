---
name: apple-mail-exporter
description: >
  Search and export emails from Apple Mail's local database by keyword, sender, or subject.
  Use when the user wants to find specific emails, export mail archives, or extract messages
  from Mail.app without opening the GUI.
---

# apple-mail-exporter

Search and export emails from Apple Mail's local database.

## Install

```bash
brew install aayush9029/tap/apple-mail-exporter
```

## Options

| Flag | Description | Default |
|------|-------------|---------|
| `-o, --output <dir>` | Output directory | `output` |
| `-l, --limit <n>` | Max emails to export (0 = all) | `0` |
| `--list-only` | List matches without exporting | |
| `-i, --interactive` | Interactive mode | |
| `--mail-dir <dir>` | Override Mail V* directory | |
| `--mail-base <dir>` | Override Mail base directory | |
