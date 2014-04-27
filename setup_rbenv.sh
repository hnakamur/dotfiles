#!/bin/bash
anyenv install rbenv
eval "$(anyenv init -)"
rbenv install 2.1.1
rbenv global 2.1.1
eval "$(anyenv init -)"
gem install bundler
rbenv rehash
bundle install
