# CodeDuck Alpha

CodeDuck is an Android-first mobile development app for coding without a computer.

## What is implemented
- Project Map as the primary project understanding UI with grouped nodes.
- File tree fallback toggle and file opening.
- Mobile code view with command bar.
- Mock terminal, mock preview, and mock git tab.
- Adapter interfaces for future remote environments.
- Basic session persistence scaffolding.

## Intentionally postponed
- AI chat / code generation / agent features.
- Real cloud execution and custom cloud infrastructure.
- Real-time collaboration.
- VS Code extension compatibility.

## Important status
CodeDuck Alpha does not yet provide real cloud execution.
Current version uses a local sample project and mock adapters.
The next milestone is connecting to SSH/code-server/Codespaces-like remote environments.

## Roadmap
### Milestone 1
- Local sample project
- Project Map
- File opening
- Mock terminal
- Mock preview
- Mock Git

### Milestone 2
- GitHub repository import
- Real file editing
- Git commit/push integration

### Milestone 3
- SSH remote server connection
- Remote file system
- Real terminal over SSH
- Port preview tunneling

### Milestone 4
- code-server/Coder/Codespaces-style adapter support

### Milestone 5
- Optional CodeDuck Cloud container sessions


## GitHub Actions APK Build 준비
- `.github/workflows/android_apk.yml` 워크플로우를 추가해 Android APK CI 빌드 파이프라인을 구성했습니다.
- CI 단계: `flutter pub get` → `flutter analyze` → `flutter test` → `flutter build apk --release` → APK 아티팩트 업로드.
- 현재 `android/` 폴더는 부트스트랩 상태이며, Flutter SDK 환경에서 `flutter create .` 실행 후 전체 Android Gradle/Wrapper 파일을 완성해야 합니다.

## Run
```bash
flutter pub get
flutter run
flutter test
```
