---
name: instagram
description: Navigate Instagram native DMs, run notification outreach, check profiles, and send openers. Use for IG notification outreach and native DM fallback.
---

# Instagram — DM Setting Skill

Navigate Instagram native DMs for notification outreach, profile checking, and sending Stage 1 openers. This is primarily for **outreach** — conversing happens in ManyChat.

## When to Use

- **Notification outreach workflow:** Scanning story viewers, reel likers, new followers for ICP prospects, then sending Stage 1 openers via native IG DMs
- **Fallback DMs:** When ManyChat can't handle something (rare)
- **Profile checking:** Verifying ICP fit before outreach

**Not for:** Replying to leads, qualifying, or booking calls. Those happen in ManyChat.

## Key URLs

| Page | URL |
|------|-----|
| Instagram Home | `https://www.instagram.com/` |
| DMs Inbox | `https://www.instagram.com/direct/inbox/` |
| Notifications | Use sidebar — no direct URL |
| Profile (by handle) | `https://www.instagram.com/{handle}/` |

## Notification Outreach Workflow

### Opening the Notifications Panel

1. Navigate to `https://www.instagram.com/`
2. Use `find` tool with query `"Notifications link in sidebar"` to get the ref
3. Click the ref to open the Notifications panel

**Never** use href="#" refs from `read_page` output — they shift on every page load and often open Search or Explore instead. The `find` tool by semantic description is the only reliable method.

If clicking a ref opens Search by mistake: press Escape to close it, re-read the page, use `find` again.

### Scanning Notifications

**Priority order:**
1. **New followers** with "Follow Back" button — check profile for ICP fit
2. **Genuine comment likers** (liked a real comment, not a keyword response)
3. **Reel like aggregates** — only check the FIRST named account if name sounds like a creator/business

**Skip immediately:**
- ManyChat keyword triggers: `Follower`, `Music`, `System`, `Strategy`, `Late`, `Automate`, `Hook`, `Skill`, `YT`, `Gpt`, `Machine`, `Content OS`
- Accounts with <100 followers, 0 posts, private + empty, non-English bio
- Pure personal accounts with no business/creator signals

### Refreshing Notifications

Wait 30s between refreshes. Navigate to `instagram.com`, wait 3s, use `find` for the Notifications link, click, wait 2s, screenshot, scan for new names.

Don't press F5 on a profile page — it refreshes the profile, not notifications.

## Profile Checking (ICP Qualification)

### GEO FILTER (HARD RULE)
**US, Europe, Australia ONLY.** Skip everyone else. No exceptions.

### ICP Signals (Good)
- Personal brand + service/offer (coaching, agency, video editing)
- Bio mentions what they do and who they serve
- Real profile pic, real person building something
- Beginner creators selling high-ticket offers who need organic IG growth
- Peers are fair game (don't skip just because Jason follows them or they're verified)

### Skip Signals
- Empty/bot/fake profiles
- Non-English speakers
- Pure service providers with no personal brand
- Friends/family of Jason
- Outside US/Europe/Australia

### How to Check a Profile
- **From notifications:** Click their name/avatar to open their profile
- **From DMs:** Click their name at the top of the conversation (stays in DM panel, doesn't navigate away)
- **Direct:** Navigate to `https://www.instagram.com/{handle}/`

## Sending DMs (Stage 1 Openers)

### Opening a DM Conversation

1. Navigate to `https://www.instagram.com/direct/inbox/`
2. Use `find` tool to locate the "Search" input — click it
3. Type the handle or name — click the result

Or from their profile, click the "Message" button.

### Typing and Sending

1. Use `find` tool to locate the "Message" input by ref
2. Click the ref
3. Type the message
4. Press **Enter** (Return key) to send — there is no send button in IG DMs

**"Related keyboard shortcuts" panel:** If this overlay appears after clicking the message input, use `find` tool for `"Close keyboard shortcuts"`, click the X, then proceed to type. This can appear multiple times per session.

### What to Send

**For prospects with NO prior conversation:**
> Compliment + curiosity question (Stage 1 opener per setting-script.md)

**For prospects who already received ManyChat auto-DM:**
> Old ManyChat auto-DMs do NOT count as "already contacted." Send a personal Stage 1 opener.

**OUTREACH ONLY:** Send openers. Do not reply to messages, do not qualify, do not book calls from IG native DMs. Those happen in ManyChat.

## Inbox Navigation

### Primary vs General Tab
Use `find` tool to locate "Primary" or "General" tab by text. Don't assume fixed positions.

### Checking if a Lead Replied
Open their conversation (search by name). If the last message is from them = they replied. If last message is ours = no reply. Don't rely on "seen" indicators.

### Scrolling Through Inbox
Use `scroll` action on the conversation list panel. Sorted by most recent activity.

## Story Viewers

- Mostly Jason's friends/peers ("Following" button = likely a friend)
- Check DM thread before messaging — if there's casual banter/story reactions, this is a **friend**, skip
- Only message story viewers with NO existing DM thread or only ManyChat auto-DMs
- "Followed by cooperson.json" = likely personal friend, skip

## Viral Reel Notification Flooding

When reels go viral, notifications become 90%+ keyword triggers from tiny accounts. ICP hit rate drops to ~5%. Scan quickly, skip all keywords, focus on Follow Back buttons and genuine engagement. Don't waste time checking every name in reel like aggregates.

## Browser Tips

- **Use `find` tool first** before clicking anything — more reliable than guessing coordinates
- **Use refs over coordinates** — refs are stable, coordinates shift with scroll/resize
- **Screenshot when confused** — cheaper than a wrong click
- **Don't retry same failed action** — re-find the element instead
- **Wait after navigation** — screenshot or read_page before acting on a new page
