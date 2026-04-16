#!/bin/bash
# fathom-to-markdown.sh — Pull a Fathom call transcript and save as formatted markdown
# Usage: ./tools/fathom-to-markdown.sh <recording_id> [output_filename]
#
# Requires: FATHOM_API_KEY in .env, curl, jq

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJECT_DIR="$(dirname "$SCRIPT_DIR")"
OUTPUT_DIR="$PROJECT_DIR/call-transcripts"

# Load API key
if [ -f "$PROJECT_DIR/.env" ]; then
    source "$PROJECT_DIR/.env"
fi

if [ -z "${FATHOM_API_KEY:-}" ]; then
    echo "Error: FATHOM_API_KEY not set. Add it to .env" >&2
    exit 1
fi

if [ -z "${1:-}" ]; then
    echo "Usage: $0 <recording_id> [output_filename]" >&2
    exit 1
fi

RECORDING_ID="$1"
CUSTOM_FILENAME="${2:-}"
API_BASE="https://api.fathom.ai/external/v1"

mkdir -p "$OUTPUT_DIR"

echo "Fetching meeting info for recording $RECORDING_ID..."

# Get meeting with transcript included
MEETING_JSON=$(curl -s -H "X-Api-Key: $FATHOM_API_KEY" \
    "$API_BASE/meetings?include_transcript=true" | \
    jq --arg id "$RECORDING_ID" '.items[] | select(.recording_id == ($id | tonumber))')

if [ -z "$MEETING_JSON" ] || [ "$MEETING_JSON" = "null" ]; then
    echo "Meeting not found in recent meetings. Trying with more pages..."
    # Try fetching transcript directly
    TRANSCRIPT_JSON=$(curl -s -H "X-Api-Key: $FATHOM_API_KEY" \
        "$API_BASE/recordings/$RECORDING_ID/transcript")

    if echo "$TRANSCRIPT_JSON" | jq -e '.transcript' > /dev/null 2>&1; then
        TITLE="Recording $RECORDING_ID"
        DATE=$(date +%Y-%m-%d)
        DURATION_STR="Unknown"
        RECORDED_BY="Jason Cooperson"
        PARTICIPANTS="Unknown"
        SHARE_URL="N/A"
    else
        echo "Error: Could not fetch transcript" >&2
        echo "$TRANSCRIPT_JSON" >&2
        exit 1
    fi
else
    TITLE=$(echo "$MEETING_JSON" | jq -r '.title // "Untitled"')
    DATE=$(echo "$MEETING_JSON" | jq -r '.created_at // empty' | cut -c1-10)
    RECORDED_BY=$(echo "$MEETING_JSON" | jq -r '.recorded_by.name // "Unknown"')
    SHARE_URL=$(echo "$MEETING_JSON" | jq -r '.share_url // "N/A"')
    PARTICIPANTS=$(echo "$MEETING_JSON" | jq -r '[.calendar_invitees[]?.name // empty] | join(", ")' 2>/dev/null)
    [ -z "$PARTICIPANTS" ] && PARTICIPANTS="$RECORDED_BY"

    # Calculate duration
    START=$(echo "$MEETING_JSON" | jq -r '.recording_start_time // empty')
    END=$(echo "$MEETING_JSON" | jq -r '.recording_end_time // empty')
    if [ -n "$START" ] && [ -n "$END" ]; then
        START_S=$(date -j -f "%Y-%m-%dT%H:%M:%S" "${START%%.*}" "+%s" 2>/dev/null || echo "0")
        END_S=$(date -j -f "%Y-%m-%dT%H:%M:%S" "${END%%.*}" "+%s" 2>/dev/null || echo "0")
        if [ "$START_S" -gt 0 ] && [ "$END_S" -gt 0 ]; then
            DUR=$((END_S - START_S))
            DURATION_STR="$((DUR / 60))m $((DUR % 60))s"
        else
            DURATION_STR="Unknown"
        fi
    else
        DURATION_STR="Unknown"
    fi

    TRANSCRIPT_JSON=$(echo "$MEETING_JSON" | jq '{transcript: .transcript}')
fi

# Generate filename
if [ -n "$CUSTOM_FILENAME" ]; then
    FILENAME="$CUSTOM_FILENAME"
else
    SLUG=$(echo "$TITLE" | tr '[:upper:]' '[:lower:]' | sed 's/[^a-z0-9]/-/g' | sed 's/--*/-/g' | sed 's/^-//;s/-$//')
    FILENAME="${DATE}--${SLUG}"
fi

OUTPUT_FILE="$OUTPUT_DIR/${FILENAME}.md"

echo "Formatting transcript to $OUTPUT_FILE..."

# Write header
cat > "$OUTPUT_FILE" << HEADER
# $TITLE

| | |
|---|---|
| **Date** | $DATE |
| **Duration** | $DURATION_STR |
| **Recorded by** | $RECORDED_BY |
| **Participants** | $PARTICIPANTS |
| **Fathom link** | $SHARE_URL |

---

## Transcript

HEADER

# Format transcript
echo "$TRANSCRIPT_JSON" | jq -r '.transcript[] | "**\(.speaker.display_name // "Unknown")** _[\(.timestamp // "")]_\n> \(.text)\n"' >> "$OUTPUT_FILE" 2>/dev/null

if [ $? -ne 0 ]; then
    echo "Warning: Could not parse transcript JSON, saving raw" >&2
    echo "$TRANSCRIPT_JSON" >> "$OUTPUT_FILE"
fi

echo ""
echo "Done! Saved: $OUTPUT_FILE"
echo "Title: $TITLE"
echo "Date: $DATE"
