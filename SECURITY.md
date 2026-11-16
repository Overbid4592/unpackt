# Security Policy

[English](#english) · [Deutsch](#deutsch)

## English

### Supported versions

| Version | Supported |
|---|---|
| 1.0.x | ✅ |

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

Known limit: very large "decompression bomb" archives are not limited yet.

## Deutsch

### Unterstützte Versionen

| Version | Unterstützt |
|---|---|
| 1.0.x | ✅ |

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

Bekannte Grenze: Sehr große „Entpack-Bomben“ (decompression bombs) werden noch nicht begrenzt.
