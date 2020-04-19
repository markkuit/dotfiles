#!/usr/bin/env bash
# This shorty iterates through every git repo found under the cwd, removes
# it from the current repo index and adds it as a submodule instead.
# Useful if you initialized a repo on an existing folder which contains
# too many submodules to take care of manually (homesick, anyone?).

for dotgit in $(find . -type d -name .git ! -wholename ./.git); do
  git rm --cached -f $(dirname $dotgit)
  git submodule add $(git config -f $dotgit/config --get remote.origin.url) $(dirname $dotgit)
done
