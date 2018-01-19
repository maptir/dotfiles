echoGreen "*** Installing Guake ***"
install guake
echoWhite "Do you want guake to autostart [y/n]"
read choose
if [ choose == 'y']; then
  cat ~/dotfiles/guake/autostart/guake.desktop > ~/.config/autostart/guake.desktop
fi
echoGreen "*** Guake is ready ***"
