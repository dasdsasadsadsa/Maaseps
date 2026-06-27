# SourceClass Codex Skill

SourceClass is a Codex-ready skill for turning a local code repository into product-facing documentation.

It analyzes a repository, separates evidence from inference, and generates GitBook-ready Markdown, a simple landing page draft, a 3-line product summary, and a final evidence report.

---

## Package Contents

```txt
SKILL.md
sourceclass.config.md
CODEX_RUN_PROMPT.md
project.md
AGENTS.md
README.md
```

---

## What It Creates

When SourceClass runs on a repository, it creates:

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

---

## What It Does Not Do

SourceClass does not:

- Modify source code
- Refactor files
- Deploy anything
- Edit GitBook directly
- Edit Notion directly
- Configure Cloudflare
- Add payment systems
- Add validation marketplaces
- Claim unsupported features

---

## How To Use In Codex App

1. Create or upload this as a Codex skill.
2. Open the target repository in Codex.
3. Call the skill in the thread, for example:

```txt
$sourceclass Analyze this repository and execute the SourceClass MVP task.
```

Or paste the full prompt from:

```txt
CODEX_RUN_PROMPT.md
```

4. Review the generated files.
5. Manually verify anything listed in:

```txt
sourceclass-docs/needs-verification.md
```

---

## How To Use With Codex CLI / Repo Instructions

If you are not using Codex skill upload, copy `AGENTS.md` into the root of the repository you want Codex to analyze.

Then run Codex in that repository and paste:

```txt
Analyze this repository and execute the SourceClass MVP task. Follow AGENTS.md.
```

For a stronger one-shot prompt, paste the content of `CODEX_RUN_PROMPT.md`.

---

## Recommended Workflow

Use SourceClass when:

- You made a project quickly and need to explain it
- Your README is weak or missing
- You want GitBook-ready Markdown
- You want a simple landing page draft
- You want to know which product claims are actually supported by code

---

## Best First Test

Run it on a small or medium repository first.

The MVP is designed around a repository size limit of about 500MB.

Generated folders such as `node_modules`, `.git`, `dist`, `build`, `.next`, and virtual environments should be ignored during analysis.

---

## Output Philosophy

SourceClass should make the project:

- Understandable
- Explainable
- Presentable
- Evidence-based

It should not make unsupported claims just to sound impressive.
