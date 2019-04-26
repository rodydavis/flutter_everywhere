#!/bin/bash
readonly target_dir="$SYMROOT"/flutter_framework/
readonly framework_path="$FLUTTER_ROOT"/bin/cache/artifacts/engine/darwin-x64/FlutterMacOS.framework

"$FLUTTER_ROOT"/bin/flutter precache --macos --no-android --no-ios

rm -rf "$target_dir"
mkdir -p "$target_dir"
cp -Rp "$framework_path" "$target_dir"

