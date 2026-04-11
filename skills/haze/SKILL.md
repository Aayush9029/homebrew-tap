---
name: haze
description: >
  Apply a progressive blur, film grain, and gradient color overlay to a video file using ffmpeg.
  Use when the user wants to soften the bottom of a video for text overlays, add a vignette,
  produce a frosted-glass marketing intro, or layer a colored fade on App Store / landing-page footage.
---

# haze

Progressive blur + grain + gradient color overlay for video, built on ffmpeg.

## Install

```bash
brew install aayush9029/tap/haze
```

Requires `ffmpeg`.

## Usage

```bash
haze in.mp4                                          # default progressive blur
haze --no-noise --blur-max 30 in.mp4                 # softer, no grain
haze --overlay white in.mp4 out.mp4                  # white gradient on top
haze --overlay '#000000' --overlay-steepness 1.8 in.mp4
haze --bands 12 --preset ultrafast in.mp4            # fast preview
```

## Options

| Flag | Description | Default |
|------|-------------|---------|
| `--blur-min N` | Sigma at top of region | `0` |
| `--blur-max N` | Sigma at bottom of frame | `128` |
| `--blur-region PCT` | % of height the blur ramp covers | `66.6667` |
| `--bands N` | Number of sigma bands | `32` |
| `--noise-strength N` | Grain intensity 0-100 | `15` |
| `--no-noise` | Disable grain | — |
| `--overlay COLOR` | Enable gradient color overlay | off |
| `--overlay-min A` / `--overlay-max A` | Alpha range | `0.0` / `1.0` |
| `--overlay-steepness N` | Ramp exponent (1 = linear) | `1.0` |
| `--crf N` | x264 CRF (lower = better) | `18` |
| `--preset P` | x264 preset | `medium` |
