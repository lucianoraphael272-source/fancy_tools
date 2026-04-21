#!/bin/bash
set -e

REPO_URL='https://github.com/lucianoraphael272-source/fancy_tools.git'
SRC_DIR="$HOME/src/fancy_tools"

echo "Installation en cours..."

# Sauvegarde bashrc
cp ~/.bashrc ~/.bashrc.bak

add_if_missing() {
    grep -qF "$1" ~/.bashrc || echo "$1" >> ~/.bashrc
}

# Création du dossier src et clonage
mkdir -p "$HOME/src"
if [ ! -d "$SRC_DIR" ]; then
    git clone "$REPO_URL" "$SRC_DIR"
fi

# Config bashrc
add_if_missing "source $SRC_DIR/.aliases"
add_if_missing "source $SRC_DIR/fancy_functions.sh"
add_if_missing 'export PATH="$HOME/bin:$PATH"'

# Update script
mkdir -p "$HOME/bin"
cp "$SRC_DIR/bin/updateFancyTools" "$HOME/bin/"
chmod +x "$HOME/bin/updateFancyTools"

echo "Terminé ! Tapez : source ~/.bashrc"
