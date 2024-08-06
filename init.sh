#!/bin/bash

TPM_REPO_DIR=~/.tmux/plugins/tpm

mkdir -p ~/.tmux/plugins

cp ./tmux.conf ~/.tmux.conf

if [ -d "$TPM_REPO_DIR/.git" ]; then
  git --git-dir="$TPM_REPO_DIR/.git" --work-tree="$TPM_REPO_DIR" pull
else
  git clone https://github.com/tmux-plugins/tpm.git $TPM_REPO_DIR
fi
