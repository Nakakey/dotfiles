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
else
    echo "oh-my-zsh is already installed"
fi

# make shimbolic link
ln -sf ~/dotfiles/nvim ~/.config/nvim
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/dotfiles/.gitignore_global ~/.gitignore_global
ln -sf ~/dotfiles/zsh/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf
#ln -sf ~/dotfiles/.latexmkrc ~/.latexmkrc

# clone zsh plugins into oh-my-zsh if not
if [ ! -d ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting ]; then
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
else
    echo "zsh-syntax-highlighting is already installed"
fi

if [ ! -d ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions ]; then
    git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
else
    echo "zsh-autosuggestions is already installed"
fi

# make bullet-train file if not
if [ ! -f ~/.oh-my-zsh/custom/bullet-train.zsh-theme ]; then
    curl https://raw.githubusercontent.com/caiogondim/bullet-train-oh-my-zsh-theme/master/bullet-train.zsh-theme -o ~/.oh-my-zsh/custom/bullet-train.zsh-theme
else
    echo "bullet-train.zsh-theme is already installed"
fi

# ref: https://qiita.com/8ayac/items/b6b6f0a385d08659316b
if type "brew" > /dev/null 2>&1; then
  if [ ! -f ~/dotfiles/Brewfile ]; then
    echo "cannot find Brewfile"
  else
    echo "installing packages via Brewfile"
    brew bundle
  fi
else
  echo "cannot start installing, install homebrew first"
fi
