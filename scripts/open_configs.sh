#!/bin/bash

opt=$(echo -e "Hyprland Config\nNotebook\nTmux Javascript\nTmux Config Folder" | noctalia dmenu -p "Pick")

case $opt in
Hyprland\ Config) kitty -- nvim ~/.config/hypr ;;
Notebook) kitty -- zsh -c "cd ~/sync/notebook/ && nvim; exec zsh" ;;
Tmux\ Javascript) kitty -e tmux new-session -A -s js-session -c ~/Projects/javascript/ ;;
Tmux\ Config\ Folder) kitty -e tmux new-session -A -s config-session -c ~/.dotfiles/.config/ ;;
esac
