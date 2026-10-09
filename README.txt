Rotorflight Log Analyzer - Android (komplett offline)
=====================================================
Die App ist eine einzelne HTML-Datei (www/index.html), die BBL-Logs direkt auf dem Handy dekodiert und auswertet.
Ohne APK ausprobieren: RotorflightLogAnalyzer_offline.html auf das Handy kopieren und im Chrome oeffnen.

APK bauen - Weg A (ohne Installation, GitHub Actions, ca. 5 Min):
 1. Kostenloses GitHub-Konto, neues (privates) Repository anlegen.
 2. Den INHALT dieses Ordners hochladen (inkl. versteckter Ordner .github).
 3. Reiter "Actions" -> "Build APK" laeuft bei jedem Push; ein Release entsteht beim Setzen eines Tags (git tag v1.0.0 ; git push origin v1.0.0).
 4. Nach dem Lauf unter "Artifacts" RFLogAnalyzer-apk herunterladen (ZIP, darin app-debug.apk).
 5. APK aufs Oppo kopieren, antippen, "Installation aus unbekannten Quellen" erlauben.

Weg B (lokal): Node 18+, JDK 17, Android Studio/SDK installieren, dann ./build_apk.sh
