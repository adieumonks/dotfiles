#!/bin/bash

set -eu

DOT_DIRECTORY=${PWD}

for f in .??*
do
    [[ "$f" == ".git" ]] && continue
    [[ "$f" == ".gitignore" ]] && continue
    [[ "$f" == ".DS_Store" ]] && continue

    ln -snfv "${DOT_DIRECTORY}/$f" "$HOME/$f"
done