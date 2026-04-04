---
name: meow
description: >
  Upload files to catbox.moe and litterbox from the terminal. Use when the user wants
  to upload files, share images, host files temporarily, or manage catbox albums.
---

# meow

Upload files to catbox.moe & litterbox from the terminal.

## Install

```bash
brew install aayush9029/tap/meow
```

## Commands

| Command | Description |
|---------|-------------|
| `<file> [file...]` | Upload files (default action) |
| `url <url>` | Re-host a file from a URL |
| `temp [-t time] <file>` | Temporary upload via Litterbox (1h/12h/24h/72h) |
| `delete <filename>...` | Delete files (requires auth) |
| `album <subcommand>` | Create, edit, add to, remove from, or delete albums |
| `auth [userhash]` | Set or view catbox userhash |
| `--anon` | Upload anonymously (skip saved userhash) |
