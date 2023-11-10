mkdir -p ~/.config
rsync -rv --exclude='setup.sh' --exclude='load.sh' . ~/test
ln -s ~/code/dotfiles/bin ~/code/bin
