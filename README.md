# spickzettel (sz)

**Standardisierter, volladaptiver Terminal-Spickzettel für macOS und Linux.**

Ein hochpräzises, token- und ressourceneffizientes Werkzeug zur schnellen Orientierung auf der Kommandozeile. Bietet sofortigen Zugriff auf 77 essenzielle Terminal-Kommandos, macOS-Spezifika, Tastenkürzel und Dateisystem-Pfade.

---

## Besonderheiten & Dynamik

- **Zweidimensionale Raumanpassung:**
  - **Automatischer Zweispaltensatz:** Ab einer Terminalbreite von 114 Zeichen schaltet das Layout selbsttätig in zwei parallele Spalten um. Ein ruhiger, vier Zeichen breiter Zwischenraum trennt die Spalten magazinartig ohne vertikale Linien und halbiert die vertikale Scrollstrecke auf großen Bildschirmen.
  - **Zeilenindividuelle Textdynamik & Mehrstufen-Kaskade:** Jeder Befehl verfügt über bis zu fünf feingliedrig abgestufte Textvarianten (von der ausführlichen Langfassung mit allen Details bis zur ultrakompakten Essenz). Statt ganzer Abschnitte schaltet jede Zeile völlig unabhängig und individuell die maximal inhaltsreiche Variante frei, die exakt in ihren spezifischen Restplatz passt.
  - **Dreistufige Höhendichte:**
    - *Kompakt (`lines < 24`):* Einzeiliges Kopf- und Fußbanner für horizontales Arbeiten in Split-Terminals.
    - *Normal (`24 <= lines < 38`):* Standardabstände mit klarer Strukturierung.
    - *Großzügig (`lines >= 38`):* Atmende Doppelabstände für Vollbildterminals und große Monitore.
  - **Garantierte Einzeiligkeit:** Sämtliche Befehle und Beschreibungen werden konsequent einzeilig dargestellt. Zeilenumbrüche innerhalb eines Eintrags werden durch mathematisch abgestimmte Spaltenbreiten und zeilenindividuelle Textkaskaden vollständig vermieden.
  - **Kompakte Zweizeilenansicht:** Nur bei extrem schmalen Terminals (< 48 Spalten) oder explizit über das Flag `-k` schaltet das Layout auf eine zweizeilige Darstellung um.

- **Typografische Hervorhebung & puristische Linienführung (optimi-Farbnorm):**
  - **Puristische Linienarchitektur & atmende Abstände:** Sämtliche Trennungslinien unter den Abschnitten und in der Mitte wurden entfernt. Ausschließlich das obere Banner und der Fußbereich werden durch je eine Trennlinie eingerahmt, die bei der großen Version vor und nach sich durch atmende Freiräume (Leerzeilen) eingefasst ist, während der Inhaltsbereich durch Freiräume und Badges strukturiert wird.
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
