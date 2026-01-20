# Created by newuser for 5.9
export EDITOR=nvim
PS1="[%F{green}%n%F|%F{cyan}%~%f]> "
bindkey -e
export LIBVA_DRIVER_NAME=i965

alias   nrb="sudo nixos-rebuild --flake ~/.dotfiles/nixos/ switch" # git add ~/.dotfiles/nixos/ && # incase of a file change
#make a git push alias for .dotfiles #alias   gp=""

alias   gc="export NIXPKGS_ALLOW_UNFREE=1 && nix run nixpkgs#google-chrome --impure &disown"

if [ -z $IS_NIX_SHELL ]
then
else
	PS1="%F{4}nix-shell%f|$PS1"
fi
