# fancy_tools
# Fancy Tools - Outils d'installation Shell & Git

## Description
Ce projet propose un script d'installation automatisé pour configurer un environnement de travail avec des alias Git personnalisés et des fonctions de commit intelligentes.

## Prérequis
- Système d'exploitation : Linux (Bash)
- Git installé et configuré

## Installation
1. Cloner le dépôt :
   `git clone https://github.com/luciano/fancy_tools.git`
2. Lancer l'installation :
   `bash install.sh`
3. Recharger le terminal :
   `source ~/.bashrc`

## Utilisation
- **gss** : Affiche le `git status`.
- **gap** : Ajoute tous les fichiers (`git add .`).
- **gco 'votre message'** : Effectue un commit avec le nom de la branche en préfixe.
- **updateFancyTools** : Met à jour les outils depuis le dépôt distant.

## Structure du projet
- `.aliases` : Définition des raccourcis Git.
- `fancy_functions.sh` : Contient la fonction de commit `gco`.
- `install.sh` : Script d'installation idempotent.
- `bin/updateFancyTools` : Script de mise à jour.
