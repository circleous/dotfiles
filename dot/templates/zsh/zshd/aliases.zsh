# Git
alias gi="git init"
alias gs="git status"
alias gd="git diff"
alias gdh="git diff HEAD"
alias gc="git clone $1 $2"
alias gcm="git commit -m "$1""
alias gaa="git add -A ."
alias gpo="git push origin $1"
alias gl="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias glo="git log --oneline"
alias grhh="git reset --hard HEAD"
alias gcp="git cherry-pick $1"

# General
alias pacman='sudo pacman'
alias top='vtop -t wizard'
alias oldtop='/usr/bin/top'

# Clipboard
alias setclip='xclip -selection c'
alias getclip='xclip -selection clipboard -o'

# Files
alias ls="ls --color=auto"
alias l="ls -o -hX --group-directories-first"
alias la="ls -o -AhX --group-directories-first"
alias v='nvim'
alias vim='nvim'
alias prename='perl-rename'

# Get server SSL certificate fingerprint in MD5, SHA1 and SHA256.
# Note that OpenSSL doesn't support IPv6 at time of writing (2015-01-13).
serversslcertfp () {
    SSSLCFFN=$(openssl s_client -showcerts -connect $1 < /dev/null)
    # To see all validity information
    echo "$SSSLCFFN"
    # For getting the fingerprints
    echo "$SSSLCFFN" | openssl x509 -md5 -fingerprint -noout
    echo "$SSSLCFFN" | openssl x509 -sha1 -fingerprint -noout
    echo "$SSSLCFFN" | openssl x509 -sha256 -fingerprint -noout
    echo "$SSSLCFFN" | openssl x509 -sha512 -fingerprint -noout
    unset SSSLCFFN
}

#googleplay-api
alias gplaydownload="python2 /home/kyra/git/googleplay-api/download.py $1"

#mpd playlist
function genplaylist() {
  cd ~/Music
  find . -name '*.mp3' -o -name '*.flac'|sed -e 's%^./%%g' > ~/.config/mpd/playlists/all.m3u
  mpc clear
  mpc load all.m3u
  mpc update
}
