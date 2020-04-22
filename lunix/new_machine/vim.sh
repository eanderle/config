# you-complete-me
sudo apt-get -y install build-essential cmake vim python3-dev
vim +PluginInstall +qall
pushd ~/.vim/bundle/YouCompleteMe
python3 install.py --all
popd
