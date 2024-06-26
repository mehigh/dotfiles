# Stolen from
#   https://github.com/sstephenson/rbenv/blob/master/completions/rbenv.zsh

if [[ ! -o interactive ]]; then
    return
fi

compctl -K _rbenv rbenv

_rbenv() {
  local word words completions
  read -cA words
  word="${words[2]}"

  if [ "${#words}" -eq 2 ]; then
    completions="$(rbenv commands)"
  else
    completions="$(rbenv completions "${word}")"
  fi

  reply=("${(ps:\n:)completions}")
}

# load z frecent folder jump
. ~/.dotfiles/bin/z.sh
