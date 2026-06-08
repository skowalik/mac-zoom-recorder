# mac-zoom-recorder

A lightweight, reliable tool for recording Zoom calls (screen + audio) on macOS using BlackHole and ffmpeg.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Platform](https://img.shields.io/badge/platform-macOS-lightgrey)](https://www.apple.com/macos/)

## Overview

Zoom’s built-in local recording can be unreliable due to permission restrictions and inconsistent behavior. `mac-zoom-recorder` provides a simple, script-based alternative that reliably captures both your screen and system audio.

## Features

- Records screen + system audio in a single command
- Timestamped output files
- Minimal dependencies
- Works with any application that outputs audio through BlackHole

## Requirements

| Requirement     | Version / Notes                          | Installation |
|-----------------|------------------------------------------|--------------|
| macOS           | Sonoma / Sequoia (tested)                | — |
| BlackHole       | 2ch version recommended                  | See below |
| ffmpeg          | Latest via Homebrew                      | `brew install ffmpeg` |

## Installation

### 1. Install BlackHole

Download and install the free **BlackHole 2ch** virtual audio driver:

- [BlackHole Releases](https://github.com/ExistentialAudio/BlackHole/releases)

After installation, restart Zoom (or your Mac) for the device to appear.

### 2. Install ffmpeg

```bash
brew install ffmpeg
```

### 3. Clone the repository

```bash
git clone https://github.com/skowalik/mac-zoom-recorder.git
cd mac-zoom-recorder
chmod +x install.sh record-zoom.sh
```

### 4. (Optional) Run the installer

```bash
./install.sh
```

## Usage

### Start Recording

```bash
./record-zoom.sh
```

The script will begin recording your screen and any audio routed through BlackHole.

### Stop Recording

Press `Ctrl + C` in the terminal.

## Output

Recordings are saved to:

```
~/Recordings/zoom-YYYY-MM-DD_HH-MM-SS.mp4
```

## Zoom Configuration (Recommended)

For best results, configure Zoom to output audio through BlackHole:

1. Open **Zoom → Settings → Audio**
2. Set **Output** to **BlackHole 2ch**
3. *(Optional)* Create a multi-output device in **Audio MIDI Setup** so you can still hear audio while recording.

## Troubleshooting

| Issue                        | Solution |
|-----------------------------|----------|
| No audio in recording       | Ensure BlackHole 2ch is selected as Zoom’s output device |
| ffmpeg cannot find device   | Run `ffmpeg -f avfoundation -list_devices true -i ""` to verify device names |
| Recording is silent         | Restart Zoom after installing BlackHole |

## Contributing

Contributions are welcome. Please open an issue first to discuss major changes.

## License

This project is licensed under the MIT License — see the [LICENSE](LICENSE) file for details.

## Credits

Built with [BlackHole](https://github.com/ExistentialAudio/BlackHole) and [ffmpeg](https://ffmpeg.org/).