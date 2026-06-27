# CodeDuck Alpha Documentation

CodeDuck is an Android-first Flutter app for understanding and editing code projects from a mobile device.

## What it does

CodeDuck Alpha gives a mobile-first project workspace with a Project Map, code viewer/editor, mock terminal, mock preview, mock Git screen, settings, and session persistence.

The current version is an alpha. Several parts are placeholders or mock implementations, especially terminal execution, Git actions, preview behavior, and future remote project sources.

## Who it is for

CodeDuck is for developers or students who want to inspect and work with coding projects from an Android-first interface, especially when they do not have a computer nearby.

## Main features

- Project Map that groups files into understandable categories.
- File tree fallback for opening files directly.
- Mobile code screen with a touch-friendly command bar.
- Mock terminal screen with preset commands and recent command chips.
- Mock preview screen with selectable local ports and viewport sizes.
- Mock Git screen showing changed, added, and deleted files.
- Settings screen for theme, beginner mode, file tree preference, and future remote environment options.
- Session storage for last file, last node, last tab, and recent commands.

## Quick start

- [Getting started](getting-started.md)
- [Product manual](product-manual.md)
- [Features](features.md)
- [Usage](usage.md)
- [Architecture](architecture.md)
- [Evidence map](evidence-map.md)
- [Needs verification](needs-verification.md)

## Current confidence level

**Confidence: 84/100**

The core product direction is strongly supported by the README, Flutter configuration, and app source code. The biggest uncertainty is how much of the future remote execution workflow is intended to be part of the current alpha, because those adapters exist but currently return empty or mock behavior.

## Important warning

This documentation separates implemented features from future or placeholder behavior. Do not present CodeDuck Alpha as a production-ready remote development environment until the remote execution, real file editing, real Git integration, and preview tunneling are implemented and verified.
