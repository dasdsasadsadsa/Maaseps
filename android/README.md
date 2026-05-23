# Android Folder (Bootstrap)

This repository currently contains a manually scaffolded Flutter app foundation.
The Android module in this folder is a **bootstrap placeholder** for CI/readiness checks.

## Purpose
- Reserve the expected Android project location for APK pipeline work.
- Make repository structure explicit before full `flutter create .` regeneration.
- Document minimum Android build assumptions used by GitHub Actions.

## Next step
When Flutter SDK is available locally, run:

```bash
flutter create .
```

This will generate full Android Gradle wrapper files (`android/gradlew`, `android/gradle/wrapper/*`, manifests, Kotlin entrypoint, etc.) needed for fully native Android builds.
