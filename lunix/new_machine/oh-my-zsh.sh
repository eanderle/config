sudo apt-get install -y zsh
curl -Lo install.sh https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
less install.sh
sh install.sh
chsh -s `which zsh`
