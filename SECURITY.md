# Security Policy

[English](#english) · [Deutsch](#deutsch)

## English

### Supported versions

| Version | Supported |
|---|---|
| 1.1.x | ✅ |
| 1.0.x | ❌ please update / bitte aktualisieren |

### Reporting a vulnerability

Please **do not** open a public issue for security problems.

Use **"Report a vulnerability"** in the **Security** tab of this repository instead.
The report stays private until the problem is fixed.

Please include:

- the Unpackt version (`python unpackt.py --version` or the EXE properties)
- what happens and how to reproduce it
- if needed, a small example archive – **only with made-up data, never your personal files**

This is a small hobby project. We will answer as soon as we can.

### What Unpackt already does for safety

- The archive is only read, never changed.
- Paths that try to leave the target folder are refused.
- Files from an archive are never opened or started.
- The target folder must be new or empty – nothing is overwritten.
- Protection against decompression bombs (since 1.1.0): the unpacked size and the free disk space
  are checked before unpacking (5 GB always stay free), suspicious archives need a confirmation,
  and a guard stops archives that write more than they announce.
- Virus scanner layer (since 1.1.0): every file goes into a quarantine first and is checked by the
  active virus scanner (real-time protection + AMSI). Blocked files are never sorted in.

## Deutsch

### Unterstützte Versionen

| Version | Unterstützt |
|---|---|
| 1.1.x | ✅ |
| 1.0.x | ❌ please update / bitte aktualisieren |

### Eine Sicherheitslücke melden

Bitte **kein** öffentliches Issue für Sicherheitsprobleme anlegen.

Stattdessen im Reiter **Security** dieses Repositorys auf **„Report a vulnerability“** klicken.
Die Meldung bleibt privat, bis das Problem behoben ist.

Bitte angeben:

- die Unpackt-Version (`python unpackt.py --version` oder Eigenschaften der EXE)
- was passiert und wie man es nachstellen kann
- wenn nötig ein kleines Beispiel-Archiv – **nur mit erfundenen Daten, nie mit eigenen Dateien**

Das ist ein kleines Hobby-Projekt. Wir antworten, so schnell wir können.

### Was Unpackt schon für die Sicherheit tut

- Das Archiv wird nur gelesen, nie verändert.
- Pfade, die aus dem Ziel-Ordner ausbrechen wollen, werden abgelehnt.
- Dateien aus einem Archiv werden nie geöffnet oder gestartet.
- Der Ziel-Ordner muss neu oder leer sein – es wird nichts überschrieben.
- Schutz vor Entpack-Bomben (seit 1.1.0): Vor dem Auspacken werden die ausgepackte Größe und der
  freie Platz geprüft (5 GB bleiben immer frei), verdächtige Archive brauchen eine Bestätigung,
  und ein Wächter stoppt Archive, die mehr schreiben, als sie angeben.
- Virenscanner-Schicht (seit 1.1.0): Jede Datei kommt zuerst in eine Quarantäne und wird vom aktiven
  Virenscanner geprüft (Echtzeitschutz + AMSI). Blockierte Dateien werden nie einsortiert.
