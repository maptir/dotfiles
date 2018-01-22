install gnome-tweak-tool

snap install ubuntu-make --classic
sudo add-apt-repository ppa:lyzardking/ubuntu-make
sudo apt-get update
sudo apt-get install ubuntu-make

umake ide eclipse

umake ide atom
apm install --packages-file ~/dotfiles/applications/atom_packages.txt

umake android
umake android android-sdk
