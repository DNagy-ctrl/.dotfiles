# Created by newuser for 5.9
export EDITOR=nvim
PS1="[%F{green}%n%F|%F{cyan}%~%f]> "
bindkey -e
export LIBVA_DRIVER_NAME=i965

alias   nrb="sudo nixos-rebuild switch --flake ~/.dotfiles/nixos" # git add ~/.dotfiles/nixos/ && # incase of a file change
#make a git push alias for .dotfiles #alias   gp=""

if [ -z $IS_NIX_SHELL ]
then
else
	PS1="%F{4}nix-shell%f|$PS1"
fi

alias mp3='yt-dlp -x --audio-format mp3 --audio-quality 0 --no-playlist "youtube:player_client=tv_embedded" --cookies-from-browser firefox -o "~/music/%(title)s.%(ext)s" '
alias mp3pl='yt-dlp -x --audio-format mp3 --audio-quality 0 "youtube:player_client=tv_embedded" --cookies-from-browser firefox '
alias mp4='yt-dlp -f "bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best" "youtube:player_client=tv_embedded" --cookies-from-browser firefox "youtube:player_client=android,web" --downloader aria2c --no-playlist -o "~/videos/%(title)s.%(ext)s" '

export PATH=$PATH:$HOME/.dotfiles/scripts

zinit light zdharma-continuum/fast-syntax-highlighting
#fast-theme ~/.dotfiles/zsh-fast-theme.ini > /dev/null

# Correcting miss types
alias sl="sl -w"
