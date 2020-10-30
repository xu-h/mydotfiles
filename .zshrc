export CONFIG_DIR=$(dirname $0)

# antigen init
if [ ! -f "$HOME/antigen.zsh" ]; then
    echo "antigen not found in home dir, downloading..."
    wget -O $HOME/antigen.zsh git.io/antigen
fi

source $HOME/antigen.zsh
antigen init "$CONFIG_DIR/.antigenrc"

# nord dir_colors
if [ ! -f "$HOME/.dir_colors" ]; then
    echo ".dir_colors not found in home dir, use nord as default."
    ln -s $CONFIG_DIR/.dir_colors $HOME/.dir_colors
fi
# test -r "$CONFIG_DIR/.dir_colors" && eval $(dircolors $CONFIG_DIR/.dir_colors)

# nvim config
if [ ! -f "$HOME/.config/nvim/autoload/plug.vim" ]; then
    wget --directory-prefix=$HOME/.config/nvim/autoload https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

if [ ! -f "$HOME/.config/nvim/init.vim" ]; then
    echo "init.vim not exits, use default init.vim"
    ln -s $CONFIG_DIR/init.vim $HOME/.config/nvim/init.vim
fi

