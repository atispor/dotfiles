#!/usr/bin/env bash

BASHRC="$HOME/.bashrc"

# BASHRC="$HOME/.zshrc"

if [ -r $BASHRC ]; then
  source $BASHRC
fi
