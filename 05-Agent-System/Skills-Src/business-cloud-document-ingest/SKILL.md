---
name: business-cloud-document-ingest
description: Retrieve business documents from Google Drive, Google Docs, Dropbox, OneDrive, SharePoint, or local files into an Obsidian Business Brain vault using scoped searches, lightweight source notes, and routing to specialized business skills.
---

# Business Cloud Document Ingest

## Shared Rules

Before creating files, changing structure, or preserving content, read the relevant files in `05-Agent-System/Rules/`.

Use this skill when the user asks to find, retrieve, read, import, or preserve a business document from cloud storage or a local file path.

## Supported Sources

Use available connectors or filesystem access for:

- Google Drive and Google Docs
- Dropbox
- OneDrive
- SharePoint
- local files

Do not assume a connector exists. If access is unavailable, tell the user which connector or file path is needed.

## Workflow

1. Confirm the requested provider or local path and the search scope.
2. Search only within the user-requested scope: folder, path, name, owner, date range, type, or keywords.
3. If multiple plausible documents match, present concise candidates and ask the user to choose.
4. Retrieve the selected document and available metadata.
5. Create a lightweight source note under `01-Sources/Docs/<Provider>/<Category>/`.
6. Use `90-Templates/Document Source Note Template.md`.
7. Preserve the original URL or local path as the primary reference.
8. Extract a concise summary, insights, decisions, open questions, follow-ups, and affected business areas.
9. Update `03-MOCs/MOC - Documents.md`, relevant MOCs, `index.md`, and `log.md`.
10. Route specialized analysis to the relevant business skill.

## Analysis Routing

Use:

- `business-call-ingest` for meeting transcripts or call notes
- `business-customer-intel` for customer materials
- `business-investor-intel` for investor materials
- `business-finance-strategist` for financial models, pricing, or business-model documents
- `business-decision-capture` for durable decision evidence
- `business-action-tracker` for follow-ups after user confirmation

## Persistence Policy

Create a Markdown source note by default. Do not download or commit the full document unless the user requests it or a specific workflow requires a retained local copy.

## Search Policy

Do not crawl an entire storage account or perform bulk synchronization unless the user explicitly requests and confirms the broader operation.

## Privacy

Never store credentials, OAuth tokens, connector secrets, or unnecessary personal data. Do not change permissions on the original document.
