---
name: tmail
description: >
  Disposable email in your terminal powered by mail.tm. Use when the user needs
  a temporary email address, wants to check a disposable inbox, read messages,
  or watch for incoming emails in real-time from the command line.
---

# tmail

Disposable email in your terminal.

## Install

```bash
brew install aayush9029/tap/tmail
```

## Usage

```bash
# Create a new disposable email (copied to clipboard)
tmail generate

# List inbox messages
tmail messages

# Read a specific message
tmail read 1
tmail read 1 --plain
tmail read 1 --browser

# Watch for new messages in real-time
tmail watch

# Show account info
tmail me

# Delete account
tmail delete

# List available domains
tmail domains
```

## Options

| Flag | Description |
|------|-------------|
| `generate, g` | Create new disposable email |
| `messages, m` | List inbox messages |
| `read, r <n>` | Read message (--plain, --browser) |
| `watch, w` | Real-time notifications |
| `me` | Show account info |
| `delete, d` | Delete account |
| `domains` | List available domains |
