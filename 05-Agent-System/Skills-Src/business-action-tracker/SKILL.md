---
name: business-action-tracker
description: Maintain the central Action Tracker for an Obsidian business vault, propose follow-ups detected in meetings, email, source notes, accounts, and business pages, and add them only after user confirmation.
---

# Business Action Tracker

Use this skill when the user asks about pending actions, follow-ups, todos, commitments, deadlines, owners, or what needs attention next.

## Read First

Read:

- `02-Business/Operations/Action Tracker.md`
- `02-Business/Operations/Operating Cadence.md`
- relevant account pages
- relevant meeting/email/source notes
- relevant legal, finance, GTM, or fundraising pages

## Workflow

1. Read the central tracker first.
2. Search relevant vault pages for possible follow-ups, commitments, dates, owners, or unresolved decisions.
3. Separate existing tracker actions from newly detected candidate actions.
4. Present candidate actions to the user before adding them.
5. Add only actions the user confirms or explicitly asks to track.
6. Update status, priority, owner, due date, and source links when details change.
7. Move completed actions to `Completed`.
8. Append a tracker update entry to `log.md`.

## Action Fields

Use:

- status: `todo`, `in-progress`, `blocked`, `done`, or `needs-review`
- priority: `P0`, `P1`, `P2`, or `P3`
- due date or timing
- owner
- concise action
- context links

## Confirmation Rule

Do not automatically add newly detected actions to the tracker. Ask the user to confirm first unless the user explicitly says to add or track them.

## Output Location

Maintain:

`02-Business/Operations/Action Tracker.md`
