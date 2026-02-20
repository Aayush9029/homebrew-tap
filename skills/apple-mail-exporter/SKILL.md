---
name: apple-mail-exporter
description: Search and export emails from Apple Mail's local database by keyword.
---

# apple-mail-exporter

Search and export emails from Apple Mail's local database.

## Install

```bash
brew install aayush9029/tap/apple-mail-exporter
```

## Usage

```bash
# Interactive mode
apple-mail-exporter

# Search by keywords (subject, sender address, sender name)
apple-mail-exporter "invoice" "receipt"

# List matching emails without exporting
apple-mail-exporter "newsletter" --list-only

# Export to a specific directory with a limit
apple-mail-exporter "project update" -o ~/exports -l 50
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
