########################################
# 函数
########################################
cl() { cd "$1" && ll; }           # 快速进入并列出目录
mcd() { mkdir -p "$1" && cd "$1"; } # 新建并进入目录

fe() {                             # fzf 文件选择 + 打开编辑器
  local file
  file=$(fzf --query="$1" --select-1 --exit-0) && ${EDITOR:-vim} "$file"
}

dfu() {                            # 更新 dotfiles
  (
    cd ~/.dotfiles && git pull --ff-only && ./install -q
  )
}

path_remove() {
  PATH=$(echo -n "$PATH" | awk -v RS=: -v ORS=: "\$0 != \"$1\"" | sed 's/:$//')
}

path_append() {
  path_remove "$1"
  PATH="${PATH:+"$PATH:"}$1"
}

path_prepend() {
  path_remove "$1"
  PATH="$1${PATH:+":$PATH"}"
}

here() {
  local loc
  if [ "$#" -eq 1 ]; then
    loc=$(realpath "$1")
  else
    loc=$(realpath ".")
  fi
  ln -sfn "${loc}" "$HOME/.shell.here"
  echo "here -> $(readlink $HOME/.shell.here)"
}

there="$HOME/.shell.here"
there() {
  cd "$(readlink "${there}")"
}

jump() {
  cd "$(dirname ${1})"
}

scr_cd() {
  builtin cd $1
  screen -X chdir "$PWD"
}
if [[ -n $STY ]]; then
  alias cd=scr_cd
fi

up() {
  local cdir="$(pwd)"
  if [[ "${1}" == "" ]]; then
    cdir="$(dirname "${cdir}")"
  elif ! [[ "${1}" =~ ^[0-9]+$ ]]; then
    echo "Error: argument must be a number"
  elif ! [[ "${1}" -gt "0" ]]; then
    echo "Error: argument must be positive"
  else
    for ((i=0; i<${1}; i++)); do
      local ncdir="$(dirname "${cdir}")"
      if [[ "${cdir}" == "${ncdir}" ]]; then
        break
      else
        cdir="${ncdir}"
      fi
    done
  fi
  cd "${cdir}"
}

xin() {
  (cd "${1}" && shift && "${@}")
}

nonascii() {
  LC_ALL=C grep -n '[^[:print:][:space:]]' "${@}"
}