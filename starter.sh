rm -rf ~/dotfiles
git clone https://github.com/zepalz/dotfiles.git ~/dotfiles

source ~/dotfiles/source.sh;
MODULE=$0

sudo -i
echoRed "Start installing ..."
echoGreen "*** Updating apt ***"
apt update
mkdir ~/Programs

install git
install gnome-tweak-tool
install curl

if [ "$MODULE" ] && [ "$MODULE" != "bash" ]
then
  bash -c "source ~/dotfiles/${MODULE}/install.sh"
else
  bash ~/dotfiles/fullpackages.sh
fi

exit
