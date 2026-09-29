# Changelog

All notable changes to RememberLast are documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [1.4.0] - 2026-09-29

### Added

- Native Lithuanian (`lt`) in-app localization with full translation of UI chrome, relative timestamps, and accessibility semantics.
- Registered Lithuanian (`Lietuvių`) in the language selection sheet.
- Authentic Lithuanian seed dataset and demo runner for promotional asset generation.
- Lithuanian Google Play Store promotional mockups (1024×1536) generated from real device screenshots.

## [1.3.0] - 2026-09-24

### Added

- Theme-adaptive app logo: added high-contrast dark theme brand logo (`app_logo_dark.png`) and dynamic brightness-based switching in About screen.
- Multilingual Google Play Store listings for Dutch (`nl-NL`) and French (`fr-FR`) markets.
- Japanese promotional mockups generated from real device screenshots (`store_assets/raw/ja/`) with authentic localized seed activities.
- Automated promotional mockup pipeline (`tool/generate_mockups.py`) with support for locale-specific screenshot directories and 4x supersampled typography.

### Changed

- README updated with theme-adaptive picture elements.
- Optimized asset sizes across light and dark branding marks.
- Excluded SwiftPM Package.resolved files in `.gitignore`.

## [1.2.0] - 2026-09-04

### Added

- In-app language picker (system default or override) with Flutter gen_l10n support for 21 locales. Non-English copy is machine-translated for a first pass.

### Changed

- Language picker redesigned as a bottom-sheet grid; theme selection aligned to primary blue.
- Dependencies and tooling bumps (Flutter CI 3.47.2, file_picker 12.2 API, Drift codegen refresh).

## [1.1.0] - 2026-09-02

### Added

- Optional Mixpanel usage analytics with first-launch consent dialog and Settings toggle.
- Screen view and occurrence logging (anonymous; no activity titles, notes, or personal content).
- Settings About actions: share app, rate app, contact us, and more from developer.

### Changed

- Privacy policy updated to disclose optional Mixpanel analytics and how to opt out.
- Contact us subtitle describes feedback instead of showing the email address.
- Rate app opens the store listing directly (not the quota-limited in-app review sheet).
- Home sort control moved into the search row for a denser filter bar.

### Fixed

- Crash when canceling the category rename or add dialog caused by disposing the text field controller too early.
- Contact us mail subject used `+` instead of spaces in some mail apps.
- Text fields dismiss the keyboard when tapping outside.
- Rate app doing nothing on repeat taps after dismissing the in-app review prompt.

## [1.0.0] - 2026-07-21

### Added

- Offline-first last done tracker for activities with elapsed time and status indicators.
- Quick log, full history with backdated entries, categories, search, filter, and sort.
- Insights with average intervals and bar chart.
- JSON export/import backup.
- Light and dark brand themes.
- In-app and hosted privacy policy for Play Store listing.
- GitHub Actions CI, multi-platform releases, and GitHub Pages web deploy.
