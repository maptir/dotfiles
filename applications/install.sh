echoGreen "*** Installing all applications ***"
install gnome-tweak-tool
install skypeforlinux

snap install ubuntu-make --classic
sudo add-apt-repository ppa:lyzardking/ubuntu-make
sudo add-apt-repository ppa:webupd8team/atom
sudo apt update
install ubuntu-make

install atom
apm install --packages-file ~/dotfiles/applications/atom_packages.txt
umake ide eclipse
umake android
umake android android-sdk
echoGreen "*** All applications is ready ***"
