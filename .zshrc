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
    cp $CONFIG_DIR/.dir_colors $HOME/.dir_colors
fi
# eval $(dircolors $CONFIG_DIR/.dir_colors)
# test -r "$CONFIG_DIR/.dir_colors" && eval $(dircolors $CONFIG_DIR/.dir_colors)

alias nvim="nvim -u $CONFIG_DIR/init.vim"
