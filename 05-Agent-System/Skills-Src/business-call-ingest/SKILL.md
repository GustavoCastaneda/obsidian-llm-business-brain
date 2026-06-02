---
name: business-call-ingest
description: Import meeting notes or transcripts into an Obsidian Business Brain vault, classify meetings, create source notes, extract insights, and update business pages, MOCs, index.md, and log.md.
---

# Business Call Ingest

## Shared Rules

Before creating files, changing structure, or preserving content, read the relevant files in `05-Agent-System/Rules/`.

Use this skill when importing calls from Granola, another meeting tool, or pasted meeting transcripts.

## Workflow

1. Retrieve meeting metadata, notes, and transcript when available.
2. Classify the call as `customer`, `investor`, `partner`, `candidate`, `internal`, or `other`.
3. Create a source note under `01-Sources/Calls/<Tool>/<Category>/`.
4. Extract participants, context, key insights, decisions, open questions, and follow-ups.
5. Link affected areas: Customers, Product, GTM, Sales, Fundraising, Strategy, Partnerships, People, or Decisions.
6. Update relevant business pages and MOCs.
7. Append an ingest entry to `log.md`.

## Privacy

Preserve business-relevant facts. Avoid storing unnecessary personal details.
