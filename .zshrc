# antigen init
if [ ! -f "$HOME/antigen.zsh" ]; then
    echo "antigen not found in home dir, downloading..."
    wget -O ~/antigen.zsh git.io/antigen
fi

source $HOME/antigen.zsh
antigen init $HOME/.antigenrc

# nord dir_colors
test -r "~/.dir_colors" && eval $(dircolors ~/.dir_colors)
