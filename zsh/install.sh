echoGreen "*** Installing oh-my-zsh ***"
install zsh
0>/dev/null sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
cat ~/dotfiles/zsh/themes/cobalt2.zsh-theme > ~/.oh-my-zsh/themes/cobalt2.zsh-theme
cat ~/dotfiles/zsh/.zshrc > ~/.zshrc

# Install powerline font
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions
echoGreen "*** oh-my-zsh is ready ***"
