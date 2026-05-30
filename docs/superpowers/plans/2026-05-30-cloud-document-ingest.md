# Cloud Document Ingest Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Add a provider-agnostic workflow for retrieving cloud or local business documents into lightweight Obsidian source notes.

**Architecture:** Add one local skill that handles scoped document retrieval and durable source-note creation without implementing provider APIs. Keep domain-specific analysis in existing business skills. Add a document template, provider folders, a Documents MOC, and public setup documentation.

**Tech Stack:** Markdown, Obsidian wiki links, Bash installer, Git.

---

### Task 1: Add Document Source Structure

**Files:**
- Create: `01-Sources/Docs/Drive/.gitkeep`
- Create: `01-Sources/Docs/Dropbox/.gitkeep`
- Create: `01-Sources/Docs/OneDrive/.gitkeep`
- Create: `01-Sources/Docs/SharePoint/.gitkeep`
- Create: `01-Sources/Docs/Local/.gitkeep`
- Create: `90-Templates/Document Source Note Template.md`
- Create: `03-MOCs/MOC - Documents.md`

- [ ] Create provider folders and `.gitkeep` files.
- [ ] Add a source-note template with provider, original URL/path, document type, owner, source date, retrieval date, search scope, local-copy status, summary, insights, decisions, open questions, follow-ups, affected areas, and links.
- [ ] Add a Documents MOC linking all provider collections and related MOCs.

### Task 2: Add Cloud Document Ingest Skill

**Files:**
- Create: `05-Agent-System/Skills-Src/business-cloud-document-ingest/SKILL.md`

- [ ] Add a concise skill description that triggers for Drive, Docs, Dropbox, OneDrive, SharePoint, local files, and general cloud-document retrieval.
- [ ] Document scoped-search rules, ambiguity handling, lightweight persistence, exceptional local-copy behavior, analysis routing, and privacy requirements.

### Task 3: Integrate Documentation

**Files:**
- Modify: `AGENTS.md`
- Modify: `CLAUDE.md`
- Modify: `README.md`
- Modify: `index.md`
- Modify: `05-Agent-System/Instructions/Agent System.md`
- Modify: `05-Agent-System/Instructions/Skill Registry.md`
- Modify: `log.md`

- [ ] Add the document workflow to agent instructions.
- [ ] Link `[[MOC - Documents]]` from navigation.
- [ ] Explain supported document providers and connector requirements in README.
- [ ] Register the new skill and append a setup log entry.

### Task 4: Verify Template

**Files:**
- Verify: repository tree and generated install destination

- [ ] Run `git diff --check`.
- [ ] Run `./install-skills.sh --target codex --dest /tmp/obsidian-vault-cloud-doc-test` and confirm 11 installed skills.
- [ ] Confirm `/tmp/obsidian-vault-cloud-doc-test/business-cloud-document-ingest/SKILL.md` exists.
- [ ] Run the Obsidian link checker and confirm all links resolve except documented placeholders.
- [ ] Run the privacy scrub and confirm no private names or credentials are present.
- [ ] Commit the implementation.
