#!/bin/bash
ORIGINAL="Media/Requiem final.wav"
if [ -f "$ORIGINAL" ]; then
  echo "Skipping: $ORIGINAL already exists"
else
  echo "Reassembling: $ORIGINAL"
  cat "${ORIGINAL}.part_"* > "$ORIGINAL"
  echo "Done. Size: $(du -h "$ORIGINAL" | cut -f1)"
fi
