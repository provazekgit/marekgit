#!/bin/bash
echo "Shell: $SHELL"
echo "Uživatel: $(whoami)"
echo "Verze Linuxu:"
cat /etc/os-release

# Vytvoření zanořených adresářů
mkdir -p /usr/adresar/podadresar/posledniadresar

# Vytvoření souboru s textem
echo "Ahoj ze sveta Linux" > /usr/adresar/podadresar/posledniadresar/soubor.txt

# Vytvoření symbolického linku
ln -sf /usr/adresar/podadresar/posledniadresar/soubor.txt /tmp/softLink

# Zkopírování souboru do /tmp
cp /usr/adresar/podadresar/posledniadresar/soubor.txt /tmp/

# Výpis UID a GID
echo "UID: $(id -u)"
echo "GID: $(id -g)"

# Změna práv: ostatní pouze čtení
chmod o=r /usr/adresar/podadresar/posledniadresar/soubor.txt

# Změna práv na symbolický link: execute pro vlastníka, žádná práva pro ostatní
chmod 100 /tmp/softLink
