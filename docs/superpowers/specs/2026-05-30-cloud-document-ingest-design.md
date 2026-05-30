# Cloud Document Ingest Design

## Goal

Add a provider-agnostic document retrieval workflow to the public Obsidian business vault template. The workflow should let an agent search connected cloud storage or local files, preserve useful document evidence, and route the content into existing business workflows.

## Scope

The workflow supports these source locations when the user's agent environment exposes the required connector or filesystem access:

- Google Drive and Google Docs
- Dropbox
- OneDrive
- SharePoint
- local files

The template documents equivalent paths for these providers. It does not install connectors, provision credentials, or implement provider APIs.

## Skill Boundary

Create a local skill named `business-cloud-document-ingest`.

The skill is responsible for:

1. identifying the available provider or local path
2. searching only within a user-requested scope
3. resolving ambiguity before retrieving a document
4. reading the selected document and its metadata
5. creating a lightweight source note
6. linking affected business areas
7. delegating specialized analysis to existing skills when appropriate
8. updating the Documents MOC, `index.md`, and `log.md`

The skill is not responsible for provider authentication, connector installation, bulk synchronization, or domain-specific business analysis.

## Search Policy

Searches must be scoped by the user's request. Valid scope constraints include:

- folder or path
- document name
- owner
- date range
- file type
- keywords

The agent must not crawl an entire storage account or perform a bulk sync unless the user explicitly requests and confirms that broader operation.

If a search returns multiple plausible documents, the agent should present concise candidate results and ask the user to choose before ingesting content.

## Persistence Policy

The default durable artifact is a Markdown source note under:

`01-Sources/Docs/<Provider>/<Category>/`

Supported provider folders:

- `Drive`
- `Dropbox`
- `OneDrive`
- `SharePoint`
- `Local`

The source note should preserve:

- provider
- original document title
- original link or local path
- document type
- owner or author when available
- source date and retrieval date
- search scope used
- concise summary
- key insights
- decisions
- open questions
- follow-ups
- affected business areas
- related vault links
- whether a local copy was preserved

The original cloud link is the primary reference. Do not download or commit the full document by default. Preserve a local copy only when the user requests it or when the document must be retained for a specific workflow.

## Analysis Routing

After creating the document source note, the agent should route additional work to existing skills when relevant:

- meeting transcript or notes: `business-call-ingest`
- customer document: `business-customer-intel`
- investor material: `business-investor-intel`
- financial model or pricing document: `business-finance-strategist`
- decision evidence: `business-decision-capture`
- new follow-up: `business-action-tracker`

The retrieval skill should not duplicate those workflows.

## Vault Changes

Add:

- `05-Agent-System/Skills-Src/business-cloud-document-ingest/SKILL.md`
- `90-Templates/Document Source Note Template.md`
- `03-MOCs/MOC - Documents.md`
- provider folders under `01-Sources/Docs/`

Update:

- `AGENTS.md`
- `CLAUDE.md`
- `README.md`
- `index.md`
- `05-Agent-System/Instructions/Agent System.md`
- `05-Agent-System/Instructions/Skill Registry.md`
- `log.md`

The existing `install-skills.sh` discovers skills automatically, so no installer logic change is required.

## Privacy and Safety

- Never store credentials, OAuth tokens, or connector secrets in the vault.
- Prefer source notes over raw document copies.
- Preserve only business-relevant details.
- Ask before performing broad searches or saving complete local copies.
- Keep links to restricted cloud documents as references without changing their permissions.

## Verification

The implementation is complete when:

1. the installer copies `business-cloud-document-ingest` and reports 11 skills
2. the source-note template includes the required metadata
3. `MOC - Documents` links the provider collections
4. all Obsidian links resolve except documented placeholders
5. privacy scrub finds no personal or private business data
6. `git diff --check` reports no whitespace errors
