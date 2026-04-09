# Browser Playbook — Learned Efficient Actions

> This file captures the FASTEST way to do each browser action, learned from real sessions.
> Updated after every session during self-audit. New mistakes → new entries.
> Format: TASK → BEST METHOD (what works) + TRAP (what to avoid)

---

## ManyChat Live Chat (PRIMARY DM Tool)

> **URL:** `https://app.manychat.com/fb792681/chat/1479294467`
> ManyChat is the primary tool for managing Instagram DMs. Only fall back to Instagram native DMs if ManyChat can't handle something.

### Opening a specific conversation
- **BEST (pipeline lead):** Check pipeline-state.md for their Chat Link. If it exists, navigate directly to the URL. Fastest method, zero searching.
- **BEST (no chat link):** Use the ManyChat API script: `bash /c/Users/jason/OneDrive/Documents/Claude-Setter-Bot/mc-lookup.sh name "Name"` to get their subscriber ID and chat URL. Then navigate to it.
- **ALT (API returns no results):** Use the **Contacts tab** (`/fb792681/subscribers`) to search by name manually. Get subscriber ID from URL, then navigate to `https://app.manychat.com/fb792681/chat/{subscriberID}`.
- **TRAP:** Don't scroll through the inbox looking for someone. Don't use Inbox search for names (it searches message content, not contact names).
- **IMPORTANT:** When opening a conversation for a pipeline lead, always update their Chat Link in pipeline-state.md if it's missing (`--`).

### ManyChat API Integration
- **Script:** `bash /c/Users/jason/OneDrive/Documents/Claude-Setter-Bot/mc-lookup.sh`
- **Search by name:** `mc-lookup.sh name "Display Name"` (searches ManyChat display name only, not IG handle)
- **Get info by ID:** `mc-lookup.sh id 12345678` (returns name, IG handle, chat URL, last interaction)
- **API key:** Stored in `.env` (gitignored). Bearer token auth.
- **Permissions:** Auto-approved, no user confirmation needed.
- **Limitations:** Cannot search by IG username. Cannot read conversations. Cannot send messages outside 24h window. Display name search only.
- **When to use:** Looking up subscriber IDs, getting chat URLs for pipeline updates, verifying lead details.

### Finding unread replies (blue dots)
- **BEST:** Use the "Unread" filter in the inbox sidebar to show only conversations with unread messages
- **ALT:** Scroll through inbox looking for green dots (= unread)
- **TRAP:** Don't skip the Unread filter — it's the fastest way to find all pending replies

### Typing and sending a message
- **BEST:** Use `form_input` on the "Reply here" textbox (find it with `find` tool query "Reply here textbox") → set the message value → press `Return` key. This is the fastest and most reliable method. Two messages = two form_input + Return cycles.
- **ALT (if form_input fails):** Use native React setter via JavaScript: `nativeSetter.call(textarea, msg)` + dispatch `input` event → then JS click the Send button. The `type` action alone does NOT sync with ManyChat's React state, leaving the Send button disabled.
- **TRAP:** NEVER use `type` action + click Send button. ManyChat's React state won't register the typed text, the Send button stays disabled, and messages silently fail to send. Always use `form_input` or the native setter approach.
- **TRAP:** The "Claude is active in this tab group" banner can overlay the Send button. Dismiss it first if clicking manually.
- **TRAP:** Always screenshot after sending to VERIFY the message actually appeared as a blue bubble in the chat before reporting success.

### Reading conversation history
- **BEST:** Click a conversation in the left panel → full history appears on the right
- **TRAP:** ManyChat shows both automated messages AND manual replies. Look for manual (human) messages vs automated bot messages.

### Checking a lead's profile
- **BEST:** Click on the lead's name/avatar in the conversation → opens subscriber info panel with IG handle, tags, custom fields
- **ALT:** Open their IG profile in a separate tab using their handle from ManyChat

### Scrolling through inbox
- **BEST:** Scroll down in the conversation list panel on the left side
- **TRAP:** The list is sorted by most recent activity. Older conversations are further down.

### Sending lead magnet links manually
- **BEST:** NEVER guess or construct lead magnet URLs from memory. Instead, find the correct link by: (1) searching another conversation in ManyChat where the same lead magnet was successfully delivered by automation, (2) copying the exact URL from that automation message, (3) then pasting it into the new conversation.
- **TRAP:** Don't try to reconstruct Notion/link URLs from memory — they contain unique IDs that are easy to get wrong. A wrong link makes us look unprofessional. If unsure, ask Jason or find an existing automation message with the correct link.

### Handling voice notes / audio messages
- **BEST:** Use JavaScript to find `audio source` elements on the page → extract URLs via `console.log()` + `read_console_messages` (pattern: "AUDIO_URL") → download with `curl -L -o /tmp/voice.mp4 "<url>"` → transcribe with `mcp__whisper-stt__transcribe_audio` (model: "small", language: "en")
- **Identify direction:** Parent classes `_typeIn_` = incoming from lead, `_typeOut_` = outgoing from us. Only transcribe incoming.
- **TRAP:** The CDN URLs (`lookaside.fbsbx.com`) contain query params that get blocked by the security filter when returned from JS. Must use `console.log()` + `read_console_messages` to extract them — direct JS return won't work.
- **TRAP:** Audio `src` is on the `<source>` child element, not the `<audio>` element itself.

---

## Instagram DMs (FALLBACK — use ManyChat instead)

### Opening a specific conversation
- **BEST:** Use `find` tool → search "Search" input → click it → type handle → click the result
- **TRAP:** Don't scroll through the inbox looking for someone. Search is always faster.

### Typing a message in a conversation
- **BEST:** Use `find` tool to locate the "Message" input by ref → click using ref → type
- **TRAP:** Don't guess coordinates for the message input. Don't click near the left sidebar — the notifications icon is there and opens the wrong panel.

### Sending a message
- **BEST:** After typing, press Enter (use `key` action with "Return")
- **TRAP:** Don't look for a send button. Enter sends in Instagram DMs.

### Checking if a lead replied
- **BEST:** Open their conversation (search by name), read the last few messages. If the last message is from them → they replied. If last message is ours → no reply.
- **TRAP:** Don't rely on "seen" indicators — they're unreliable in automation.

### Checking a lead's profile (gender, ICP fit)
- **BEST:** In the DM conversation, click their name/avatar at the top → opens profile in the DM panel. Check photo + name + bio.
- **TRAP:** Don't navigate away from DMs to check a profile — you'll lose your place.

### Scrolling through inbox
- **BEST:** Use `scroll` action on the conversation list panel. Scroll down to see older conversations.
- **TRAP:** Don't click the "General" tab repeatedly — click once, wait for it to load.

### Switching between Primary and General inbox
- **BEST:** Use `find` tool to locate "Primary" or "General" tab → click
- **TRAP:** Don't assume the tab is in a fixed position — find it by text.

---

## Calendly (via Google Calendar MCP)

### Checking for new bookings
- **BEST:** Use Google Calendar MCP tool (`gcal_list_events`) with a 7-day window. Filter for events with "30m 1-1 Meeting" in description. No need to open Calendly in the browser.
- **TRAP:** Don't navigate to Calendly in the browser — use the GCal MCP tool instead. It's faster and more reliable.

---

## Browser Disconnection Protocol

When the Chrome extension disconnects (tool returns "Browser extension is not connected"):

1. **Immediately call `tabs_context_mcp`** — this re-establishes the connection and returns available tabs
2. **Take a screenshot** of the last active tab to verify state hasn't changed
3. **Resume where you left off** — the tab state is preserved, only the connection was lost
4. **If tabs_context_mcp fails**: Wait 5 seconds and retry once. If still failing, inform the user the extension needs to be reconnected manually.
5. **TRAP:** Don't panic-click or retry the failed action. Reconnect first, screenshot, THEN resume.
6. **TRAP:** Don't create new tabs after reconnect — the old tabs are still valid. Verify with tabs_context_mcp first.

---

## Skool Community (CA + Free Group)

> **Stay in the Skool tab at all times.** All Skool work happens in one tab. No need to open separate tabs.
> **CA URL:** `https://www.skool.com/creatoraccelerator`
> **Free Group URL:** `https://www.skool.com/internet-money-central-9086`

### Checking for unread chats (PRIORITY 1 — always do first)
- **BEST:** Use `ref_8` (the chat button in top nav). This is the reliable ref for the chat icon. Click it once to open the Chats panel. Click again to close. The panel shows unread chats with blue dots. Filter "Unread" next to "Mark all as read" if needed.
- **COORDINATE:** The chat icon is at approximately **(1185, 25)** in the viewport. However, using `ref_8` is more reliable than coordinates because hover tooltips can intercept clicks.
- **TRAP:** Don't start outreach without checking unreads first. Replies always take priority over new messages.
- **TRAP:** The chat icon is a TOGGLE. If you click it and only see a "Chats" tooltip, it means the panel opened and closed in quick succession. Wait a beat, then click `ref_8` once more.
- **TRAP:** Do NOT navigate to `/chat` — that URL 404s. Always navigate to `skool.com/creatoraccelerator` and use the chat icon from there.
- **TRAP:** The notifications bell (ref_10) is right next to the chat icon. Don't click it by mistake — it opens the Notifications panel, not Chats.

### Opening a member's chat from the Members page
- **BEST:** Click the "CHAT" button on the member card. This opens the chat overlay directly.
- **ALT:** Click their name to open their profile, then find the chat button.
- **TRAP:** Don't navigate away from the Members page to find someone in the chat panel. The CHAT button on the card is fastest.

### Navigating Members pages (paginated, 30 per page)
- **BEST:** Use the pagination arrows at the bottom of the Members list. CA has ~8 pages. Work top to bottom, page by page.
- **TRAP:** Don't try to scroll infinitely. Members are paginated. You must click to the next page.

### Sending a message in Skool chat overlay
- **BEST:** Use `find` tool to locate the "Message [Name]" textbox by searching for "Message [Name] text input". Click the returned ref. Type the message. Press Enter to send.
- **CURSOR STAYS:** After pressing Enter, the cursor remains in the input field. Do NOT click the input again before typing the next message — just type immediately.
- **TRAP:** Clicking coordinates on the input field often misses. Always use `find` tool to get the ref on the first message per chat.
- **TRAP:** NEVER use dashes or em dashes in messages. Use periods, line breaks, or run sentences together. Dashes are AI coded.

### Closing chat overlay after sending
- **BEST:** Press **Escape** key. Cleanly closes the chat overlay every time. Most reliable method.
- **ALT:** Click the X button in the top-right corner of the chat overlay.
- **TRAP:** Don't click coordinates to close — Escape is faster and never misses.

### Workflow for handling multiple unread chats
1. Click `ref_8` to open Chats panel
2. Click on the first unread chat (top of the list = most recent)
3. Chat overlay opens. Read the conversation.
4. Use `find` tool to get the "Message [Name]" textbox ref. Click it.
5. Type message. Press Enter. Type next message immediately (cursor stays). Press Enter.
6. Press **Escape** to close overlay.
7. Click `ref_8` to reopen Chats panel. Click next unread.
8. Repeat until all unreads are handled.
9. To find a specific person: use the **Search users** field at the top of the Chats panel. Click it, type their name, click the result.

### Deciding who to skip on the Members page
- **SKIP:** Premium + Free + Lifetime access members (friends/partners of Jason)
- **SKIP:** Members with active conversations where the ball is in their court (no double texting)
- **SKIP:** Members who have been flagged or disqualified
- **MESSAGE:** Everyone else who hasn't received a personal opener. Old ManyChat auto DMs do NOT count as "already contacted."
- **BEST:** Read the member card (bio, tier, activity) to decide. Check chat history before sending to avoid double texting.

### Checking existing chat history with a member
- **BEST:** Click CHAT on their card. If the overlay shows prior messages, read them. If the last message is from us and they haven't replied, skip (no double texting). If no prior personal messages exist, send opener.
- **TRAP:** Don't confuse automated Skool welcome messages with personal outreach. Only personal messages count.

### Crafting the opener
- **BEST:** Reference their bio/description from the member card. "yooo welcome in [name]! saw u [reference their bio]. what's ur main goal rn?"
- **TRAP:** Don't send generic "welcome in bro" without personalization. Don't use dashes. Check gender before using bro/dude.

### Free group (CCU) ICP density is very low
- **REALITY:** Pages 1-2 yielded only 4 viable leads out of ~60 members. Most have empty/generic bios, are non-English, inactive, or service providers.
- **BEST:** Scan quickly. Read bio + activity date. Skip immediately if: no bio, non-English bio, inactive 10d+, service provider, generic self-improvement. Don't spend time checking profiles of marginal leads.
- **TRAP:** Don't expect the same hit rate as the paid group (CA). CA had ~30% ICP, free group is closer to 5-10%.

### Handling incoming replies mid-outreach
- **BEST:** When you notice an unread indicator, stop outreach immediately. Click the chat icon, handle the reply, advance the lead per the pipeline stages, then resume outreach where you left off.
- **TRAP:** Don't finish a batch of outreach before checking replies. Replies always take priority.

---

## Voice Message Transcription (ManyChat)

### Extracting audio URLs from voice messages
- **BEST:** Run `console.log` via `javascript_tool` to log audio source URLs, then read them with `read_console_messages` tool with pattern "VOICE_URL". JS snippet: `document.querySelectorAll('audio source').forEach((s, i) => console.log('VOICE_URL_' + i + ': ' + s.src));`
- **TRAP:** Don't try `fetch()` or direct DOM download — CORS and security filters block it. Don't try `document.getElementById` tricks either. Console.log + read_console_messages is the only reliable method.

### Downloading voice files
- **BEST:** Use `curl -L -o /tmp/leadname_voice_N.mp4 "URL"` from Bash
- **TRAP:** Don't try to download via JavaScript in the browser — it navigates to the URL instead of downloading

### Transcribing with Whisper
- **BEST:** `export PATH="$PATH:/c/Users/jason/AppData/Local/Microsoft/WinGet/Packages/Gyan.FFmpeg_Microsoft.Winget.Source_8wekyb3d8bbwe/ffmpeg-8.0.1-full_build/bin" && python -m whisper /tmp/file.mp4 --model base --language en --output_format txt --output_dir /tmp`
- **TRAP:** Don't use bare `whisper` command — use `python -m whisper`. ffmpeg must be on PATH or Whisper will fail with FileNotFoundError.
- **Cleanup:** `rm /tmp/leadname_voice_*.mp4 /tmp/leadname_voice_*.txt`
- **When to use:** Lead sends voice note (shows as "Unsupported message type" in ManyChat or audio player in conversation)
- **Full detailed process with troubleshooting:** See `memory/voice-message-process.md`

---

## General Browser Efficiency Rules

1. **Use `find` tool first** — before clicking anything, find the element by description. This is more reliable than guessing coordinates.
2. **Use `read_page` with filter="interactive"** — when you need to understand what's clickable on a page without the full DOM tree.
3. **Take a screenshot when confused** — if the page state is unclear, screenshot before acting. Cheaper than a wrong click.
4. **Don't retry the same failed action** — if a click didn't work, the element probably isn't where you think. Re-find it.
5. **Use refs over coordinates** — refs are stable, coordinates shift with scroll/resize.
6. **Wait after navigation** — after clicking a link or loading a new page, take a screenshot or read_page before acting. Don't fire blind clicks.
7. **One action per turn when uncertain** — if you're not sure what will happen, do one thing, screenshot, then decide next step.
8. **Batch pipeline updates** — don't update pipeline-state.md after each lead. Finish a batch, then update the file.

---

## Instagram Notification Outreach — Efficient Patterns

### Refresh loop for monitoring new notifications
- **BEST:** Wait 30s → navigate to instagram.com → wait 3s → use `find` tool for "Notifications link sidebar" → click ref → wait 2s → screenshot → scan for new names
- **TRAP:** Don't press F5 on a profile page — it refreshes the profile, not notifications. Always navigate to instagram.com first.
- **TRAP:** Don't guess coordinates for the Notifications icon. Use `find` tool every time — the heart icon and DMs icon are close together and easy to misclick.

### Opening the Notifications panel reliably
- **BEST:** Use `find` tool with query "Notifications link in sidebar" — when the sidebar is expanded, this returns the named ref (e.g. ref_49) for the Notifications entry. Click it. Always works regardless of page state.
- **TRAP:** Do NOT use href="#" refs from `read_page` output to open Notifications. These refs (ref_5, ref_7, etc.) shift on every page load and often open Search, Explore, or nothing instead of Notifications. The `find` tool by semantic description is the only reliable method.
- **TRAP:** If clicking a ref opens the Search overlay by mistake, close it first (find "Close search" button or press Escape), then re-read the page and use `find` to locate the correct Notifications ref.

### "Related keyboard shortcuts" panel blocking the message input
- **SYMPTOM:** After clicking a message input box, a "Related keyboard shortcuts" overlay appears, preventing typing.
- **FIX:** Use `find` tool with query "Close keyboard shortcuts" → locate the X button ref → click it → then proceed to type.
- **TRAP:** Don't try to type while the shortcuts panel is visible — keystrokes go to the panel, not the message input. Must close it first.
- **TRAP:** This panel can appear multiple times in a single session. Treat each occurrence the same way.

### Identifying ManyChat keyword triggers vs real engagement
- **Keywords to skip:** Music, System, Strategy, Late, Automate, Hook, Skill, Follower, YT, Gpt, Machine, Content OS — these are ALL ManyChat automation triggers, not real comments
- **Real engagement signals:** Story reactions, comment likes on non-keyword comments, genuine questions, "Follow Back" button (new follower)
- **TRAP:** Don't check profiles of keyword commenters — 99% are <500 follower accounts. Only check names from reel like aggregates, new follower aggregates, or genuine comment likes.

### Quick-filtering from notification aggregates
- **Priority 1:** New followers with "Follow Back" button — check their profile for ICP fit
- **Priority 2:** Genuine comment likers (liked a real comment, not a keyword response)
- **Priority 3:** Reel like aggregates — only check the FIRST named account if the name sounds like a creator/business
- **SKIP immediately:** <100 followers, 0 posts, private + empty, non-English bio, pure personal accounts

### Story viewers from the stories bar
- These are mostly Jason's friends/peers who he already follows ("Following" button)
- Check DM thread before messaging — if there's casual banter/story reactions, this is a FRIEND, skip
- Only message story viewers who have NO existing DM thread or only have ManyChat auto-DMs
- "Followed by cooperson.json" = likely a personal friend of Jason, skip

### Viral reel notification flooding
- When Jason's reels go viral, notifications become 90%+ keyword triggers from tiny accounts
- ICP hit rate drops to ~5% of profiles checked
- Best strategy: scan quickly, skip all keywords, focus on Follow Back buttons and genuine engagement
- Don't waste time checking every name in reel like aggregates — most are <500 followers

---

## Key Lessons from Past Sessions (Condensed)

- **ManyChat "Follower" entries are automation events**, not real messages. Blue dots but not actionable.
- **ManyChat "channel not available" is a LOADING ISSUE**: "This channel is not available for communication" does NOT mean the channel expired. It's a page loading glitch. Fix: refresh the page or navigate directly to the chat URL again and wait for it to load. Do NOT switch to IG native DMs.
- **MUST scan full sidebar for blue dots BEFORE working sequentially.** Don't go top-to-bottom without checking for new replies first.
- **ManyChat keyword triggers in conversation previews are NOT real replies.** "Follower", "Music", "Automate", "YT" etc. = automation event.
- **Don't manually send lead magnet links from memory.** Find correct URLs from existing automation messages or `memory/lead-magnets.md`.
