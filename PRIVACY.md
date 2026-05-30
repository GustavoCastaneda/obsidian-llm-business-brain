# Privacy Checklist

Before publishing a vault or template:

- Do not commit real meeting transcripts or summaries.
- Do not commit customer, investor, employee, or candidate names.
- Do not commit email addresses, phone numbers, credentials, OAuth tokens, or API keys.
- Do not commit private strategy, revenue, pipeline, fundraising, or legal details.
- Scrub source notes, logs, and git history before pushing to a public remote.

Suggested pre-push check:

```bash
rg -n -i "secret|token|api[_-]?key|password|@|customer name|investor name|private" .
```

