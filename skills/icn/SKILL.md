---
name: icn
description: >
  Generate .icon files from SF Symbols for Apple platforms.
  Use when the user needs to create app icons from SF Symbols with custom colors,
  gradients, glass effects, or platform-specific renditions.
---

# icn

Generate .icon files from SF Symbols for Apple platforms.

## Install

```bash
brew install aayush9029/tap/icn
```

## Options

| Flag | Description | Default |
|------|-------------|---------|
| `<symbol>` | SF Symbol name (e.g. swift, heart.fill) | — |
| `-n, --name <name>` | Output file name | `AppIcon` |
| `-c, --color <color>` | Background color — hex or name | — |
| `-f, --fill <fill>` | Fill style: solid, gradient, linear | `gradient` |
| `--symbol-color <color>` | Symbol foreground color | auto |
| `-g, --glass` | Enable glass effect | — |
| `-s, --scale <scale>` | Symbol scale within icon | `0.57` |
| `-w, --width <width>` | Symbol render width in pixels | `1024` |
| `--png` | Also export composited PNG preview | — |
| `--platform <platform>` | Target: ios, macos, watchos | `ios` |
| `--rendition <rendition>` | default, dark, tinted-dark | `default` |
| `-o, --output <output>` | Output directory | current |
