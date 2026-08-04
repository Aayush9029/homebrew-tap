---
name: calen
description: >
  Manage Apple Calendar and Reminders from the command line with EventKit.
  Use when the user wants to inspect or modify calendars, reminder lists,
  events, reminders, recurrence, alarms, or EventKit permissions on macOS.
---

# calen

Manage Apple Calendar and Reminders from the command line.

## Install

```bash
brew install aayush9029/tap/calen
```

## Common commands

```bash
calen permissions status
calen calendars list
calen events list --from today --to tomorrow
calen events create --title "Focus time" --start "2026-08-05 09:00" --end "2026-08-05 10:00"
calen reminders list
calen reminders create --title "Send invoice" --due 2026-08-06
calen events search "review" --json
```

Run `calen --help` or `calen <group> <command> --help` for the full command surface.
