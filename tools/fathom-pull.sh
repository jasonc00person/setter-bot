#!/usr/bin/env bash
# fathom-pull.sh — Pull a Fathom call transcript and save as formatted markdown
# Usage: ./tools/fathom-pull.sh <recording_id> [output_dir]
# Example: ./tools/fathom-pull.sh 135086000 call-transcripts/

set -euo pipefail

RECORDING_ID="${1:?Usage: fathom-pull.sh <recording_id> [output_dir]}"
OUTPUT_DIR="${2:-call-transcripts}"
API_KEY="${FATHOM_API_KEY:-$(jq -r '.mcpServers.fathom.env.FATHOM_API_KEY' .mcp.json 2>/dev/null)}"
API_BASE="https://api.fathom.ai/external/v1"

if [[ -z "$API_KEY" || "$API_KEY" == "null" ]]; then
  echo "Error: No FATHOM_API_KEY found in env or .mcp.json" >&2
  exit 1
fi

mkdir -p "$OUTPUT_DIR"

echo "Fetching meeting metadata..." >&2

# Get meeting metadata via list endpoint (meetings/<id> doesn't exist in the API)
# Paginate through results to find the meeting by recording_id
meeting="null"
cursor=""
for attempt in $(seq 1 10); do
  url="$API_BASE/meetings?include_summary=true&include_action_items=true"
  [[ -n "$cursor" ]] && url="$url&cursor=$cursor"

  page=$(curl -sf "$url" -H "X-Api-Key: $API_KEY")
  match=$(echo "$page" | jq --argjson rid "$RECORDING_ID" '[.items[] | select(.recording_id == $rid)] | .[0]')

  if [[ "$match" != "null" && -n "$match" ]]; then
    meeting="$match"
    break
  fi

  cursor=$(echo "$page" | jq -r '.next_cursor // empty')
  [[ -z "$cursor" ]] && break
done

if [[ "$meeting" == "null" || -z "$meeting" ]]; then
  echo "Error: Meeting $RECORDING_ID not found in recent meetings. Try paginating." >&2
  exit 1
fi

title=$(echo "$meeting" | jq -r '.title // "Untitled"')
date=$(echo "$meeting" | jq -r '.created_at // empty' | cut -dT -f1)
start_time=$(echo "$meeting" | jq -r '.recording_start_time // empty' | sed 's/.*T//;s/Z//' | cut -d: -f1-2)
end_time=$(echo "$meeting" | jq -r '.recording_end_time // empty' | sed 's/.*T//;s/Z//' | cut -d: -f1-2)
share_url=$(echo "$meeting" | jq -r '.share_url // empty')
summary=$(echo "$meeting" | jq -r '.default_summary.markdown_formatted // empty')
recorded_by=$(echo "$meeting" | jq -r '.recorded_by.name // "Unknown"')

echo "Found: $title ($date)" >&2
echo "Fetching transcript..." >&2

# Fetch transcript
transcript_json=$(curl -sf "$API_BASE/recordings/$RECORDING_ID/transcript" \
  -H "X-Api-Key: $API_KEY")

# Build filename
safe_title=$(echo "$title" | tr '[:upper:]' '[:lower:]' | sed 's/[^a-z0-9]/-/g' | sed 's/--*/-/g' | sed 's/^-//;s/-$//')
filename="${date}--${safe_title}.md"
filepath="$OUTPUT_DIR/$filename"

# Format action items
action_items=$(echo "$meeting" | jq -r '
  if (.action_items // [] | length) > 0 then
    .action_items[] | "- [ ] \(.description)"
  else empty end')

# Format transcript with speaker grouping
formatted_transcript=$(echo "$transcript_json" | jq -r '
  .transcript as $t |
  reduce range(0; $t | length) as $i (
    {prev_speaker: "", lines: [], output: ""};
    if $t[$i].speaker.display_name != .prev_speaker then
      (if .prev_speaker != "" then
        .output + "\n**\(.prev_speaker)** _[\(.lines[0].timestamp)]_\n> " + ([.lines[].text] | join("\n> ")) + "\n"
      else .output end) as $out |
      {prev_speaker: $t[$i].speaker.display_name, lines: [$t[$i]], output: $out}
    else
      .lines += [$t[$i]]
    end
  ) |
  if .prev_speaker != "" then
    .output + "\n**\(.prev_speaker)** _[\(.lines[0].timestamp)]_\n> " + ([.lines[].text] | join("\n> ")) + "\n"
  else .output end')

# Write markdown
{
  echo "# $title"
  echo ""
  echo "| | |"
  echo "|---|---|"
  echo "| **Date** | $date |"
  echo "| **Time** | $start_time – $end_time UTC |"
  echo "| **Recorded by** | $recorded_by |"
  [[ -n "$share_url" ]] && echo "| **Fathom link** | $share_url |"
  echo ""

  if [[ -n "$summary" ]]; then
    echo "## Summary"
    echo ""
    echo "$summary"
    echo ""
  fi

  if [[ -n "$action_items" ]]; then
    echo "## Action Items"
    echo ""
    echo "$action_items"
    echo ""
  fi

  echo "---"
  echo ""
  echo "## Transcript"
  echo ""
  echo "$formatted_transcript"

} > "$filepath"

echo "Saved: $filepath" >&2
echo "$filepath"
