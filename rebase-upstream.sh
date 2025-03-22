#!/bin/bash

git remote add upstream git@github.com:ayosec/alacritty.git
git fetch upstream
git rebase upstream/graphics
