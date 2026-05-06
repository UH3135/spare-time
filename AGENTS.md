# AGENTS.md

## Project Overview

- This repository is a Flutter app.
- Keep repository-wide guidance here. Avoid screen-specific notes that will age quickly.

## Project Structure

- `lib/main.dart`: application entry point, app-level theme, and root routing.
- `lib/core/`: shared code used across multiple features.
- `lib/core/layout/`: reusable layout wrappers such as shared scaffolds.
- `lib/core/widgets/`: shared UI components.
- `lib/features/`: feature-oriented screens and feature-specific UI.
- `test/`: automated tests for shared behavior and app features.

## Working Rules

- Keep implementations minimal and follow YAGNI. Add only the variant or abstraction needed by the current screen.
- Reuse shared UI through `core/` before adding page-specific copies.
- Prefer small, explicit changes over speculative architecture.
- Commit messages should be written in Korean.

## Tests And Checks

- Before committing code changes, run:

```bash
flutter test test/widget_test.dart
flutter analyze
```

- Use `flutter test` to verify widget behavior contracts.
- Use `flutter analyze` for static analysis and type checking.
