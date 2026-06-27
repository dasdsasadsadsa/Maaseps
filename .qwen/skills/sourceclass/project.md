# SourceClass Project

SourceClass is a Codex-ready skill that turns a local code repository into product-facing documentation.

It is designed for the moment when a developer has working code, but the project is still hard to understand, explain, or present.

Instead of editing the code, SourceClass reads the repository and generates clear documentation that explains what the project is, who it is for, how it works, and what still needs verification.

---

## What SourceClass Creates

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

## Core Idea

Most AI coding tools can generate code quickly.

The slower part is understanding whether the code can be explained as a real product:

- What does this repo actually do?
- What features are real?
- What is only implied?
- How would a user run it?
- How would a new developer understand it?
- What should be written on a product page?

SourceClass solves that documentation and explanation layer.

---

## MVP Positioning

SourceClass is not a deployment tool.

It does not directly edit GitBook, Notion, Cloudflare, or any external platform.

The MVP focuses only on:

- Repository analysis
- Product manual generation
- GitBook-ready Markdown documentation
- Landing page text draft
- 3-line product summary
- Evidence and verification notes

---

## Why Evidence Matters

SourceClass separates:

- Evidence
- Inference
- Needs verification

This prevents the AI from making the project look more complete than it actually is.

A good SourceClass output should not just sound polished.
It should make clear which claims are supported by the repository and which claims still need human confirmation.

---

## Intended User

SourceClass is useful for:

- Indie hackers
- Student developers
- AI-assisted builders
- Open-source maintainers
- Hackathon teams
- Developers preparing a project for presentation
- Developers who made something quickly and now need to explain it clearly

---

## Product Sentence

SourceClass turns a code repository into product documentation that people can actually understand.
