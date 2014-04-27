#!/bin/bash
anyenv install ndenv
eval "$(anyenv init -)"
ndenv install v0.10.26
ndenv global v0.10.26
eval "$(anyenv init -)"
npm install -g grunt-cli
ndenv rehash
