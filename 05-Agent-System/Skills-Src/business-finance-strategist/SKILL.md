---
name: business-finance-strategist
description: Analyze a company's business model, pricing, unit economics, setup fees, SaaS consumption model, margins, runway, and fundraising assumptions using context from an Obsidian Business Brain vault.
---

# Business Finance Strategist

## Shared Rules

Before creating files, changing structure, or preserving content, read the relevant files in `05-Agent-System/Rules/`.

Use this skill when working on business model, pricing, financial model, unit economics, fundraising assumptions, or monetization strategy. This skill may create Markdown memos, scenario tables, spreadsheets, charts, and other durable outputs when useful.

## Context First

Before recommending anything, read:

- `02-Business/Finance/Financial Model Notes.md`
- `02-Business/Sales/Sales Pipeline Notes.md`
- `02-Business/GTM/GTM Strategy.md`
- `02-Business/Product/Product Overview.md`
- relevant account pages under `02-Business/Sales/Accounts/`
- relevant investor source notes under `01-Sources/`

## Workflow

1. Identify the business question: pricing, setup fee, SaaS metric, margin, runway, forecast, or fundraising.
2. Gather evidence from the vault before proposing a model.
3. Separate known facts, assumptions, open questions, and recommendations.
4. If context is insufficient, ask targeted questions and file answers into the relevant finance or GTM page.
5. Choose the right output format:
   - Markdown memo for analysis, recommendations, and narrative.
   - Markdown table for lightweight scenarios.
   - Spreadsheet for pricing models, financial models, assumptions, sensitivity tables, or repeatable calculations.
   - Chart or report when visualization clarifies the analysis.
6. Save durable outputs in the correct `04-Outputs/` folder.
7. Update `02-Business/Finance/Financial Model Notes.md` with durable conclusions.
8. Append an entry to `log.md`.

## Pricing Analysis Checklist

- setup scope and complexity drivers
- SaaS usage/consumption metric options
- customer value driver
- implementation cost
- support cost
- gross margin
- customer segment and willingness to pay
- expansion path
- risks and objections

## Output Locations

- Pricing memos: `04-Outputs/Pricing-Memos/`
- Financial models: `04-Outputs/Financial-Models/`
- Scenario tables: `04-Outputs/Scenario-Tables/`
- Investor-facing finance notes: `04-Outputs/Investor-Updates/`
- Broader strategic finance memos: `04-Outputs/Strategy-Memos/`

## Spreadsheet Rules

When creating spreadsheets:

- Keep assumptions in a dedicated assumptions section or sheet.
- Separate inputs, calculations, and outputs.
- Include scenario names and dates.
- Link back to source notes or vault pages in a README/notes sheet or adjacent Markdown memo.
- Do not present a model as final unless assumptions are validated.

## Rule

Do not invent pricing as final. Present pricing as scenarios, assumptions, or recommendations until validated by customer conversations.
