########################################
# 用户函数
########################################
cl() { cd "$1" && ll; }
mcd() { mkdir -p "$1" && cd "$1"; }
fe() { local file; file=$(fzf --query="$1" --select-1 --exit-0) && ${EDITOR:-vim} "$file"; }
dfu() { (cd ~/.dotfiles && git pull --ff-only && ./install -q); }

path_remove() { PATH=$(echo -n "$PATH" | awk -v RS=: -v ORS=: "\$0 != \"$1\"" | sed 's/:$//'); }
path_append() { path_remove "$1"; PATH="${PATH:+"$PATH:"}$1"; }
path_prepend() { path_remove "$1"; PATH="$1${PATH:+":$PATH"}"; }

here() { local loc; loc=$(realpath "${1:-.}"); ln -sfn "${loc}" "$HOME/.shell.here"; echo "here -> $(readlink $HOME/.shell.here)"; }
there="$HOME/.shell.here"
there() { cd "$(readlink "${there}")"; }

jump() { cd "$(dirname "$1")"; }

scr_cd() { builtin cd "$1"; screen -X chdir "$PWD"; }
[[ -n $STY ]] && alias cd=scr_cd

up() {
  local cdir="$(pwd)"
  local n=${1:-1}
  if ! [[ "$n" =~ ^[0-9]+$ ]] || [[ "$n" -le 0 ]]; then
    echo "Error: argument must be a positive number"
    return 1
  fi
  for ((i=0; i<n; i++)); do cdir="$(dirname "$cdir")"; done
  cd "$cdir"
}

xin() { (cd "$1" && shift && "$@"); }
nonascii() { LC_ALL=C grep -n '[^[:print:][:space:]]' "$@"; }
