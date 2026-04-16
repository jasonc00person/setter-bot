---
name: instagram
description: Navigate Instagram native DMs, run notification outreach, check profiles, and send openers. Use for IG notification outreach and native DM fallback.
---

# Instagram — DM Setting Skill

Navigate Instagram for prospecting, profile checking, and sending Stage 1 openers. This skill covers two workflows: **Prospecting** (finding ICP) and **Outreach** (sending openers). Conversing/qualifying happens in ManyChat.

## When to Use

- **Prospecting workflow:** Scanning post comments, notifications, followers for ICP prospects. Build a curated prospect list
- **Outreach workflow:** Sending Stage 1 openers to prospects from the curated list via native IG DMs
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
| Jason's profile | `https://www.instagram.com/jasoncooperson/` |

---

## Prospecting Workflow (Finding ICP)

The goal is to build a curated list of 20+ qualified prospects from Jason's audience, saved to `prospect-list.md`. Prospecting is FINDING, not messaging.

### Best Sources (In Priority Order)

1. **Post comments on business/AI/strategy posts** — People who comment (even keyword triggers) showed intent. The PERSON matters, not what they typed. Check every commenter's profile
2. **Notification "Follow Back" buttons** — New followers who aren't following yet = fresh warm leads
3. **"Suggested for you" sections on profiles** — Instagram clusters similar accounts together. When checking one prospect's profile, note the suggested accounts too — they reveal entire network clusters of ICP
4. **Reel like aggregates (first named account only)** — Instagram puts the most relevant/followed account first

### Worst Sources (Avoid)

- **Notifications during viral reels** — 90%+ keyword triggers from tiny accounts. ICP hit rate ~5%. Don't waste time here
- **Recent followers list** — Flooded with viral reel followers (mostly Indian/low quality). Too much noise
- **Story viewers** — Mostly friends/peers

### How to Scan Post Comments Efficiently

1. Navigate to Jason's profile: `https://www.instagram.com/jasoncooperson/`
2. Click on a business-focused post (strategy, AI systems, automation posts get the best ICP commenters — NOT lifestyle/travel posts)
3. Use `get_page_text` to extract ALL commenter usernames from the post at once — WAY faster than screenshotting
4. Note all usernames, then batch-check profiles
5. Check multiple posts — don't stop after one. The strategy post, AI setter post, and automation posts are the richest

### How to Check Profiles FAST

**Use `get_page_text` instead of screenshots.** Navigate to `instagram.com/{handle}/`, wait 2s, call `get_page_text`. You get the bio, follower count, name, category, website, and who follows them — all in one call. 3 seconds per profile vs 10+ seconds with screenshots.

**What to look for in the text output:**
- **Name + title** (CEO, Founder, Coach, etc.)
- **Follower count** (1K+ with real content = good)
- **Bio keywords:** agency, coaching, scale, clients, founder, CEO, helping [people] do [thing]
- **Website link** (has a business)
- **"Verified"** in the output = blue check
- **"Followed by [names]"** = connected to Jason's network
- **Story highlights** like "Client Wins", "Testimonials", "Results" = has a real offer
- **"Follow Back" button** = they follow Jason, he doesn't follow back yet

**Only screenshot when you need to see the profile picture or content grid** (to verify they're a real person with quality content).

### ICP Qualification Criteria (Updated)

**TARGET ICP:** Established creator-coaches, agency owners, and service business operators doing $10K-$30K+/mo who are drowning in fulfillment and ops.

### A-Tier Signals (Strong Prospect)
- Verified account ✅
- Bio mentions: agency, coaching, consulting, founder, CEO, scale, clients, AI, automation
- Has "Client Wins" / "Testimonials" / "Results" story highlights
- Has a website or Calendly link in bio
- 1K-50K+ followers with real content (not bought)
- US, Europe, or Australia based
- Already in Jason's network orbit (followed by mutual connections)
- Commented genuinely or on a business-focused post

### B-Tier Signals (Worth a Shot)
- Has a business but small following (<1K)
- European non-English speaking but in a Western market (French, German, etc.)
- COO/operator title but new IG presence
- Real business website but early on content

### Hard Skip Signals
- India, Africa, Southeast Asia, or any third-world country
- <100 followers with 0 posts (ghost/bot)
- Private + empty profile
- Non-English bio with no business signals
- Anime/meme/fan page profile pic
- Pure personal account (selfies, food, travel only, no business)
- Friends/family of Jason ("Followed by cooperson.json, saracooperson, vndrewfox")
- Service pitchers (video editors, setters looking for work)
- Under 18 / college students with no real business

### GEO FILTER (HARD RULE)
**US, Europe, Australia ONLY.** Skip everyone else. No exceptions.

### Network Cluster Mining

When you find one good prospect, check the "Suggested for you" section on their profile. Instagram clusters similar accounts together. One good prospect often reveals 5-10 more in the same tier. This is the highest-ROI prospecting move — note every promising suggested account and add to the check list.

### Saving the Prospect List

Save all qualified prospects to `prospect-list.md` in the project root with:
- Handle
- Name
- Why they're ICP (one line)
- Tier (A or B)
- Source (which post comment, notification, or suggested section)

This file is the handoff to the Outreach workflow.

---

## Outreach Workflow (Sending Openers)

### Opening the Notifications Panel

1. Navigate to `https://www.instagram.com/`
2. Use `find` tool with query `"Notifications link in sidebar"` to get the ref
3. Click the ref to open the Notifications panel

**Never** use href="#" refs from `read_page` output — they shift on every page load and often open Search or Explore instead. The `find` tool by semantic description is the only reliable method.

If clicking a ref opens Search by mistake: press Escape to close it, re-read the page, use `find` again.

### Sending DMs (Stage 1 Openers)

#### Opening a DM Conversation

1. Navigate to `https://www.instagram.com/direct/inbox/`
2. Use `find` tool to locate the "Search" input — click it
3. Type the handle or name — click the result

Or from their profile, click the "Message" button.

#### Typing and Sending

1. Use `find` tool to locate the "Message" input by ref
2. Click the ref
3. Type the message
4. Press **Enter** (Return key) to send — there is no send button in IG DMs

**"Related keyboard shortcuts" panel:** If this overlay appears after clicking the message input, use `find` tool for `"Close keyboard shortcuts"`, click the X, then proceed to type. This can appear multiple times per session.

#### What to Send

**For prospects with NO prior conversation:**
> Personalized compliment referencing their bio/business + curiosity question (Stage 1 opener per setting-script.md)

**For prospects who already received ManyChat auto-DM:**
> Old ManyChat auto-DMs do NOT count as "already contacted." Send a personal Stage 1 opener.

**OUTREACH ONLY:** Send openers. Do not reply to messages, do not qualify, do not book calls from IG native DMs. Those happen in ManyChat.

---

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

---

## Browser Performance Tips

- **Use `get_page_text` for profile checking** — 3x faster than screenshot. Returns bio, followers, name, website, mutual follows all in one call
- **Use `find` tool first** before clicking anything — more reliable than guessing coordinates
- **Use refs over coordinates** — refs are stable, coordinates shift with scroll/resize
- **Batch profile checks** — collect 10-15 usernames from comments first, THEN check profiles one by one. Don't bounce between comments and profiles
- **Navigate directly** to `instagram.com/{handle}/` instead of clicking through UI elements
- **Screenshot only when needed** — for reading the content grid or verifying profile pictures. Bio text comes from `get_page_text`
- **Don't retry same failed action** — re-find the element instead
- **Wait 2s after navigation** before calling `get_page_text` (page needs to load)
