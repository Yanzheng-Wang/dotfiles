# dotfiles

配置是模仿[jonhoo](https://github.com/jonhoo/configs?tab=readme-ov-file)

[配置文件由GNU Stow](https://www.gnu.org/software/stow/)管理。每个顶级目录代表一组配置，你可以使用以下命令“安装”（通过符号链接）一组配置
```
$ stow -Sv <group>
```
您可以使用它-n来显示它将安装什么。

Stow 有很多[缺点](https://github.com/aspiers/stow/issues/33)，但我还没打算换其他的。理论上，它的目录布局应该与[chezmoi](https://www.chezmoi.io/)等其他工具基本兼容，你可能会更喜欢这些工具，尽管我自己还没有尝试过。