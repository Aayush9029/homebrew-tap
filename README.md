# Aayush's Homebrew Tap

Custom Homebrew formulae and [Claude Code skills](https://skills.sh) by [Aayush Pokharel](https://github.com/Aayush9029).

## [Formulae](#formulae) | [Skills](#skills)

---

## Formulae

```bash
brew tap aayush9029/tap
```

<p align="center">
  <a href="https://github.com/Aayush9029/apple-mail-exporter"><img src="assets/apple-mail-exporter.png" width="128"></a>
  <a href="https://github.com/Aayush9029/findertags"><img src="assets/findertags.png" width="128"></a>
  <a href="https://github.com/Aayush9029/nit"><img src="assets/nit.png" width="128"></a>
  <a href="https://github.com/Aayush9029/noz"><img src="assets/noz.png" width="128"></a>
  <a href="https://github.com/Aayush9029/peek"><img src="assets/peek.png" width="128"></a>
</p>

| Formula | Install |
|---------|---------|
| **apple-mail-exporter** — Search and export emails from Apple Mail's local database | `brew install aayush9029/tap/apple-mail-exporter` |
| **findertags** — Read and modify Finder tags from the command line | `brew install aayush9029/tap/findertags` |
| **nit** — Browse tweets from the terminal via Nitter instances | `brew install aayush9029/tap/nit` |
| **noz** — Prevent Mac from sleeping with lid closed | `brew install aayush9029/tap/noz` |
| **peek** — Identify and name images using vision LLMs | `brew install aayush9029/tap/peek` |

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
