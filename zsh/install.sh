echoGreen "*** Installing oh-my-zsh ***"
install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sed -i 's/ZSH_THEME="agnoster"/ZSH_THEME="cobalt2"/g' .zshrc
cat ~/dotfiles/zsh/themes/cobalt2.zsh-theme > ~/.oh-my-zsh/themes/cobalt2.zsh-theme
install fonts-powerline
echoGreen "*** oh-my-zsh is ready ***"
