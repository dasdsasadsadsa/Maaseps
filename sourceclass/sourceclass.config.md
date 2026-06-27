# SourceClass Config

## MVP Scope

SourceClass MVP is a Codex-ready skill for repository analysis and product documentation.

The MVP output is:

- Proper repository analysis
- Product manual
- GitBook-ready Markdown documentation
- Simple landing page draft
- Exactly 3-line product summary text
- Evidence-based report

The MVP does not directly use:

- GitBook editing
- Notion editing
- Cloudflare deployment
- External publishing APIs
- Payment systems
- Human validation services
- AI validation services

---

## Project Limit

MVP file size limit: 500MB.

If the repository contains large files or generated folders, ignore them unless they are essential for understanding the product.

---

## Allowed Output Paths

The agent may create or update only:

```txt
sourceclass-docs/
landing/
SOURCECLASS_REPORT.md
SOURCECLASS_3LINE_SUMMARY.txt
```

Do not write outside these paths unless explicitly instructed by the user.

---

## Allowed Actions

The agent may:

- Read source files
- Read configuration files
- Read README and existing docs
- Analyze package scripts
- Analyze project structure
- Analyze routes and entry points
- Analyze tests
- Create documentation files
- Create a product manual
- Create a landing page draft
- Create a 3-line product summary
- Create an evidence map
- Create a needs-verification report
- Create a final SourceClass report

---

## Forbidden Actions

The agent must not:

- Modify source code
- Delete files
- Refactor code
- Install packages
- Run deployment commands
- Configure GitBook
- Configure Notion
- Configure Cloudflare
- Configure port forwarding
- Add payment systems
- Add human verification services
- Add AI verification services
- Create a full web app
- Convert this skill into an independent SaaS product
- Add flashy landing page design that hides the actual function
- Claim unsupported features
- Pretend the project is production-ready without evidence
- Use external API credentials
- Require the user to provide GitBook, Notion, or Cloudflare credentials for MVP

---

## Output Priority

The highest priority is:

1. Accuracy
2. Evidence
3. Clear product explanation
4. GitBook-ready Markdown structure
5. Useful product manual
6. Simple landing page copy
7. Short 3-line summary

Design and marketing style are lower priority.

---

## GitBook-Ready Markdown Rules

The Markdown should be clean enough to paste, import, or sync into documentation tools later.

Use:

- Clear headings
- Short paragraphs
- Relative links where helpful
- Code blocks only when useful
- Tables only when they improve clarity

Avoid:

- HTML-heavy formatting
- Platform-specific embeds
- Complex design instructions
- Unverified claims

---

## Landing Page Rules

The landing page is a text draft only.

It should not include:

- CSS
- React code
- HTML
- Cloudflare instructions
- Fake social proof
- Fake metrics
- Fake testimonials
- Pricing unless found in the repo

---

## 3-Line Summary Rules

`SOURCECLASS_3LINE_SUMMARY.txt` must contain exactly 3 lines:

1. What the project is
2. Who it is for and what problem it solves
3. Confidence level and biggest uncertainty

No title.
No bullets.
No extra lines.
