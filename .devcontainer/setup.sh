#!/usr/bin/env bash
set -euo pipefail

config_dir="$HOME/.config"
nvim_config="$config_dir/nvim"
backup="$config_dir/nvim.backup.$(date +%Y%m%d%H%M%S)"

mkdir -p "$config_dir"

if [ -L "$nvim_config" ]; then
    rm "$nvim_config"
elif [ -e "$nvim_config" ]; then
    mv "$nvim_config" "$backup"
    echo "Existing ~/.config/nvim moved to $backup"
fi

ln -s "$PWD" "$nvim_config"

echo "Linked $PWD to $nvim_config"
nvim --version | sed -n '1p'
