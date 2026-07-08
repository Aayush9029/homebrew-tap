---
name: seedr
description: >
  Manage seedr.cc cloud torrents from the terminal with a CLI and interactive TUI.
  Use when the user wants to add a magnet link, watch server download progress,
  fetch download URLs, proxy-download a torrent locally, or browse/search/delete
  files in their Seedr account.
---

# seedr

CLI and TUI for seedr.cc cloud torrents — add magnets, watch progress, download from the terminal.

## Install

```bash
brew install aayush9029/tap/seedr
```

## Options

| Command | Description |
|---------|-------------|
| `seedr` | Launch interactive TUI |
| `login -e <email> -p <password>` | Authenticate, saves token to `~/.config/seedr/config.json` |
| `add <magnet_or_url>` | Add torrent (`-w` to watch progress, `-f` target folder) |
| `proxy <magnet>` | Add, wait for server, download locally (`-o` dir, `--clean` to remove after) |
| `ls [folder_id]` | List files/folders |
| `dl <folder_file_id>` | Get download URL |
| `rm <id>` | Delete item (auto-detects type) |
| `search <query>` | Search files |
| `archive <folder_id>` | Get zip download URL for a folder |
| `status` | Account info and storage usage |
| `config` | Show config location and auth state |
