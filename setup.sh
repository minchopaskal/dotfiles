mkdir -p ~/.config
mkdir -p ~/code
rsync -rv --exclude='setup.sh' --exclude='load.sh' . ~/
ln -s ~/code/dotfiles/bin ~/code/bin
