# dot-files

Repo with all dot-files used across different distros.

## Prepare environment

```
# nodejs installation
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -

# preparation of all packages
sudo apt update && sudo apt upgrade -y
sudo apt install -y tmux git tig python3 pip zsh curl wget htop vim silversearcher-ag \
    build-essential cmake vim-nox python3-dev mono-complete golang default-jdk \
    man libboost-all-dev libboost-doc tree nodejs valgrind # guake kali-win-kex
sudo pip install virtualenv

# shell configuration
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# tmux configuration
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .

# vim configuration
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
### get into vim and :PluginInstall
cd ~/.vim/bundle/YouCompleteMe
python3 install.py --all
```
