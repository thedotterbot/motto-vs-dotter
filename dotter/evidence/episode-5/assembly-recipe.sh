#!/usr/bin/env bash
# Episode 5 historical assembly recipe, sanitized to generic input names.
# Recorded settings from the October 19, 2026 production command.
# This is NOT a standalone reproduction bundle: validated private inputs,
# fonts, source scene and native render receipts are required separately.
# No download, setup, voice synthesis or rendering is performed by this file.
# Before running, verify all 713 input PNG hashes and unchanged scene/source
# signatures against the retained production receipts. Existence is not proof.
set -euo pipefail

ffmpeg -framerate 12 -start_number 1 -i frames/%04d.png \
  -i mix.wav -vf "ass=captions.ass:fontsdir=fonts,fps=24" \
  -c:v libx264 -preset medium -crf 18 -pix_fmt yuv420p -profile:v high \
  -c:a aac -b:a 192k -ar 48000 -ac 1 -t 59.416666667 \
  -movflags +faststart -threads 4 episode-5.mp4
ffprobe -v error -show_format -show_streams -of json episode-5.mp4 > export-probe.json
ffmpeg -v error -i episode-5.mp4 -f null - 2> export-decode-errors.txt
sha256sum episode-5.mp4 > export-sha256.txt
# These checks establish technical bytes/decoding, not listening or AV quality.
