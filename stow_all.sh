#!/bin/bash
# stow_all.sh
# 清理 .DS_Store 并安全 stow 所有 dotfiles 模块

# 进入 dotfiles 仓库根目录
cd ~/dotfiles || { echo "dotfiles 目录不存在！"; exit 1; }

echo "清理仓库内所有 .DS_Store 文件..."
find . -type f -name ".DS_Store" -exec rm -f {} +

echo "清理完成。现在执行 Stow..."

# Stow 模块列表，根据你的目录调整
MODULES=(editor server shell)

for mod in "${MODULES[@]}"; do
    echo "Stowing $mod..."
    stow --adopt -Sv "$mod"
done

echo "全部模块 Stow 完成。"

