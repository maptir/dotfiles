printf "${YELLOW}Checking git...${NC}\n"
if [ -z "$(command -v git)" ]; then
  printf "${GREEN}[ Installing git... ]${NC}\n"
  apt install git
  printf "${GREEN}[ Done installing git ]${NC}\n"
else
  printf "${GREEN}git is already install.${NC}\n"
fi

rm -rf ~/dotfiles
git clone https://github.com/zepalz/dotfiles.git ~/dotfiles

source ~/dotfiles/source.sh;
MODULE=$0

sudo -i
echoRed "Start installing ..."
echoGreen "*** Updating apt ***"
apt update
mkdir ~/Programs

install gnome-tweak-tool

if [ "$MODULE" ] && [ "$MODULE" != "bash" ]
then
  bash -c "source ~/dotfiles/${MODULE}/install.sh"
else
  bash ~/dotfiles/fullpackages.sh
fi

exit
