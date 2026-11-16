# Changelog

All notable changes to Unpackt are listed here.
The format follows [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
versions follow [Semantic Versioning](https://semver.org/).

Alle wichtigen Änderungen an Unpackt stehen hier (Deutsch jeweils darunter).

## [1.1.0] – 2026-11-16

Protection against decompression bombs and a virus scanner layer. /
Schutz vor Entpack-Bomben und eine Virenscanner-Schicht.

### Added

- Virus scanner layer that works with any scanner Windows knows (tested with Bitdefender):
  the active scanner is shown in the log; every file goes into a quarantine first, is read for
  the check (real-time protection) and scanned via AMSI; blocked or removed files are not sorted
  in and are marked `VIRUS` in `Zuordnung.csv`. New exit code `5`. Tested with the harmless
  EICAR test file in ZIP, TAR.GZ and 7z.

- Before unpacking: estimate of the unpacked size (ZIP, 7z/RAR/ISO via `bsdtar`, plain TAR, folders)
  and a check of the free disk space – 5 GB always stay free.
- Suspicious archives (more than 100× bigger than the archive and over 1 GB, or more than
  1,000,000 files): the window asks first ("No" is the default); the command line stops unless
  `--gross` is given.
- While unpacking: a guard counts the bytes really written. Archives that lie about their size
  are stopped; for formats without size information (`.gz`, `.tar.gz` …) it asks once the
  content gets suspiciously big. A guard thread watches `tar.exe` too, so even a single huge file is stopped.
- New exit code `4` = stopped by the bomb protection.

### Hinzugefügt

- Virenscanner-Schicht für jeden Scanner, den Windows kennt (getestet mit Bitdefender): Der aktive
  Scanner steht im Protokoll; jede Datei kommt zuerst in eine Quarantäne, wird zur Prüfung gelesen
  (Echtzeitschutz) und über AMSI geprüft; blockierte oder entfernte Dateien werden nicht einsortiert
  und in `Zuordnung.csv` als `VIRUS` markiert. Neuer Rückgabe-Code `5`. Getestet mit der harmlosen
  EICAR-Testdatei in ZIP, TAR.GZ und 7z.
- Vor dem Auspacken: Schätzung der ausgepackten Größe (ZIP, 7z/RAR/ISO über `bsdtar`, ungepacktes
  TAR, Ordner) und Prüfung des freien Platzes – 5 GB bleiben immer frei.
- Verdächtige Archive (mehr als 100-mal größer als das Archiv und über 1 GB, oder mehr als
  1.000.000 Dateien): Das Fenster fragt nach („Nein“ ist vorausgewählt); die Kommandozeile hält an,
  außer mit `--gross`.
- Während des Auspackens: Ein Wächter zählt die wirklich geschriebenen Bytes. Archive, die über
  ihre Größe lügen, werden gestoppt; bei Formaten ohne Größenangabe (`.gz`, `.tar.gz` …) fragt er,
  sobald der Inhalt verdächtig groß wird. Ein Wächter-Faden passt auch auf `tar.exe` auf, so wird
  selbst eine einzelne riesige Datei gestoppt.
- Neuer Rückgabe-Code `4` = vom Bomben-Schutz angehalten.

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

[1.1.0]: #110--2026-11-16
[1.0.0]: #100--2026-11-16
