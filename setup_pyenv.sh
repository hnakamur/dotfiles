#!/bin/bash
anyenv install pyenv
eval "$(anyenv init -)"
pyenv install 2.7.6
pyenv global 2.7.6
eval "$(anyenv init -)"
pyenv rehash
