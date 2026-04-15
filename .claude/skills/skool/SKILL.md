---
name: skool
description: Navigate Skool communities, check chats, message members, and run outreach. Use when running any Skool DM workflow.
---

# Skool — DM Setting Skill

Navigate Skool communities to check chats, message members, and run outreach in Creator Accelerator (paid) and Content Creator University (free).

## When to Use

Use when running Conversing, Following Up, or Outreach workflows on Skool. Skool work happens in a single tab — no need to open multiple tabs.

## Key URLs

| Page | URL |
|------|-----|
| Creator Accelerator (paid, 222 members) | `https://www.skool.com/creatoraccelerator` |
| CCU / Free Group (~2K members) | `https://www.skool.com/internet-money-central-9086` |

**Never** navigate to `/chat` — it 404s. Always navigate to the community URL and use the chat icon from there.

## Priority Order Every Session

1. **Respond to unread chats** — Handle all blue dots first (replies always beat outreach)
2. **Outreach current CA members** — Members tab, newest first, welcome + opener for anyone not yet messaged
3. **Outreach CCU (free group) members** — Same approach, lower priority, massive pool but low ICP density (~5-10%)
4. **Draft promotional post for free group** — Toggle "send email to all" for reach

## Checking Unread Chats

1. Navigate to `https://www.skool.com/creatoraccelerator`
2. Use `find` tool to locate the **chat icon in the top nav** (or use `ref_8` if available). Click it once to open the Chats panel.
3. The panel shows unread chats with blue dots. Use the "Unread" filter if available.
4. Click on the first unread chat to open the chat overlay.

**Traps:**
- The chat icon is a **toggle**. If you click and only see a tooltip, it opened and closed too fast. Wait a beat, click once more.
- The notifications bell (`ref_10`) is right next to the chat icon. Don't click it by mistake.
- Always check unreads **before** starting outreach.

## Handling Multiple Unread Chats

1. Click chat icon to open Chats panel
2. Click first unread chat (top = most recent) — overlay opens
3. Read the conversation
4. Use `find` tool to get the "Message [Name]" textbox ref. Click it.
5. Type message. Press Enter. For second message, type immediately (cursor stays in field). Press Enter.
6. Press **Escape** to close overlay
7. Click chat icon to reopen Chats panel. Click next unread.
8. Repeat until all unreads handled.

**To find a specific person:** Use the **Search users** field at the top of the Chats panel.

## Sending a Message

1. Use `find` tool to locate `"Message [Name] text input"` — click the returned ref
2. Type the message
3. Press Enter to send
4. Cursor stays in the input — type the next message immediately without re-clicking

**Close the overlay:** Press **Escape** (most reliable) or click the X button.

**Rules:**
- **NEVER use dashes or em dashes** in messages. Use periods, line breaks, or run sentences together. Dashes are AI-coded.
- Clicking coordinates on the input often misses. Always use `find` tool for the first message in each chat.

## Member Outreach (Members Tab)

### Navigating Members

- Members are **paginated** (30 per page). Use pagination arrows at the bottom.
- CA has ~8 pages. Work top to bottom, page by page.
- Don't try to scroll infinitely — you must click to the next page.

### Opening a Member's Chat

- **Best:** Click the **CHAT** button on the member card. Opens the chat overlay directly.
- **Alt:** Click their name to open profile, then find the chat button.
- Don't navigate away from the Members page to find someone in the chat panel.

### Who to Message

- **Message:** Everyone who hasn't received a personal opener. Old ManyChat auto-DMs do NOT count as "already contacted."
- **Skip:** Premium + Free + Lifetime access members (friends/partners of Jason)
- **Skip:** Members with active conversations where ball is in their court (no double texting)
- **Skip:** Members flagged or disqualified
- **Skip:** Members you've already messaged (check chat history before sending)

### Checking Chat History Before Sending

Click CHAT on their card. If the overlay shows prior messages:
- Last message is from us + no reply = **skip** (no double texting)
- No prior personal messages exist = **send opener**
- Don't confuse automated Skool welcome messages with personal outreach

### Crafting the Opener

Reference their bio/description from the member card:
> "yooo welcome in [name]! saw u [reference their bio]. what's ur main goal rn?"

- Always personalize. Never send generic "welcome in bro" without context.
- Check gender before using "bro" or "dude" — use `find` or screenshot to read their profile pic/name.
- For paid CA members: skip Stage 3 (permission), go straight to Q1 qualifying.

## Free Group (CCU) Notes

- ICP density is very low (~5-10%). Pages 1-2 might yield only 4 viable leads out of 60.
- Scan quickly: read bio + activity date. Skip immediately if no bio, non-English, inactive 10d+, service provider, generic self-improvement.
- Don't expect the same hit rate as CA.

## Handling Replies Mid-Outreach

When you notice an unread indicator during outreach, **stop immediately**. Click the chat icon, handle the reply, advance the lead per pipeline stages, then resume outreach where you left off. Replies always take priority.

## Spam Risk Warnings

Skool's spam risk warnings are often false positives for international members. Ignore unless clearly a bot.

## Pipeline Tracking

- All Skool leads go in `pipeline-state.md` with "Skool" noted in their entry
- Chat URLs can't be reliably extracted from Skool, so search by name to find conversations
- Search by name in the Skool chat panel to check conversation history
