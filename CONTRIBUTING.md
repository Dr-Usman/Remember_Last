# Contributing

Thanks for helping improve RememberLast. This guide covers local checks, CI, and how releases are published.

## Development checks

Before opening a PR, run the same checks CI runs:

```bash
dart format .
flutter analyze --fatal-infos
dart run build_runner build --delete-conflicting-outputs
git diff --exit-code lib/core/database/app_database.g.dart
flutter test
```

One-liner (except the codegen diff check):

```bash
dart format . && flutter analyze --fatal-infos && flutter test
```

Re-run `build_runner` only after changes to database tables or `@DriftDatabase` annotations.

## CI/CD

GitHub Actions workflows live in [`.github/workflows/`](.github/workflows/).

| Workflow | Trigger | Purpose |
|----------|---------|---------|
| `ci.yml` | PR to `main` | Format check, analyze, Drift codegen check, tests, web smoke build |
| `release-android.yml` | Tag `v*` / manual | Signed universal and split APKs attached to GitHub Release |
| `release-ios.yml` | Manual only | Signed IPA — tag trigger disabled until iOS secrets are configured |
| `release-macos.yml` | Tag `v*` / manual | macOS `.app` zip |
| `release-web.yml` | Tag `v*` / manual | Web bundle zip |
| `release-linux.yml` | Tag `v*` / manual | Linux x64 tar.gz |
| `release-windows.yml` | Tag `v*` / manual | Windows x64 zip |
| `deploy-pages.yml` | Tag `v*` / manual | Flutter web + privacy page → GitHub Pages |

## Releasing

### Pre-release checklist

Run the [development checks](#development-checks) above and fix any failures before bumping the version.

### Release steps

1. Complete the pre-release checklist.
2. Bump `version` in `pubspec.yaml` (e.g. `1.0.1+2` — increment the build number after `+`).
3. Update [`CHANGELOG.md`](CHANGELOG.md) (move items from `[Unreleased]` into the new version section). This file is the source of truth for both the **Git annotated tag message** and the **GitHub Release** description — write clear Added / Changed / Fixed bullets users can understand.
4. Commit, create an annotated tag from the changelog, and push:

```bash
git add pubspec.yaml CHANGELOG.md
git commit -m "chore: release v1.0.1"

# Annotated tag (-a) with the CHANGELOG section as the tag message.
# Do not use plain `git tag v1.0.1` — lightweight tags have no description.
./tool/tag_release.sh 1.0.1

git push origin main
git push origin v1.0.1
```

The tag must match the semver portion of `pubspec.yaml` (`v1.0.1` → `1.0.1+2`). Release workflows extract that version’s section from `CHANGELOG.md` and publish it as the GitHub Release description (not auto-generated commit lists), then upload versioned platform artifacts using the `remember-last-<platform>-<version>-<variant>` naming convention. Android publishes a universal APK for convenient sideloading plus smaller ABI-specific APKs. Build the Play Store AAB locally when needed:

```bash
flutter build appbundle --release
```

After a `v*` tag push, `deploy-pages.yml` also builds the web app with `--base-href /Remember_Last/`, copies `web/privacy/` into the output, and deploys to GitHub Pages.

## Required GitHub Secrets

**Android** (universal and split APK releases):

| Secret | Description |
|--------|-------------|
| `ANDROID_KEYSTORE_BASE64` | Base64-encoded upload keystore (`.jks`) |
| `ANDROID_KEYSTORE_PASSWORD` | Keystore password |
| `ANDROID_KEY_PASSWORD` | Key password |
| `ANDROID_KEY_ALIAS` | Key alias |

Encode the keystore with:

```bash
base64 -i upload-keystore.jks | pbcopy
```

**iOS** (IPA releases):

| Secret | Description |
|--------|-------------|
| `IOS_CERTIFICATE_BASE64` | Distribution `.p12` (base64) |
| `IOS_CERTIFICATE_PASSWORD` | P12 password |
| `IOS_PROVISIONING_PROFILE_BASE64` | App Store provisioning profile (base64) |
| `KEYCHAIN_PASSWORD` | Temporary keychain password for CI |

Local Android signing: create `android/key.properties` and place `upload-keystore.jks` in `android/` (both gitignored).

## One-time repo setup

1. **Settings → Pages → Build and deployment → Source:** GitHub Actions (not `/docs`).
2. Add the Android signing secrets above before tagging a release.
3. When ready for automatic iOS releases, uncomment the `push: tags: v*` trigger in [`.github/workflows/release-ios.yml`](.github/workflows/release-ios.yml).

## Branch protection

On GitHub, go to **Settings → Branches → Add branch protection rule** for `main`:

1. Enable **Require a pull request before merging** (recommended).
2. Enable **Require status checks to pass before merging**.
3. Search for and select the **CI** / `analyze-and-test` check from `ci.yml`.
4. Enable **Require branches to be up to date before merging** (recommended).

This blocks merges until `flutter analyze`, formatting, codegen, and tests pass.
