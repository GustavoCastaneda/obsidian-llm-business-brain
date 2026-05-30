---
type: wiki
status: active
area: Agent-System
created: 2026-05-30
updated: 2026-05-30
tags:
  - business-vault/agent-system
---

# Agent System

This folder contains the local operating system for agents working in this vault.

## Core Files

- [[Skill Registry]]
- [[First Session Prompt]]
- `AGENTS.md`
- `CLAUDE.md`

## Local Skill Source

Local skills live in `05-Agent-System/Skills-Src/`. They are versioned here first, then can be installed into an agent environment once workflows stabilize.

## First Session

For a fresh or empty vault, use [[First Session Prompt]] and the local `business-vault-onboarding` skill. The agent should ask one question at a time and file answers into the correct business pages.

## Finance Agent

The vault includes a local `business-finance-strategist` skill for business model and pricing work. Use it only after reading enough context from Finance, GTM, Product, Sales, account pages, and investor notes. It can create memos, scenario tables, spreadsheets, charts, and reports. It should produce scenarios and assumptions, not unsupported final pricing.
