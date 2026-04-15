---
name: manychat
description: Navigate ManyChat Live Chat, find conversations, send DMs, look up subscribers, and handle unread replies. Use when running any ManyChat-based DM workflow.
---

# ManyChat — DM Setting Skill

Navigate ManyChat Live Chat to find conversations, send messages, look up subscribers, and process unread replies.

## When to Use

Use when running Conversing, Following Up, or Outreach workflows through ManyChat. ManyChat is the **primary DM tool** for all Instagram leads. Only fall back to Instagram native DMs if ManyChat can't handle something.

## Key URLs

| Page | URL |
|------|-----|
| Live Chat (Inbox) | `https://app.manychat.com/fb792681/chat/1479294467` |
| Contacts (search by name) | `https://app.manychat.com/fb792681/subscribers` |
| Specific conversation | `https://app.manychat.com/fb792681/chat/{subscriberID}` |

## Subscriber Lookup

To find a lead's conversation by name or get their subscriber ID:

```bash
# Search by display name
bash /Users/jasoncooperson/Projects/setter-bot/tools/mc-lookup.sh name "Display Name"

# Get info by subscriber ID
bash /Users/jasoncooperson/Projects/setter-bot/tools/mc-lookup.sh id 12345678
```

Returns: name, IG handle, subscriber ID, live chat URL, last interaction, email, phone, tags.

**Limitations:** Cannot search by IG username. Display name search only. Cannot read conversations or send messages via API.

## Opening a Conversation

**Priority order:**

1. **Pipeline lead (has Chat Link):** Check `pipeline-state.md` for their Chat Link URL. Navigate directly. Fastest method.
2. **No Chat Link:** Run `mc-lookup.sh name "Name"` to get subscriber ID and chat URL. Navigate to it.
3. **API returns nothing:** Go to Contacts tab (`/fb792681/subscribers`), search by name manually. Get subscriber ID from URL, navigate to `https://app.manychat.com/fb792681/chat/{subscriberID}`.

**Always** update their Chat Link in pipeline-state.md if it was missing.

**Never** scroll through the inbox looking for someone. Never use Inbox search for names (it searches message content, not contact names).

## Finding Unread Replies

1. Navigate to Live Chat inbox
2. Use the **"Unread" filter** in the inbox sidebar — shows only conversations with unread messages
3. Work through each unread conversation top to bottom

**Never** skip the Unread filter. It's the fastest way to find all pending replies.

**Keyword triggers are NOT real replies.** These words in conversation previews are ManyChat automation events, not human messages: `Follower`, `Music`, `System`, `Strategy`, `Late`, `Automate`, `Hook`, `Skill`, `YT`, `Gpt`, `Machine`, `Content OS`. Skip them.

## Sending a Message

### Primary method: form_input

1. Use `find` tool with query `"Reply here textbox"` to locate the input
2. Use `form_input` on the returned ref to set the message value
3. Press `Return` key to send
4. For multi-message sends: repeat form_input + Return for each message

### Fallback: Native React setter (if form_input fails)

```javascript
// Find the textarea, set value via native setter, dispatch input event
const textarea = document.querySelector('[placeholder="Reply here"]');
const nativeSetter = Object.getOwnPropertyDescriptor(window.HTMLTextAreaElement.prototype, 'value').set;
nativeSetter.call(textarea, 'your message here');
textarea.dispatchEvent(new Event('input', { bubbles: true }));
```
Then click the Send button via `find` tool.

### Critical rules

- **NEVER use `type` action + click Send.** ManyChat's React state won't register typed text. The Send button stays disabled. Messages silently fail.
- **Always screenshot after sending** to verify the message appeared as a blue bubble.
- The "Claude is active in this tab group" banner can overlay the Send button. Dismiss it first.
- **Message direction:** Left-side messages = prospect. Right-side blue bubbles = Jason. NEVER confuse these.

## Reading Conversation History

Click a conversation in the left panel. Full history appears on the right. ManyChat shows both automated bot messages AND manual replies — distinguish between them.

## Handling Voice Notes

Voice messages show as audio players or "Unsupported message type" in ManyChat.

1. **Extract audio URLs** via JavaScript:
   ```javascript
   document.querySelectorAll('audio source').forEach((s, i) => console.log('VOICE_URL_' + i + ': ' + s.src));
   ```
   Read with `read_console_messages` (pattern: `VOICE_URL`).

2. **Download:** `curl -L -o /tmp/leadname_voice.mp4 "URL"`

3. **Transcribe** with Whisper: `python3 -m whisper /tmp/leadname_voice.mp4 --model base --language en --output_format txt --output_dir /tmp`

4. **Cleanup:** `rm /tmp/leadname_voice_*.mp4 /tmp/leadname_voice_*.txt`

**Note:** Audio `src` is on the `<source>` child element, not the `<audio>` element. Direct fetch/DOM download won't work — must use console.log + read_console_messages workaround (CORS).

## Sending Lead Magnet Links

**NEVER guess or construct URLs from memory.** Find the correct link by:
1. Check `lead-magnets.md` (project root) for verified URLs
2. If not there, find another ManyChat conversation where the same lead magnet was delivered by automation
3. Copy the exact URL from that automation message

## "Channel Not Available" Error

"This channel is not available for communication" is a **loading glitch**, NOT a channel expiration. Fix: refresh the page or re-navigate to the chat URL and wait for it to load. Do NOT switch to IG native DMs.

## Checking a Lead's Profile

Click on the lead's name/avatar in the conversation to open the subscriber info panel with IG handle, tags, custom fields. Or open their IG profile in a separate tab using their handle.
