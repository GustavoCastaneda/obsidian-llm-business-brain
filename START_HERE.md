---
type: guide
status: active
created: 2026-05-30
updated: 2026-05-30
tags:
  - business-brain/start
---

# Start Here

This vault starts as a structure, not as a finished knowledge base. The fastest path is to let your agent interview you and fill the first pages.

## 1. Open the Vault

Open this folder in Obsidian.

## 2. Install Skills

This setup is designed for Codex or Claude Code running with local filesystem access to this vault. The standard ChatGPT web app cannot run this installer or maintain the local vault directly.

For Codex:

```bash
./install-skills.sh --target codex
```

For Claude Code:

```bash
./install-skills.sh --target claude
```

Restart your agent session after installing skills.

## 3. Connect Your Tools

Connect and authenticate your own tools in your agent environment:

- Granola or another meeting source
- Gmail or Outlook
- Google Drive, Dropbox, OneDrive, SharePoint, or local files
- calendar, CRM, docs, or data tools as needed

This vault does not include credentials.

## 4. Start a Fresh Agent Session

Open a new agent session from this folder and paste:

```text
Use this Obsidian Business Brain vault. Read AGENTS.md, START_HERE.md, index.md, and log.md. Then use business-brain-onboarding to run a first founder interview. Ask one question at a time, starting with my name, company name, what the company does, ICP, product status, GTM, and current priorities. After each answer, update the right pages in 02-Business, update index.md if needed, and append to log.md. After the interview, propose the first action items and ask for confirmation before adding them to the Action Tracker.
```

## 5. First Pages to Fill

- [[Company Overview]]
- [[Current Strategy]]
- [[Product Overview]]
- [[ICP]]
- [[GTM Strategy]]
- [[Sales Pipeline Notes]]
- [[Financial Model Notes]]
- [[Operating Cadence]]
- [[Action Tracker]]

## 6. What Good Looks Like

After the first session, the vault should have:

- a one-sentence company description
- current ICP
- product status
- current GTM channels
- open questions
- first decisions
- confirmed next actions in [[Action Tracker]]
- a log entry showing what changed
