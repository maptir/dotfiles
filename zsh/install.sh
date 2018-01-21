echoGreen "*** Installing oh-my-zsh ***"
install zsh
0>/dev/null sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
cat ~/dotfiles/zsh/themes/cobalt2.zsh-theme > ~/.oh-my-zsh/themes/cobalt2.zsh-theme
sed -i 's/ZSH_THEME="agnoster"/ZSH_THEgME="cobalt2"/g' ~/.zshrc

# Install powerline font
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts
echoGreen "*** oh-my-zsh is ready ***"
