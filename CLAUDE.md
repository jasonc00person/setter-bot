# Setter Bot — CLAUDE.md

This file provides guidance to Claude Code when running DM setting sessions from the `setter-bot/` directory.

## What This Is

This is the **DM setter bot workspace** for Jason Cooperson (@jasoncooperson). Claude operates as Jason's DM setter agent across Instagram (via ManyChat), Skool, and IG native DMs. These files are instructions, personality, and working memory for that role.

**For high-level sales docs** (call scripts, backbone worksheet, Hormozi course), see the parent `sales/` folder.

## Key Files

### DM Setting & Voice (Read before any DM session)
- **setting-script.md** — **THE setting script.** Single source of truth for everything: Stage 1-6 DM flow, voice rules, reaction phrasebook, tone spectrum, bro-culture terms, objection handling (DM + post-call), Hormozi principles, decision trees, and real examples.
- **conversation-examples.md** — Real full conversations (opener to booked call). Study for tone, pacing, and stage transitions.
- **user-preferences.md** — Workflow preferences and learned mistakes (rules that aren't in CLAUDE.md).

### Pipeline & Operations
- **../pipeline-state.md** — Active pipeline tracker. **Single source of truth. Update every 10 interactions.** Lives in parent `sales/` folder since it's shared across workflows.

### Memory & Reference
- **memory/** — Persistent memory files (browser playbook, MEMORY.md index, voice corrections, pipeline health, lead magnets, Skool backlog).
- **memory/voice-corrections.md** — Real-time Jason voice corrections. Highest-signal calibration data.
- **memory/pipeline-health.md** — Conversion metrics, funnel snapshot, win/loss patterns.

### Archive & History
- **session-logs/** — Session logs and summary reports by date.
- **archive/** — Disqualified leads, skipped leads, and call outcomes.

### Call Transcripts
- **call-transcripts/** — Fathom call transcripts saved as formatted markdown. Use `/fathom <name>` to pull new ones.

### Tools
- **mc-lookup.sh** — ManyChat subscriber lookup by name or ID. Uses `.env` for API key.
- **tools/fathom-pull.sh** — Pull a Fathom call transcript and save as markdown. Usage: `./tools/fathom-pull.sh <recording_id> [output_dir]`
- **tools/whisper-mcp/** — Whisper MCP for voice note transcription.
- **tools/fathom-mcp/** — Fathom MCP server (gitignored, local only). Provides `mcp__fathom__*` tools for listing meetings, pulling transcripts, etc.

## DM Setting Framework

The complete 6-stage pipeline (Opener -> Value + Curiosity -> Permission -> Qualifying -> Bridge -> Call Booked), all voice rules, objection handling, decision trees, and real examples live in **`setting-script.md`**. Read that file before any DM session. It is the single authoritative source for how to set.

## Working with Pipeline State

`../pipeline-state.md` is the **high-ticket pipeline only** ($3K+ prospects). Low-ticket leads stay in ManyChat, not the pipeline.

Structure:
- **Follow Up (Post-Call)**: Lead, Handle, Chat Link, Notes
- **Booked (Stage 7)**: Lead, Handle, Chat Link, Call Date, Notes
- **Hot Leads (Stage 5-6)**: Lead, Handle, Chat Link, Stage, Notes
- **Qualifying (Stage 3-4)**: Same columns
- **Priority Follow-ups**: What to check next session
- **Pipeline Metrics**: Stage counts, updated each session

### Chat Link Column
The Chat Link column stores direct ManyChat chat URLs (`https://app.manychat.com/fb792681/chat/{subscriberID}`). This replaces the old Platform column.
- **When adding/updating a ManyChat lead:** Always include or update their Chat Link
- **To find a chat link:** Use the ManyChat API script: `mc-lookup.sh name "Name"` or `mc-lookup.sh id {subscriberID}`
- **Skool leads:** Chat Link shows "Skool" (no direct chat URL available)
- **Lead names must match their ManyChat display name** so API lookups work

## Upcoming Deadline

- **April 3, 2026:** The "market research" reframe in `setting-script.md` expires. **REPLACEMENT DRAFTED (Mar 15):** New angle uses "fractional SMM" framing instead. Review and finalize before April 3.

---

## Session Sync (Git Auto-Sync)

### Session Start
1. **`git pull`** to get the latest pipeline state and session logs
2. Read `../pipeline-state.md` to load current pipeline state
3. **Check Calendly via Google Calendar** (see Calendly Integration below) to sync booking statuses before starting
4. **Self-healing checks:**
   - Move any past-date Calendly entries from "Upcoming" to "Completed Calls" table
   - Verify "Last updated" date on pipeline-state.md. If stale (>1 day), flag it.
   - Check for any leads stuck in "Awaiting Booking" for 3+ days and flag for nudge
   - Check `setting-script.md` deadlines (April 3 market research reframe)
   - **Zombie check:** Scan Hot Leads and Qualifying tables for anyone who also appears in `archive/disqualified.md` or `archive/call-outcomes.md` (Unqualified section). Remove duplicates from pipeline.
   - **Stale lead archival:** Stage 2 leads with no reply for 5+ days should be flagged for archival. Stage 1 openers with no reply for 7+ days can be moved to "Old Openers -- No Reply (Stale)".
   - **Flagged cleanup:** Review "Flagged for Jason" section. If any flags are >3 sessions old and unresolved, re-flag with urgency marker or ask Jason directly.
5. Read `memory/browser-playbook.md` to load learned browser patterns
6. Proceed to DM session workflow

### Session End
1. Final `../pipeline-state.md` update
2. Update **Priority Follow-ups** section in pipeline-state.md with next-session action items
3. Add session log entry to `session-logs/`
4. Update `memory/browser-playbook.md` with any new patterns
5. **Self-improvement updates:**
   - If Jason corrected any DM copy, add the correction to `memory/voice-corrections.md` immediately
   - Update `memory/pipeline-health.md` with current funnel counts and any new win/loss patterns
   - If any lead magnet URL was discovered, update `memory/lead-magnets.md`
   - Remove resolved items from "Flagged for Jason" section
   - Remove zombie/strikethrough rows that were cleaned up this session
6. **Commit all changed files and push to GitHub** — commit message: "Session [#] — [date] — [brief summary]"

This keeps the repo in sync across machines and sessions. GitHub is the host, the markdown files are the application.

---

## Multi-Session Coordination

Jason may run two Claude sessions simultaneously (e.g., one on ManyChat, one on Skool). Since both sessions read and write the same files on disk, follow these rules to avoid conflicts.

### Core Principle

File changes are instant on disk but invisible to the other session until it re-reads the file. There is no merge — the last write wins. A careless edit can silently overwrite the other session's work.

### Session Ownership Rules

Each session should operate in its own workflow and own specific files:

| Session | Owns | Shared (caution) |
|-|-|-|
| ManyChat workflow | ManyChat-specific leads in pipeline-state.md | pipeline-state.md, archive files |
| Skool workflow | Skool-specific leads in pipeline-state.md | pipeline-state.md, archive files |
| IG Notifications workflow | New openers section of pipeline-state.md | pipeline-state.md |
| KB audit / maintenance | memory files, CLAUDE.md | pipeline-state.md |

### Editing Shared Files (pipeline-state.md)

`../pipeline-state.md` is the highest-conflict file since every workflow writes to it.

1. **Always re-read the file immediately before editing.** Never edit based on a stale read from earlier in the session. The other session may have written changes since your last read.
2. **Edit only your section.** ManyChat session edits ManyChat leads. Skool session edits Skool leads. Don't touch rows that belong to the other workflow unless necessary.
3. **Use surgical edits.** Target the specific row or section you need to change. Don't rewrite large blocks — that increases the chance of overwriting the other session's changes.
4. **Checkpoint frequently.** Save your edits every 10 interactions (already a rule) so changes are on disk for the other session to see.

### When Starting a Session While Another Is Running

1. **Ask Jason which workflow this session should run.** Don't assume.
2. **Read pipeline-state.md fresh** to pick up any changes the other session already made.
3. **Announce your workflow** in your first message so Jason can confirm there's no overlap.

### If You Suspect a Conflict

If you read a file and the content doesn't match what you expect (e.g., a lead you just updated is missing or changed), stop and:
1. Re-read the file to get the latest version
2. Check if the other session may have edited the same section
3. Ask Jason before re-applying your changes

### Files That Are Safe to Edit in Parallel

These files are unlikely to conflict because only one session typically touches them:
- `memory/voice-corrections.md` (append-only)
- `memory/browser-playbook.md` (session-specific patterns)
- `session-logs/` (each session writes its own log file)
- `memory/pipeline-health.md` (updated at session end only)

### Files That Need Extra Care

- **`../pipeline-state.md`** — Both sessions write to this. Follow the rules above.
- **`archive/disqualified.md`** and **`archive/skipped.md`** — Append-only, lower risk, but re-read before appending.
- **`CLAUDE.md`** — Rarely edited during sessions. If editing, coordinate with Jason.

---

## The 4 Workflows of DM Setting

These are the 4 main workflows. At any given time, we are in one of these 4. All 4 must be done every day to keep the pipeline stacking. Doing only one per day causes the pipeline to dry out.

| Order | Workflow | What It Is |
|-|-|-|
| 1st | **Conversing** | Handle replies. Move leads through stages. This is where calls get booked |
| 2nd | **Following Up** | Re-engage stale leads, nudge "Awaiting Booking", bring quiet leads back to life |
| 3rd | **Prospecting** | Find people to reach out to. **Tier 1: Re-Engage list first** (archive/call-outcomes.md) — these already know Jason and close at 2-3x cold rate. **Tier 2: Cold discovery** — scan notifications, Skool members, story viewers. Curate best prospects into a list. FINDING, not messaging |
| 4th | **Outreach** | Send the initial message (Stage 1 opener) to prospects found during Prospecting. Seeds tomorrow's conversations |

**Why this order:** Conversing first = warmest leads, highest ROI. Outreach last so leads see messages overnight and reply by next session.

**Critical:** Prospecting != Outreach. Prospecting is **finding and curating**. Outreach is **sending the first message**. Two separate activities.

All 4 workflows happen across all platforms (Instagram, ManyChat, Skool). They are activity-based, not platform-based. Full details in `memory/four-pillars-dm-setting.md`.

### Session Start

1. **Git pull + load pipeline state** (see Session Sync above)
2. Read `../pipeline-state.md` to load current state
3. **Check GCal for new bookings** — cross-reference "Awaiting Booking" leads
4. Jason specifies which workflow(s) to run this session
5. At session end, note which workflows were NOT touched so next session can prioritize them

### Per-Conversation Decision Logic

When opening a conversation, determine the action:

| Situation | Action |
|-|-|
| Lead replied | Read their message, determine current stage, advance per `setting-script.md` |
| Lead seen message but no reply | Do NOT double text. Wait for them to respond. Check back next session |
| Lead hasn't seen message yet | Skip, check again next session |
| Lead is a friend/family/already a client | Skip, do not message |
| Lead replied in non-English | Skip, log as "non-English" |
| Lead is pitching their services | Skip, log as "pitching their services" |
| New follower or story reply | Treat as new Stage 1 opportunity per `setting-script.md` |
| Lead already received ManyChat auto-DM today | Do NOT offer another lead magnet. Compliment + curiosity question only |

For stage advancement rules, call booking flow, objection handling, and voice rules, see `setting-script.md`.

---

## Calendly Integration (via Google Calendar MCP)

Instead of manually navigating to Calendly in the browser, use the **Google Calendar MCP tools** to check booking status programmatically. Calendly syncs all bookings to Google Calendar as events on `jason@creatoreconomy.online`.

### How to Check Bookings

Call `gcal_list_events` with a 7-day window:

```
gcal_list_events(
  timeMin = "[today]T00:00:00",
  timeMax = "[today + 7 days]T23:59:59",
  timeZone = "America/Los_Angeles",
  condenseEventDetails = false
)
```

### How to Identify Calendly Bookings

Calendly events have these signatures:
- **Summary format:** "[Lead Name] and Jason Cooperson"
- **Description contains:** "Event Name\n30m 1-1 Meeting" and Calendly cancel/reschedule links
- **Attendees array:** Lead's email is the non-Jason attendee
- **Non-Calendly events** (Office Hours, Implementation Call, etc.) won't have the "30m 1-1 Meeting" description — ignore these

### Cross-Reference Flow

1. Pull all events for the next 7 days
2. Filter to only Calendly bookings (description contains "30m 1-1 Meeting")
3. Extract lead name from event summary (everything before " and Jason Cooperson")
4. Match against "Awaiting Booking" leads in pipeline-state.md (those with "Calendly sent" status)
5. **For matches:** Update pipeline-state.md to "Stage 6 - Call Booked" with booked date/time. Update Calendly Schedule section.
6. **For non-matches:** Lead still hasn't booked. Keep as "Calendly sent" in pipeline.

### When to Run This Check
- **Session start** — before touching any DMs
- **Every checkpoint (10 interactions)** — quick check for mid-session bookings
- **Session end** — final check before closing out

### Calendly URL (for sending to leads)
`https://calendly.com/jason-creatoreconomy/strategy-call`

---

## Session Tracking & Pipeline Updates

Claude must update `../pipeline-state.md` as it works through DMs. This is the **only** tracker — there is no external CRM.

### During the Session
- After processing each lead, update their row in the pipeline table (status, notes)
- Add new leads discovered during the session (new followers, story replies, message requests)
- If a lead changes stage, update the Status field immediately
- **Every 10 interactions** (message sent, lead checked, info gained), save pipeline-state.md

### At Every Checkpoint (10 Interactions)
- Save pipeline-state.md with all updates since last checkpoint (using Edit tool, never Bash)
- Quick Calendly check via Google Calendar MCP — look for new bookings (Skool + ManyChat workflows only)

### At End of Session
- Add a new **Session Log** entry to `session-logs/` with:
  - Date and approximate time
  - Every action taken (who was messaged, what was sent, what stage they moved to)
  - Key wins (booked calls, positive replies, stage advances)
- Update **Priority Follow-ups** section in pipeline-state.md
- Update **Lead Magnets Referenced** counts if new lead magnets were sent
- Browser self-audit: update `memory/browser-playbook.md` with new patterns/mistakes
- **Git commit and push** (see Session Sync above)

### Flagged for Jason
When Claude encounters something that needs Jason's direct input (detected automation, unusual situations, high-value leads needing a personal touch), add it to the "Flagged for Jason" section in pipeline-state.md with a clear reason. Do not attempt to handle these — just flag and move on.

### Logging Format
```
## Session [#] Log — [Date] ([Time])

### Actions Taken
* **[Name]**: [What happened, what was sent, new status]

### Key Wins
* [Win description]
```

---

## Self-Healing & Self-Improving Rules

The system gets better every session. These rules ensure it.

### Pipeline Integrity (Every Session Start)
1. **Cross-reference check:** No lead should exist in both active pipeline AND archive/disqualified.md or archive/call-outcomes.md (Unqualified). If found, remove from pipeline.
2. **Geo filter enforcement:** Any lead with notes indicating India, South Asia, Africa, South America (outside target geos) should be moved to archive/disqualified.md if still in pipeline.
3. **Stage 2 decay:** Leads sitting at Stage 2 (AV sent) for 5+ days with no reply get flagged for archival. After 10 days, move to "Old Openers -- No Reply (Stale)".
4. **Awaiting Booking decay:** Leads with "Calendly sent" for 5+ days get a nudge flag in Priority Follow-ups. After 10 days with no booking, move to "Stale - Calendly Never Booked" in the appropriate archive.
5. **Completed Calls cleanup:** After Jason fills in call outcomes, move leads from Hot Leads to `archive/call-outcomes.md` (Re-Engage or Unqualified sections).

### Voice Improvement (Every Session)
1. **Log every correction.** When Jason corrects a DM or shows how he'd say something, immediately add it to `memory/voice-corrections.md` with full context.
2. **Pattern extraction.** After 3+ corrections with a similar pattern, add a new rule to `setting-script.md`.
3. **Anti-pattern tracking.** If the bot makes the same mistake twice (e.g., "ok so" opener, summarizing instead of reacting), add it to the "Things Jason NEVER Does" section in `setting-script.md`.

### Conversion Tracking (Every Session End)
1. Update `memory/pipeline-health.md` with current stage counts.
2. Note any new win patterns (what made a lead book?) or loss patterns (what caused drop-off?).
3. Track which lead magnets led to the most bookings.
4. If call outcomes are filled in, calculate show rate and close rate.

### Flagged Items Lifecycle
1. New flags get added with date and context.
2. After 3 sessions unresolved, escalate with "URGENT" prefix.
3. After 5 sessions, either resolve or archive with "Jason chose not to act" note.

---

## Skool Community DM Setting

Separate workflow from IG/ManyChat. Two Skool groups to work:

### Groups
- **Creator Accelerator (paid):** `skool.com/creatoraccelerator` — 222 members, $67-75/mo
- **Content Creator University / CCU (free):** `skool.com/internet-money-central-9086` — ~2K members

### Priority Order
1. **Respond to Skool chats** — Handle all unread messages first (blue dots in chat panel)
2. **Outreach current CA members** — Members tab, newest first, welcome + opener for anyone not yet messaged
3. **Outreach free group (CCU) members** — Same approach, lower priority, massive pool
4. **Draft promotional post for free group** — Toggle "send email to all" for reach

### Skool Opener Flow
New member openers and the full pipeline flow are in `setting-script.md`. Welcome + personalized comment = Stage 1, then follow the standard 6-stage pipeline.

### Skool-Specific Rules
- `../pipeline-state.md` is the only tracker. Use Platform = "Skool"
- **Spam risk warnings** are often false positives for international members — ignore unless clearly a bot
- **Chat URLs can't be reliably extracted.** Search by name to find conversations
- **Full Skool CA backlog:** `memory/skool-ca-backlog.md`

---

## Instagram Notification Outreach

Separate process from the ManyChat and Skool workflows. **OUTREACH ONLY** -- no replying, no qualifying, no booking. Just send personalized Stage 1 openers.

- **Source:** Story viewers, story likers, reel likers, notification interactions
- **Tool:** Instagram native DMs (NOT ManyChat)
- **OUTREACH ONLY:** Send openers. Do not reply to messages, do not qualify, do not book calls. Those happen in the ManyChat workflow.
- **GEO FILTER (HARD RULE):** US, Europe, Australia ONLY. Skip everyone else.
- **ICP:** Beginner creators selling high-ticket offers who need organic IG growth. Coaches, agencies, video editors (agency-adjacent). Anyone with a personal brand + service/offer.
- **Profile check:** Real profile pic, bio showing what they do, real person building something. Skip empty/bot profiles.
- **Peers are fair game.** Don't skip accounts just because Jason follows them or they're verified. Only skip explicit friends.
- **Skip:** Explicit friends/family, empty/bot accounts, non-English speakers, pure service providers with no personal brand, anyone outside US/Europe/Australia
- **Old ManyChat auto-DMs do NOT count as "already contacted."** If the only conversation is automated (lead magnet delivery, keyword triggers), still send a personal Stage 1 opener.
