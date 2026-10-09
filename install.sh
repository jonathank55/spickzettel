#!/usr/bin/env bash
# ==============================================================================
# spickzettel — Standardisierter Terminal-Spickzettel für macOS und Linux
# Installationsskript
# ==============================================================================

set -e

echo "=== Installation von spickzettel (sz) ==="

# 1. Zielverzeichnis im PATH ermitteln
INSTALL_DIR=""
if [ -d "$HOME/.local/bin" ] && [[ ":$PATH:" == *":$HOME/.local/bin:"* ]]; then
    INSTALL_DIR="$HOME/.local/bin"
elif [ -d "$HOME/bin" ] && [[ ":$PATH:" == *":$HOME/bin:"* ]]; then
    INSTALL_DIR="$HOME/bin"
elif [ -w "/usr/local/bin" ]; then
    INSTALL_DIR="/usr/local/bin"
else
    mkdir -p "$HOME/.local/bin"
    INSTALL_DIR="$HOME/.local/bin"
    echo "Hinweis: Bitte stellen Sie sicher, dass $HOME/.local/bin in Ihrem PATH liegt."
fi

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# 2. Ausführbares Programm installieren / verlinken
echo "Installiere spickzettel nach $INSTALL_DIR..."
cp "$SCRIPT_DIR/spickzettel" "$INSTALL_DIR/spickzettel"
chmod +x "$INSTALL_DIR/spickzettel"

# 3. Symbolischen Link für das Kürzel sz anlegen
ln -sf "$INSTALL_DIR/spickzettel" "$INSTALL_DIR/sz"

# 4. Optionales Alias in Shell-Konfiguration eintragen
for RC in "$HOME/.zshrc" "$HOME/.bashrc"; do
    if [ -f "$RC" ]; then
        if ! grep -q "alias sz=" "$RC" 2>/dev/null; then
            echo 'alias sz="spickzettel"' >> "$RC"
            echo "Alias sz in $RC hinterlegt."
        fi
    fi
done

echo "=============================================================================="
echo "ERFOLG: spickzettel wurde erfolgreich installiert!"
echo "Befehle: spickzettel oder kurz sz"
echo "Hilfe:   sz -h"
echo "Suche:   sz -s <begriff>"
echo "=============================================================================="
