echoGreen "*** Installing all applications ***"
install gnome-tweak-tool
install skypeforlinux
install screenfetch
install default-jdk
install default-jre

snap install ubuntu-make --classic
sudo add-apt-repository ppa:lyzardking/ubuntu-make
sudo add-apt-repository ppa:webupd8team/atom
sudo apt update
install ubuntu-make

install atom
apm install --packages-file ~/dotfiles/applications/atom_packages.txt
umake ide eclipse
echoGreen "*** All applications is ready ***"
