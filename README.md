# mac-zoom-recorder

A simple, reliable way to record Zoom calls (screen + audio) on macOS using BlackHole and ffmpeg.

## Why this exists

Zoom's built-in recording often has limitations (especially for local recording permissions). This tool provides a lightweight, script-based alternative that captures both the screen and system audio reliably.

## Requirements

- macOS (tested on Sonoma / Sequoia)
- [BlackHole](https://github.com/ExistentialAudio/BlackHole) (2ch version recommended)
- ffmpeg (installed via Homebrew)

## Installation

### 1. Install BlackHole

Download and install the free **BlackHole 2ch** driver:

→ [https://github.com/ExistentialAudio/BlackHole/releases](https://github.com/ExistentialAudio/BlackHole/releases)

After installing, restart your Mac or at least restart Zoom.

### 2. Install ffmpeg

```bash
brew install ffmpeg
```

### 3. Clone this repo

```bash
git clone https://github.com/yourusername/mac-zoom-recorder.git
cd mac-zoom-recorder
chmod +x install.sh record-zoom.sh
```

### 4. Run the installer (optional)

```bash
./install.sh
```

## Usage

### Start recording

```bash
./record-zoom.sh
```

The script will:
- Record your screen
- Capture system audio (including Zoom)
- Save the file to `~/Recordings/` with a timestamp

### Stop recording

Press `Ctrl + C` in the terminal.

## Output

Recordings are saved as:

```
~/Recordings/zoom-YYYY-MM-DD_HH-MM-SS.mp4
```

## Recommended Zoom Audio Settings

For best results, in Zoom:

1. Go to **Zoom → Settings → Audio**
2. Set **Output** to **BlackHole 2ch**
3. (Optional) Use an app like **Loopback** or **Audio MIDI Setup** to create a multi-output device so you can still hear audio while recording.

## License

MIT License

## Contributing

Pull requests are welcome. For major changes, please open an issue first.

## Credits

Built with BlackHole + ffmpeg.