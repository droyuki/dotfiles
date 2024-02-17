#!/bin/bash

p=$(pwd)

files=(
    .customenv
    .vimrc
    .screenrc
    .tigrc
    .zshrc
    .zshenv
    .config/starship.toml
)

for f in "${files[@]}"
do
    ln -s -i $p/$f ~/$f
done
