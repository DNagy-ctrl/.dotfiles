#!/usr/bin/env sh
echo "What is the commit message? : "
text=""
comands=$(cd ~/.dotfiles && git add . && git commit -m "$text" && git push -u origin master)
echo $comands
