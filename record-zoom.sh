#!/bin/bash
set -e

# Create recordings directory if it doesn't exist
mkdir -p "$HOME/Recordings"

TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
OUTPUT_FILE="$HOME/Recordings/zoom-$TIMESTAMP.mp4"

echo "=== mac-zoom-recorder ==="
echo "Output file: $OUTPUT_FILE"
echo ""
echo "Make sure BlackHole 2ch is set as your output device in Zoom."
echo "Press Ctrl+C to stop recording."
echo ""

# Record screen + BlackHole audio
ffmpeg -f avfoundation \
  -framerate 30 \
  -i "1:BlackHole 2ch" \
  -r 30 \
  -preset ultrafast \
  -crf 18 \
  "$OUTPUT_FILE"

echo ""
echo "Recording saved to: $OUTPUT_FILE"