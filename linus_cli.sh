#!/bin/bash

# Výpis základních informací
echo "Shell: $SHELL"
echo "Uživatel: $(whoami)"
echo "Verze Linuxu:"
cat /etc/os-release

# Základní cesta ve složce HOME, aby se nemusel používat root
BASE_DIR="$HOME/usr/adresar/podadresar/posledniadresar"
SOUBOR="$BASE_DIR/soubor.txt"
LINK="/tmp/softLink"

# Vytvoření zanořených adresářů
mkdir -p "$BASE_DIR"

# Vytvoření souboru s textem
echo "Ahoj ze sveta Linux" > "$SOUBOR"

# Kontrola existence soft linku
if [ -L "$LINK" ]; then
  echo "Soft link '$LINK' již existuje. Skript končí s chybou." >&2
  exit 1
fi

# Vytvoření symbolického linku
ln -s "$SOUBOR" "$LINK"

# Kopírování souboru do /tmp
cp "$SOUBOR" /tmp/

# Výpis UID a GID
echo "UID: $(id -u)"
echo "GID: $(id -g)"

# Změna práv – ostatní jen čtení
chmod o=r "$SOUBOR"

# Změna práv na soft link – pouze execute pro vlastníka
chmod 100 "$LINK"
