#!/usr/bin/env bash
# Baut die APK lokal (Linux/macOS). Voraussetzung: Node 18+, JDK 17, Android SDK (ANDROID_HOME gesetzt, z.B. via Android Studio)
set -e
cd "$(dirname "$0")"
npm install
[ -d android ] || npx cap add android
npx cap sync android
cd android && ./gradlew assembleDebug
cp app/build/outputs/apk/debug/app-debug.apk ../RFLogAnalyzer.apk
echo "Fertig: $(cd .. && pwd)/RFLogAnalyzer.apk"
