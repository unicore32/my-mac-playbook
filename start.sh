#!/bin/bash -eu

CURRENT=$(cd $(dirname $0);pwd)

# install homebrew
if ! which brew > /dev/null; then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew doctor
fi

# install ansible
if ! which ansible > /dev/null; then
    brew install ansible
fi

ansible-playbook setup-mac.yml --ask-become-pass