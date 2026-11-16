# Changelog

All notable changes to Unpackt are listed here.
The format follows [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
versions follow [Semantic Versioning](https://semver.org/).

Alle wichtigen Änderungen an Unpackt stehen hier (Deutsch jeweils darunter).

## [1.0.0] – 2026-11-16

First public release. / Erste öffentliche Version.

### Added

- Window with drag & drop, progress bar and live log (`tkinterdnd2` optional).
- Command line with `--abschnitt`, `--probe`, `--hardlink`, `--gui`, `--version`.
- Archive formats: ZIP (read directly), TAR family incl. `.tar.zst`, single compressed
  files (`.gz`, `.bz2`, `.xz`, `.zst`), and 7z/RAR/ISO/CAB via `bsdtar`.
- Sorting by type into about 15 folders (around 200 extensions); files without an
  extension are recognised by their content.
- Verification in sections of 2,000 files: size, CRC32 and SHA-256 for every file,
  one automatic retry for broken files.
- SHA-256 of the whole archive before and after unpacking (`SHA256.txt`).
- `Übersicht.md`, `Zuordnung.csv` (with SHA-256 per file) and `Protokoll.txt`.
- ChatGPT exports: detected automatically, real file names restored, chats written
  as Markdown in `Chats/` with links to the sorted files.
- Result folder `entpackt_<name>` is created automatically next to the archive.
- `start.bat` for Windows: sets everything up on the first start; an archive can be
  dropped onto it.
- Own icon (window, taskbar, EXE) and `Unpackt.exe` for Windows without Python
  (built with PyInstaller, signed with a self-signed certificate, available under Releases).

### Hinzugefügt

- Fenster mit Ziehen & Ablegen, Ladebalken und Protokoll (`tkinterdnd2` optional).
- Kommandozeile mit `--abschnitt`, `--probe`, `--hardlink`, `--gui`, `--version`.
- Archiv-Formate: ZIP (direkt gelesen), TAR-Familie inkl. `.tar.zst`, einzelne gepackte
  Dateien (`.gz`, `.bz2`, `.xz`, `.zst`) sowie 7z/RAR/ISO/CAB über `bsdtar`.
- Sortierung nach Art in rund 15 Ordner (etwa 200 Endungen); Dateien ohne Endung
  werden am Inhalt erkannt.
- Prüfung in Abschnitten zu 2.000 Dateien: Größe, CRC32 und SHA-256 für jede Datei,
  ein automatischer zweiter Versuch bei kaputten Dateien.
- SHA-256 des ganzen Archivs vor und nach dem Entpacken (`SHA256.txt`).
- `Übersicht.md`, `Zuordnung.csv` (mit SHA-256 pro Datei) und `Protokoll.txt`.
- ChatGPT-Exporte: automatisch erkannt, echte Dateinamen wiederhergestellt, Chats als
  Markdown in `Chats/` mit Links zu den sortierten Dateien.
- Der Ergebnis-Ordner `entpackt_<Name>` wird automatisch neben dem Archiv angelegt.
- `start.bat` für Windows: richtet beim ersten Start alles ein; man kann ein Archiv
  darauf ziehen.
- Eigenes Icon (Fenster, Taskleiste, EXE) und `Unpackt.exe` für Windows ohne Python
  (mit PyInstaller gebaut, mit selbst erstelltem Zertifikat signiert, unter Releases zu finden).

[1.0.0]: #100--2026-11-16
