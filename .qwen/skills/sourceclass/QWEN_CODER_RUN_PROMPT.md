# Qwen Coder Run Prompt

Use the `sourceclass` skill.

Analyze this repository and execute the SourceClass MVP task.

Important:

- Do not modify source code.
- Do not delete files.
- Do not refactor code.
- Only create documentation output files.
- Use evidence from the repository.
- Separate evidence, inference, and needs verification.
- Do not invent features.
- Do not directly edit GitBook, Notion, Cloudflare, or any external platform.
- Do not use external API credentials.
- Generate GitBook-ready Markdown, but do not publish it.

Required outputs:

```txt
sourceclass-docs/
├─ README.md
├─ product-manual.md
├─ getting-started.md
├─ features.md
├─ usage.md
├─ architecture.md
├─ configuration.md
├─ troubleshooting.md
├─ evidence-map.md
└─ needs-verification.md

landing/
└─ landing-page.md

SOURCECLASS_REPORT.md
SOURCECLASS_3LINE_SUMMARY.txt
```

When finished, summarize:

1. Files created
2. What the project appears to be
3. Highest-confidence findings
4. Biggest uncertainties
5. What I should verify manually
