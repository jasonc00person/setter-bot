# Setter Bot Working Memory

> Persistent memory for the Instagram DM Setter Bot. Full playbook in `CLAUDE.md`. Pipeline in `pipeline-state.md`.

---

## Topic Files

- `setting-script.md` — **THE setting script.** Single source of truth: Stage 1-6 DM flow, voice rules, objection handling, Hormozi principles, decision trees. Read before any DM session.
- `pipeline-state.md` — Active pipeline (single source of truth)
- `sales-call-script.md` — Phone call script (post-booking). 7-phase call + objection cheat sheet.
- `user-preferences.md` — Workflow preferences + learned mistakes
- `memory/browser-playbook.md` — Learned browser actions (BEST METHOD + TRAP)
- `memory/pipeline-health.md` — Conversion metrics, win/loss patterns
- `memory/voice-corrections.md` — Jason's real-time voice corrections (highest-signal data)
- `memory/lead-magnets.md` — Lead magnet URLs (unpopulated — pull from ManyChat next session)
- `memory/voice-message-process.md` — Full Whisper transcription process
- `memory/skool-ca-backlog.md` — Skool CA outreach backlog
- `archive/disqualified.md` — Do not re-contact
- `archive/skipped.md` — Friends, not-a-fit, spam
- `archive/call-outcomes.md` — Post-call results + re-engage list

## Offer Structure

- `memory/project_two_tier_offer.md` — **Two-tier offer (Mar 19).** Tier 1: group coaching $3-4K (beginners). Tier 2: 1-on-1 AI implementation $7-10K (advanced $15K+/mo operators). Same funnel, tier determined on call. NEVER price Tier 2 work at Tier 1 rates.

## Feedback

All feedback memories live in Claude Code auto-memory (`~/.claude/projects/.../memory/`). They are loaded automatically every session. Current feedback files:

- `feedback_send_without_asking.md` — Don't ask before sending DMs, just send them
- `feedback_work_autonomously.md` — Don't pause between workflows. Keep working until told to stop
- `feedback_no_cd_in_git.md` — NEVER use cd in Bash commands. Use `git -C <path>` or absolute paths
- `feedback_git_commit_format.md` — Use `git commit -F /tmp/commit_msg.txt` instead of HEREDOC
- `feedback_skool_url.md` — Skool DMs: navigate to skool.com/creatoraccelerator (not /chat)
- `feedback_manychat_message_direction.md` — Left = prospect, right (blue) = Jason. NEVER confuse
- `feedback_git_commands.md` — Never cd before git commands. Run bare.
- `memory/four-pillars-dm-setting.md` — The 4 Workflows: Conversing, Following Up, Prospecting, Outreach

## Tool Rules

- **Edit tool (not Bash) for pipeline-state.md updates.** Auto-approved, faster.
- **Git commands: NEVER use cd prefix.** Run bare. cd + git triggers security prompt.
- **Whisper STT** for voice notes. Full process: `memory/voice-message-process.md`

## Key System Info

- **Calendly:** `https://calendly.com/jason-creatoreconomy/30m-1-1-meeting`
- **ManyChat Live Chat (PRIMARY):** `https://app.manychat.com/fb792681/chat/1479294467`
- **Viral Hook Library 2.0:** `https://www.notion.so/creator-economy/Viral-Hook-Library-2-0-2a7f65855e6b80cbb460c7e6b4bdb8f8?source=copy_link`

## Workflow Shortcuts

- **"Instagram outreach flow"** = notification outreach on Instagram native, NOT ManyChat
- **Blue dots/green dots = unread replies** = ALWAYS handle before new outreach
- **"Unread" filter in ManyChat** = fastest way to find all pending replies
- **ManyChat Contacts tab** for name search (Inbox search only matches message content)

## Session History

50 sessions completed (Mar 3 — Mar 19). Full logs in `session-logs/`. Key milestones:
- **Mar 3-4:** System built. 37 leads, first bookings (Brayden, NISARG, Albin)
- **Mar 7-8:** Hormozi Stage 2 overhaul. AI detection handling refined
- **Mar 9-10:** 12-call transcript analysis. Sales call script built
- **Mar 13-14:** KB overhaul. setting-script.md created (consolidated voice + objections). Ayden $3K PIF. Albert $3K PIF
- **Mar 15:** Maximus booked (friend mode). Edmund booked. April 3 reframe drafted
- **Mar 19:** 3 sales calls. Tyler verbal $3K. **Two-tier offer created** (Tier 1 group + Tier 2 DFY AI)

## Known Issues / Action Items

- [ ] 5 lead magnet URLs still missing — pull from ManyChat next session
- [ ] April 3 deadline: Finalize "fractional SMM" reframe in setting-script.md (draft exists)
- [ ] George + Saharat + Gobb: Document results for case studies
- [ ] Build agency-specific track/proof for Pablo re-engagement (Tier 2 pitch)
- [ ] Re-engage Frederik with Tier 2 pitch (agency, 8 clients, wants DFY Claude builds)
- [ ] Send Tyler Panzner contract via email (verbal $3K). Follow up ~Mar 26
- [ ] Follow up Maximus ~Mar 23 (hard yes/no after Bali)
- [ ] 12+ completed calls in Hot Leads need outcomes filled + archival
- [ ] Add re-engage message templates to setting-script.md
- [ ] Add missed/rescheduled call recovery protocol to setting-script.md
