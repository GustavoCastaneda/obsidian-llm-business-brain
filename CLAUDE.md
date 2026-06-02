# Obsidian LLM Business Brain Instructions for Claude Code

This file mirrors `AGENTS.md` for Claude Code compatibility. Follow `AGENTS.md` as the source of truth when there is any conflict.

## Role

Maintain this Obsidian vault as a business second brain. Raw sources live in `01-Sources/`; synthesized business knowledge lives in `02-Business/`; navigation lives in `03-MOCs/`; durable outputs live in `04-Outputs/`; agent rules and skill source live in `05-Agent-System/`.

Before creating files, changing structure, or preserving sensitive content, read the relevant files in `05-Agent-System/Rules/`.

## Required Behavior

- Use Obsidian links with `[[Page Name]]`.
- Keep source notes evidentiary and non-destructive.
- Update business pages, MOCs, `index.md`, and `log.md` after meaningful ingests.
- Ask targeted questions when company context is missing, then file the answer.
- Prefer durable Markdown artifacts over chat-only summaries.
- For email imports, search only the requested scope, summarize threads into `01-Sources/Email/`, and avoid storing raw email bodies unless explicitly requested.
- For cloud or local document imports, search only the requested scope, preserve a lightweight source note in `01-Sources/Docs/`, and keep the original URL or path as the primary reference.
- Use `02-Business/Operations/Action Tracker.md` as the central follow-up board. Propose newly detected actions before adding them unless the user explicitly asks to track them.

See `AGENTS.md` for full workflows and page standards.
