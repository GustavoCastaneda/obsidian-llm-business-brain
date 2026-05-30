# Obsidian LLM Business Vault Agent Instructions

This vault is a template for running an LLM-maintained business second brain in Obsidian. The agent maintains a persistent wiki: raw sources are evidence, business pages are synthesized knowledge, MOCs are navigation hubs, and `log.md` is the chronological audit trail.

## Operating Principles

- Prefer durable Markdown pages over ephemeral chat answers.
- Treat `01-Sources/` as evidence. Do not rewrite source notes destructively; append corrections or create updated derivative notes.
- Synthesize into `02-Business/` only when sources support the claim or the founder explicitly provides the context.
- Use Obsidian links: `[[Page Name]]`.
- Keep writing clear and operational. Adapt the language to your company.
- If context is missing, ask targeted questions and file the answer in the relevant business page.
- Every ingest, preserved query, lint pass, and decision capture must append an entry to `log.md`.

## Core Layout

- `00-Inbox/`: unprocessed captures.
- `01-Sources/`: source notes and raw evidence.
- `02-Business/`: synthesized company knowledge by area.
- `03-MOCs/`: maps of content for navigation.
- `04-Outputs/`: memos, briefings, reports, investor updates, sales materials, and decks.
- `05-Agent-System/`: vault instructions, local skill source, references, and scripts.
- `90-Templates/`: reusable note templates.
- `99-Archive/`: obsolete or retired material.

## Meeting Workflow

When asked to import meetings from Granola, another meeting tool, or pasted transcripts:

1. Retrieve or read meeting metadata, notes, and transcript when available.
2. Classify the call as `customer`, `investor`, `partner`, `candidate`, `internal`, or `other`.
3. Create a source note under `01-Sources/Calls/<Tool>/<Category>/`.
4. Extract participants, context, decisions, insights, open questions, and follow-ups.
5. Update related business pages in `02-Business/`.
6. Update affected MOCs and `index.md`.
7. Append a parseable entry to `log.md`.

For sensitive calls, preserve useful business knowledge while avoiding unnecessary personal details.

## Email Workflow

When asked to import or analyze email from Gmail, Outlook, or another mailbox connector:

1. Search only the mailbox scope requested by the user, such as a sender, domain, label, thread, date range, or query.
2. Prefer thread-level context over isolated messages when the connector supports it.
3. Classify each relevant thread as `customer`, `investor`, `partner`, `candidate`, `internal`, or `other`.
4. Create a source note under `01-Sources/Email/<Tool>/<Category>/`.
5. Extract participants, subject, date range, context, commitments, decisions, open questions, follow-ups, and business areas affected.
6. Do not store full raw email bodies unless the user explicitly asks. Prefer concise source notes with short excerpts only when needed.
7. Update related business pages in `02-Business/`, affected MOCs, `index.md`, and `log.md`.

For sensitive email, preserve the business signal and minimize personal data. Never commit credentials, auth tokens, email exports, or private attachments to a public repo.

## Page Standards

Use frontmatter when creating structured pages:

```yaml
---
type: wiki
status: seed
area: Strategy
created: YYYY-MM-DD
updated: YYYY-MM-DD
source_count: 0
confidence: low
tags:
  - business-vault
---
```

Use `type` values such as `source`, `wiki`, `moc`, `decision`, `output`, `template`, or `skill`.

## Source Note Shape

Source notes should include:

- `Source Metadata`
- `Summary`
- `Key Insights`
- `Decisions`
- `Open Questions`
- `Follow-ups`
- `Business Areas Affected`
- `Links`

## Decision Capture

Every important decision should create or update a note in `02-Business/Decisions/` and update `02-Business/Decisions/Decision Register.md`.

## Maintenance

Periodically lint the vault for orphan pages, missing MOC links, broken Obsidian links, stale claims, contradictions, important recurring concepts without pages, and source notes not integrated into business pages.
