# spickzettel (sz)

**Standardisierter, volladaptiver Terminal-Spickzettel für macOS und Linux.**

Ein hochpräzises, token- und ressourceneffizientes Werkzeug zur schnellen Orientierung auf der Kommandozeile. Bietet sofortigen Zugriff auf 77 essenzielle Terminal-Kommandos, macOS-Spezifika, Tastenkürzel und Dateisystem-Pfade.

---

## Besonderheiten & Dynamik

- **Zweidimensionale Raumanpassung:**
  - **Automatischer Zweispaltensatz:** Ab einer Terminalbreite von 114 Zeichen schaltet das Layout selbsttätig in zwei parallele Spalten um. Eine durchgezogene blaue Mitteltrennlinie (`│`) strukturiert die Blöcke und halbiert die vertikale Scrollstrecke auf großen Bildschirmen.
  - **Dynamische Spaltenberechnung:** In schmaleren Fenstern passt sich die Befehlsspalte flexibel an die tatsächlich vorkommenden Befehlslängen des jeweiligen Abschnitts an.
  - **Geschützter hängender Einzug:** Lange Erläuterungen brechen sauber bündig an der Beschreibungsspalte um.
  - **Kompakte Zweizeilenansicht:** Bei extrem schmalen Terminals (< 54 Spalten) oder über das Flag `-k` schaltet das Layout auf eine platzsparende Zweizeilenform um.
  - **Höhenadaptive Dichte:** Bei flachen Terminalfenstern (< 28 Zeilen) wird die vertikale Zeilendichte automatisch optimiert.

- **Typografische Hervorhebung (optimi-Farbnorm):**
  - **Überschriften-Badges:** Sämtliche Titel und Themenbereiche heben sich als markante Banner in Royalblau mit strahlend weißer Fettschrift ab.
  - **Code-Badges:** Kommandos sind in dezentem Anthrazit mit leuchtendem Cyan formatiert.
  - **Klare Abstände:** Garantierte Leerzeilen trennen aufeinanderfolgende Abschnitte sauber voneinander.

- **Integrierte Volltextsuche (`-s`):**
  - Blitzschnelle Filterung aller Kommandos, Beschreibungen und Kategorien nach beliebigen Suchbegriffen (z. B. `sz -s zip` oder `sz -s löschen`).

- **Standardisiertes CLI-Hilfeformat (`txt2pdf`-Norm):**
  - Einzeiliges, präzises Hilfemenü via `sz -h`.

---

## Installation

### Einzeiler via Terminal

```bash
curl -fsSL https://raw.githubusercontent.com/jonathank55/spickzettel/main/install.sh | bash
```

### Manuelle Installation

1. **Repository klonen:**
   ```bash
   git clone https://github.com/jonathank55/spickzettel.git
   cd spickzettel
   ```

2. **Installationsskript ausführen:**
   ```bash
   chmod +x install.sh spickzettel
   ./install.sh
   ```

---

## Verwendung

Das Programm kann sowohl über den vollen Namen `spickzettel` als auch über das kurze Tastenkürzel `sz` aufgerufen werden:

```bash
sz [OPTIONEN]
```

### Optionen

| Flag | Beschreibung |
| :--- | :--- |
| `-h` | Einzeilige Befehlshilfe anzeigen |
| `-s BEGRIFF` | Spickzettel nach Befehl oder Beschreibung durchsuchen |
| `-k` | Kompakte zweizeilige Darstellung erzwingen (ideal für sehr schmale Fenster) |
| `-t` | Tabellarische Darstellung erzwingen |
| `-1` | Einspaltige Darstellung auch auf Breitbildmonitoren erzwingen |

### Anwendungsbeispiele

```bash
# Gesamten Spickzettel anzeigen (vollautomatische Breitenanpassung)
sz

# Gezielt nach Archivierungsbefehlen suchen
sz -s zip

# Nach Tastaturkürzeln suchen
sz -s taste

# Kompakten Modus erzwingen
sz -k

# Einspaltige Ansicht auf breitem Monitor erzwingen
sz -1
```

---

## Lizenz

Veröffentlicht unter der [MIT-Lizenz](LICENSE). Erstellt von Jonathan Klatchko.
