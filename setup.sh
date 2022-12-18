#!bin/sh

if [ ! -d ~/.zsh ]; then
  mkdir ~/.zsh
fi
if [ ! -d ~/.config ]; then
  mkdir ~/.config
fi

if type "zsh" > /dev/null 2>&1; then
    echo "zsh already exist! start setup."
else
    echo "NOT exist! you must install zsh first!"
    exit
fi

# clone oh-my zsh if not
if [ ! -d ~/.oh-my-zsh ]; then
  curl -Lo install.sh https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh
  sh install.sh
fi

# make shimbolic link
ln -sf ~/dotfiles/nvim ~/.config/nvim
ln -sf ~/dotfiles/.latexmkrc ~/.latexmkrc
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/dotfiles/.gitignore_global ~/.gitignore_global
ln -sf ~/dotfiles/zsh/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf

# clone zsh plugins into oh-my-zsh if not
if [ ! -d ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting ]; then
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
fi

if [ ! -d ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions ]; then
  git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
fi

# make bullet-train file if not
if [ ! -f ~/.oh-my-zsh/custom/bullet-train.zsh-theme ]; then
  curl https://raw.githubusercontent.com/caiogondim/bullet-train-oh-my-zsh-theme/master/bullet-train.zsh-theme -o ~/.oh-my-zsh/custom/bullet-train.zsh-theme
fi

# installing pyenv
# ref: https://qiita.com/8ayac/items/b6b6f0a385d08659316b
if type "brew" > /dev/null 2>&1; then
  brew install pyenv
  brew install pyenv-virtualenv
  brew install poetry
else
  echo "cannot install pyenv, install homebrew first"
fi

