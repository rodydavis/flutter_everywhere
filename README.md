[![Codemagic build status](https://api.codemagic.io/apps/5cd2d9cbc959181f99f3bc4b/5cd2d9cbc959181f99f3bc4a/status_badge.svg)](https://codemagic.io/apps/5cd2d9cbc959181f99f3bc4b/5cd2d9cbc959181f99f3bc4a/latest_build)

## Flutter Everywhere

The goal of this repo is to have everything you need to start with flutter desktop + mobile simply by forking the project. This will no longer be necessary once `flutter create` supports desktop and web.

Fork this project or click 'Use Template' to get started! :)

You need to be on the flutter master or dev channel for this project to work!

- Update Flutter `flutter channel master; flutter upgrade`

## Getting Started - Mobile

1. `cd mobile`

2. Run `flutter build ios` || `flutter build apk`

## Getting Started - Desktop

1. `cd desktop`

2. Update your $PATH `export ENABLE_FLUTTER_DESKTOP=true`

3. Run `flutter precache`

4. Run `flutter run -d macos` || `flutter run -d windows` || `flutter run -d linux`

## Getting Started - Web

1. `cd web`

2. Update your $PATH `export FLUTTER_WEB=true`

3. Run `flutter packages global run webdev serve`

## Getting Started - Shared

1. Run `cd shared`

2. Run  `flutter packages pub run build_runner watch  —delete-conflicting-outputs`
