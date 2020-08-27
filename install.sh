#!/bin/sh

config="${HOME}/.pbuilderrc"

if [ -f "$config" ]; then
  printf "$config already exists. We are going to remove it. Continue? "
  read answer

  if [ "$answer" != "y" ]; then
    exit
  fi
  cat dot.pbuilderrc > "$config"
fi
