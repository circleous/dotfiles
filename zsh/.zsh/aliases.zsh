alias ls="gls --color=auto"
alias tb="nc termbin.com 9999"
alias bat="bat --pager=never --plain --theme=Dracula"

# mkdir and cd
function mkcd() {
  mkdir -p $1
  cd $1
}

# load dotenv
function envup() {
  local file=$([ -z "$1" ] && echo ".env" || echo ".env.$1")

  if [ -f $file ]; then
    set -a
    source $file
    set +a
  else
    echo "No $file file found" 1>&2
    return 1
  fi
}
