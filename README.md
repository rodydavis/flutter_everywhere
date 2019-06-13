# Flutter Everywhere

[![Codemagic build status](https://api.codemagic.io/apps/5cd2d9cbc959181f99f3bc4b/5d02566b85769116ab87cc8f/status_badge.svg)](https://codemagic.io/apps/5cd2d9cbc959181f99f3bc4b/5d02566b85769116ab87cc8f/latest_build)

## Overview

The goal of this repo is to have everything you need to start with flutter desktop + mobile simply by forking the project. This will no longer be necessary once `flutter create` supports desktop and web.

Fork this project or click 'Use Template' to get started! :)

You need to be on the flutter master or dev channel for this project to work!

- Update Flutter `flutter channel master; flutter upgrade`

## Getting Started - Mobile

1. `cd mobile`

2. Run `flutter build ios` || `flutter build apk`

## Getting Started - Desktop

The desktop support is provided by `flutter-desktop-embedding`. For any issues and setup instructions please refer to the docs [here](https://github.com/google/flutter-desktop-embedding).

1. `cd desktop`

2. Update your $PATH `export ENABLE_FLUTTER_DESKTOP=true`

3. Run `flutter precache`

4. Run `flutter run -d macos` || `flutter run -d windows` || `flutter run -d linux`

## Getting Started - Web

Flutter for Web is provided by `flutter_web`. For Issues and Setup Info refer to the docs [here](https://github.com/flutter/flutter_web).

1. `cd web`

2. Update your $PATH `export FLUTTER_WEB=true`

3. Run `flutter packages global run webdev serve`

## Getting Started - Shared and Core

### Core

This is the core part of your app that can be shared between web, mobile and command-line versions of your app. This part cannot depend on the Flutter SDK.

Use this for constants, classes, abstract classes and utilites.

1. Run `cd core`

2. Run  `flutter packages pub run build_runner watch  —delete-conflicting-outputs`

### Shared

This is the part of the app that can share everything used in the Flutter SDK. Like Models, Themes and Locale. Shared includes core.

1. Run `cd shared`
