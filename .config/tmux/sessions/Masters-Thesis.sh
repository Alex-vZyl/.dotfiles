#!/bin/bash

source ~/.config/tmux/utils/env.sh
session="Masters-Thesis"

if ! tmux has-session -t $session >/dev/null 2>&1; then
    path="$HOME/Repositories/Masters-Thesis"
    file="$path/USthesis_Masters.tex"

    tmux new-session -d -s $session -c $path -n nvim "nvim $file"
    tmux new-window -c $path -n "shell"
    tmux new-window -c $path -n "git" "lazygit"
    tmux select-window -t 1
fi

tmux attach-session -t $session
