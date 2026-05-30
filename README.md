# Obsidian LLM Business Vault

A public template for building an LLM-maintained business second brain in Obsidian.

The pattern is simple:

- Raw sources are immutable evidence.
- The wiki is synthesized business knowledge.
- MOCs are navigation hubs.
- Agents maintain the structure, links, index, and log.

## Start Here

- [[index]]
- [[MOC - Strategy]]
- [[MOC - Calls]]
- [[MOC - Decisions]]

## Suggested Setup

1. Install [Obsidian](https://obsidian.md/) on your computer.
2. Clone or download this repository.
3. Open this folder as an Obsidian vault.
4. Install optional Obsidian plugins: Dataview, Templater, Web Clipper, Marp.
5. Choose an agent environment, such as Codex or Claude Code.
6. Install the local skills for your agent.
7. Connect and authenticate your own data connectors, such as Granola and Gmail.
8. Customize `AGENTS.md` and `CLAUDE.md` for your company.
9. Start by filling [[Company Overview]], [[Current Strategy]], [[ICP]], and [[Product Overview]].

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

## Connectors and Credentials

This template includes workflows for meetings and email, but it does not include credentials or connector authentication.

You must install and authenticate connectors in your own agent environment:

- Granola for meeting notes and transcripts.
- Gmail or Outlook for email threads.
- Any other CRM, calendar, docs, or data connectors you want to use.

For Codex, connectors may be installed as plugins or MCP servers depending on the connector. For example, Granola can be configured through its MCP endpoint if your environment supports MCP. Gmail/Outlook require their own connector authentication.

For Claude Code, configure the equivalent MCP servers/connectors in your Claude Code environment.

Do not commit connector credentials, OAuth tokens, `.env` files, mailbox exports, or private meeting transcripts to a public repository.

## Privacy Note

This template intentionally contains only fictional examples. Do not commit real meeting transcripts, customer names, investor details, credentials, OAuth tokens, private email threads, or private strategy to a public repo.
