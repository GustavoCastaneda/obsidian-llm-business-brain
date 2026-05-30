---
name: business-email-ingest
description: Import Gmail, Outlook, or pasted email threads into an Obsidian Business Brain vault by summarizing thread context, extracting commitments, decisions, follow-ups, and updating business pages, MOCs, index.md, and log.md.
---

# Business Email Ingest

Use this skill when importing, searching, summarizing, or extracting business knowledge from email threads.

## Workflow

1. Search only the user-requested scope: sender, domain, label, thread, date range, subject, or mailbox query.
2. Prefer full thread context over isolated messages when available.
3. Classify each thread as `customer`, `investor`, `partner`, `candidate`, `internal`, or `other`.
4. Create a source note under `01-Sources/Email/<Tool>/<Category>/`.
5. Extract participants, subject, date range, context, commitments, decisions, open questions, and follow-ups.
6. Link affected areas: Customers, Product, GTM, Sales, Fundraising, Strategy, Partnerships, People, Legal, or Decisions.
7. Update relevant business pages and MOCs.
8. Append an ingest entry to `log.md`.

## Privacy

Do not store full raw email bodies unless the user explicitly requests it. Prefer concise summaries and short excerpts only when needed. Never commit credentials, OAuth tokens, mailbox exports, or private attachments.

## Source Note

Use `90-Templates/Email Source Note Template.md` as the shape for durable email thread notes.
