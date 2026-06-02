# Obsidian LLM Business Brain

A public template for building an LLM-maintained business second brain in Obsidian.

The pattern is simple:

- Raw sources are immutable evidence.
- The wiki is synthesized business knowledge.
- MOCs are navigation hubs.
- The Action Tracker is the central board for confirmed follow-ups.
- Agents maintain the structure, links, index, and log.

## Start Here

- [[START_HERE]]
- [[index]]
- [[MOC - Strategy]]
- [[MOC - Calls]]
- [[MOC - Decisions]]

If this is your first time opening the vault, start with [[START_HERE]].

## Supported Agent Environments

This template is designed for Codex or Claude Code running with local filesystem access to the vault. These agents can read and update Markdown files, execute `install-skills.sh`, and load the local skills in `05-Agent-System/Skills-Src/`.

The standard ChatGPT web app is not a drop-in runtime for this repository. It can work with uploaded files, projects, and connected apps, but it does not run this installer or maintain a local Obsidian vault directly.

## Suggested Setup

1. Install [Obsidian](https://obsidian.md/) on your computer.
2. Clone or download this repository.
3. Open this folder as an Obsidian vault.
4. Install optional Obsidian plugins: Dataview, Templater, Web Clipper, Marp.
5. Choose Codex or Claude Code as your local agent environment.
6. Install the local skills for your agent.
7. Connect and authenticate your own data connectors, such as Granola and Gmail.
8. Customize `AGENTS.md` and `CLAUDE.md` for your company.
9. Open [[START_HERE]] and paste the first-session prompt into your agent.
10. Let `business-brain-onboarding` interview you one question at a time and fill the first pages.
11. Review the first proposed follow-ups before your agent adds them to [[Action Tracker]].

## Action Tracking

Use [[Action Tracker]] as the central board for active business follow-ups. The local `business-action-tracker` skill can detect possible actions in meetings, email, account pages, legal notes, and founder interviews.

The agent should propose newly detected actions and wait for your confirmation before adding them. It can add an action immediately when you explicitly ask it to track that action.

## Shared Agent Rules

The files in `05-Agent-System/Rules/` act as versioned policy for every agent. They tell agents to reuse existing structure before creating pages or folders, preserve source-backed links, minimize sensitive data, and propose structural changes before applying them.

## Install Agent Skills

Skills live in `05-Agent-System/Skills-Src/`. They are versioned in this repo, but your agent will not automatically install them after `git pull`. Run the installer explicitly.

For Codex:

```bash
chmod +x install-skills.sh
./install-skills.sh --target codex
```

For Claude Code:

```bash
chmod +x install-skills.sh
./install-skills.sh --target claude
```

The installer copies each skill folder into the target agent's local skills directory:

- Codex default: `${CODEX_HOME:-$HOME/.codex}/skills`
- Claude default: `${CLAUDE_HOME:-$HOME/.claude}/skills`

You can override the destination:

```bash
./install-skills.sh --target codex --dest "$HOME/.codex/skills"
./install-skills.sh --target claude --dest "$HOME/.claude/skills"
```

Restart your agent session after installing skills.

After restarting, open a fresh agent session from the vault root and paste the prompt in [[First Session Prompt]].

## Connectors and Credentials

This template includes workflows for meetings, email, and cloud documents, but it does not include credentials or connector authentication.

You must install and authenticate connectors in your own agent environment:

- Granola for meeting notes and transcripts.
- Gmail or Outlook for email threads.
- Google Drive and Google Docs, Dropbox, OneDrive, or SharePoint for cloud documents.
- Any other CRM, calendar, docs, or data connectors you want to use.

For Codex, connectors may be installed as plugins or MCP servers depending on the connector. For example, Granola can be configured through its MCP endpoint if your environment supports MCP. Gmail/Outlook require their own connector authentication.

For Claude Code, configure the equivalent MCP servers/connectors in your Claude Code environment.

## Cloud Document Retrieval

Use `business-cloud-document-ingest` to retrieve documents from supported cloud storage or local files when your agent environment has access. The workflow searches only within the scope you request, such as a folder, filename, owner, date range, file type, or keywords.

By default, the vault stores a lightweight Markdown source note with metadata, a summary, and a link to the original document. It does not download or commit a full local copy unless you explicitly request it or the workflow requires one.

Do not commit connector credentials, OAuth tokens, `.env` files, mailbox exports, or private meeting transcripts to a public repository.

## Privacy Note

This template intentionally contains only fictional examples. Do not commit real meeting transcripts, customer names, investor details, credentials, OAuth tokens, private email threads, or private strategy to a public repo.
