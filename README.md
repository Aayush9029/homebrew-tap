# Aayush's Homebrew Tap

Custom Homebrew formulae and [Claude Code skills](https://skills.sh) by [Aayush Pokharel](https://github.com/Aayush9029).

## [Formulae](#formulae) | [Skills](#skills)

---

## Formulae

```bash
brew tap aayush9029/tap
```

| Formula | Install | Description |
|---------|---------|-------------|
| [apple-mail-exporter](https://github.com/Aayush9029/apple-mail-exporter) | `brew install aayush9029/tap/apple-mail-exporter` | Search and export emails from Apple Mail's local database |
| [findertags](https://github.com/Aayush9029/findertags) | `brew install aayush9029/tap/findertags` | Read and modify Finder tags from the command line |
| [nit](https://github.com/Aayush9029/nit) | `brew install aayush9029/tap/nit` | Browse tweets from the terminal via Nitter instances |
| [noz](https://github.com/Aayush9029/noz) | `brew install aayush9029/tap/noz` | Prevent Mac from sleeping with lid closed |
| [peek](https://github.com/Aayush9029/peek) | `brew install aayush9029/tap/peek` | Describe images from the terminal using vision LLMs |

---

## Skills

Each formula ships a matching [Claude Code skill](https://skills.sh) with usage docs and examples.

```bash
# Install all skills
npx skills add Aayush9029/homebrew-tap

# Install a specific skill
npx skills add Aayush9029/homebrew-tap --skill peek
```

| Skill | Description |
|-------|-------------|
| [apple-mail-exporter](skills/apple-mail-exporter/SKILL.md) | Export Mail.app emails by keyword, sender, or subject |
| [findertags](skills/findertags/SKILL.md) | Read, add, remove, and clear macOS Finder tags |
| [nit](skills/nit/SKILL.md) | Browse timelines, profiles, and search tweets |
| [noz](skills/noz/SKILL.md) | Keep Mac awake with lid closed for a set duration |
| [peek](skills/peek/SKILL.md) | Describe and analyze images with vision LLMs |
