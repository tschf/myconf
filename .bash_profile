#!/bin/bash
if [[ -f ~/.bashrc ]] && [[ -r ~/.bashrc ]]
then
    . ~/.bashrc
fi
. "$HOME/.cargo/env"
