#!/bin/bash

# Setup session.
session="Masters"
tmux start-server
tmux new-session -d -s $session -n nvim nvim
tmux source-file ~/.config/tmux/neovim.conf
tmux attach-session -t $session
tmux -L "Masters-Neovim"
