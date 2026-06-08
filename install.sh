#!/bin/bash
set -e

echo "=== mac-zoom-recorder Installer ==="

# Check for Homebrew
if ! command -v brew &> /dev/null; then
    echo "Homebrew not found. Please install it first: https://brew.sh"
    exit 1
fi

# Install ffmpeg if missing
if ! command -v ffmpeg &> /dev/null; then
    echo "Installing ffmpeg..."
    brew install ffmpeg
else
    echo "ffmpeg already installed."
fi

# Check for BlackHole
if ! system_profiler SPAudioDataType | grep -q "BlackHole"; then
    echo ""
    echo "BlackHole not detected."
    echo "Please download and install BlackHole 2ch from:"
    echo "https://github.com/ExistentialAudio/BlackHole/releases"
    echo ""
    echo "After installing, restart your Mac and run this script again."
    exit 1
else
    echo "BlackHole detected."
fi

echo ""
echo "Installation complete. You can now run ./record-zoom.sh"