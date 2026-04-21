gco() {
    if ! git rev-parse --is-inside-work-tree > /dev/null 2>&1; then
        echo "Erreur : Pas un dépôt Git."
        return 1
    fi
    if [ -z "$1" ]; then
        echo "Usage: gco 'message'"
        return 1
    fi
    local branch=$(git branch --show-current)
    git commit -m "[$branch] $1"
}
