echoGreen "*** Installing VSCODE ***"
sudo snap install code --classic

code --install-extension kamikillerto.vscode-colorize
code --install-extension peterjausovec.vscode-docker
code --install-extension editorconfig.editorconfig
code --install-extension henry-li.vscode-import-formatter
code --install-extension dbaeumer.vscode-eslint
code --install-extension eamodio.gitlens
code --install-extension kumar-harsh.graphql-for-vscode
code --install-extension vincaslt.highlight-matching-tag
code --install-extension donjayamanne.jquerysnippets
code --install-extension pkief.material-icon-theme
code --install-extension zhuangtongfa.material-theme
code --install-extension ms-python.python
code --install-extension mrmlnc.vscode-stylefmt
code --install-extension ms-vsliveshare.vsliveshare
code --install-extension arthurwang.vsc-prolog
code --install-extension jpoissonnier.vscode-styled-components

cat ~/dotfiles/vscode/setting/settings.json > ~/.config/Code/User/settings.json
echoGreen "*** All VSCODE extension is installed ***"
