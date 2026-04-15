---
name: fathom
description: Pull a Fathom sales call transcript and save as formatted markdown. Use when Jason asks to pull, review, or analyze a call.
---

# Fathom Call Pull

Pull a sales call transcript from Fathom and save it as formatted markdown.

## When to Use

Use `/fathom` when Jason asks to pull, review, or analyze a sales call. This skill handles finding the call, pulling the transcript + summary, and saving it locally.

## Usage

```
/fathom <name>           — Search for a call by participant name, pull transcript
/fathom <recording_id>   — Pull a specific call by Fathom recording ID
/fathom recent           — List the 10 most recent calls
/fathom recent 20        — List the 20 most recent calls
```

## How It Works

### Finding a call by name

1. Use the Fathom MCP tool `mcp__fathom__list_meetings` to list recent meetings
2. If the call isn't in the first page, paginate backwards using `created_before` until found
3. Match by participant name in the meeting title (case-insensitive)

### Pulling the transcript

1. Once the recording ID is known, run the pull script:
   ```bash
   ./tools/fathom-pull.sh <recording_id> call-transcripts/
   ```
2. This saves a formatted markdown file to `call-transcripts/<date>--<title>.md` containing:
   - Meeting metadata (date, time, recorded by, Fathom share link)
   - AI-generated summary from Fathom
   - Action items
   - Full transcript with speaker labels and timestamps

### If the script fails

Fall back to using the MCP tools directly:
1. `mcp__fathom__list_meetings` to find the call
2. `mcp__fathom__get_transcript` with the recording_id to get the raw transcript
3. Manually format and save to `call-transcripts/`

## Output Location

All transcripts go in `call-transcripts/` at the project root. Filename format: `YYYY-MM-DD--slugified-title.md`

## Dependencies

- Fathom MCP server configured in `.mcp.json` with valid API key
- `jq` and `curl` available on the system
- The pull script at `tools/fathom-pull.sh`
