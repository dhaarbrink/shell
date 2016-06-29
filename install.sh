# install default packages (apache, php, git etc)
sudo apt-get update -y
sudo apt-get install -y apache2 php5 git php5-curl npm zsh curl wget lynx

# configure git
git config --global user.name "Dennis Haarbrink"
git config --global user.email "dennis@nonmagna.nl"
git config --global alias.st status
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.ush push

# install composer
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php composer-setup.php --install-dir=/usr/local/bin
php -r "unlink('composer-setup.php');"
ln -s /usr/local/bin/composer.phar /usr/local/bin/composer

# install bower
npm install -g bower

# install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# setup aliases
echo "alias ls='ls -lha --color=auto'" >>~/.zshrc
echo "alias gitp=git" >>~/.zshrc
echo "alias gti=git" >>~/.zshrc

# change the default shell to zsh
sudo chsh -s /bin/zsh vagrant
zsh
