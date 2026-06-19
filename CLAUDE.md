# magyark-cv

JSON Resume source for Krisztian Magyar.

## Verify after changes

```bash
resume validate
```

Always run this after editing `resume.json`. Fix any reported errors before considering the task done.

## Key files

- `resume.json` — all resume content (JSON Resume schema)
- `public/index.html` — static export
- `package.json` — theme dependency (`jsonresume-theme-elegant`)

## Schema rules

- `endDate` fields must be omitted (not set to `""`) when the position is current/ongoing
- `url` fields must be a full URI or omitted entirely — empty strings are invalid
- Dates must be ISO-8601: `YYYY`, `YYYY-MM`, or `YYYY-MM-DD`
