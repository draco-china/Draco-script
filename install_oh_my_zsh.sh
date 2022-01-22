#! /bin/bash
###
 # @Description: your description
 # @Module: module.name
 # @Author: draco
 # @Email: draco.coder@gmail.com
 # @Github: https://github.com/draco-china
 # @Date: 2022-01-22 17:38:34
 # @LastEditTime: 2022-01-22 17:38:34
### 

echo "安装 powerline-fonts 字体"
# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts

echo "安装 oh-my-zsh"
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "安装 zsh-autosuggestions 自动提示插件"
git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
echo "安装 zsh-syntax-highlighting 语法高亮插件"
git clone git://github.com/zsh-users/zsh-syntax-highlighting $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
# echo "安装 zsh-completions 自动补全插件"
# git clone https://github.com/zsh-users/zsh-completions.git $ZSH_CUSTOM/plugins/zsh-completions
echo "安装 spaceship-prompt 主题"
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

echo "复制 .zshrc 配置"
cp .zshrc ~/.zshrc

echo "查看安装的 shell"
cat /etc/shells
echo "切换为 zsh"
chsh -s /bin/zsh

echo "更新配置"
source ~/.zshrc