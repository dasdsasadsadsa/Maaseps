# SourceClass Codex Skill

This legacy folder contains a compatibility copy of the SourceClass Codex skill. The main Codex skill directory is `sourceclass/` at the repository root.

SourceClass analyzes a local repository and generates product-facing documentation without modifying source code.

---

## Folder Structure

Place this folder inside your project like this:

```txt
sourceclass/
├─ SKILL.md
├─ sourceclass.config.md
├─ CODEX_RUN_PROMPT.md
├─ project.md
└─ README.md
```

---

## What It Does

SourceClass generates:

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

## How To Use

1. Use the root-level `sourceclass/` folder as the Codex skill directory.

2. Open the repository with Codex.

3. Run the skill with a prompt like:

```txt
Use the sourceclass skill. Analyze this repository and execute the SourceClass MVP task.
```

Or paste the full prompt from:

```txt
sourceclass/CODEX_RUN_PROMPT.md
```

4. Review the generated files.

5. Manually verify anything listed in:

```txt
sourceclass-docs/needs-verification.md
```

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
