export CONFIG_DIR=$(dirname $0)

# antigen init
if [ ! -f "~/antigen.zsh" ]; then
    echo "antigen not found in home dir, downloading..."
    wget -O ~/antigen.zsh git.io/antigen
fi

source $HOME/antigen.zsh
antigen init "$CONFIG_DIR/.antigenrc"

# nord dir_colors
test -r "$CONFIG_DIR/.dir_colors" && eval $(dircolors $CONFIG_DIR/.dir_colors)

echo "test"
echo "$CONFIG_DIR/.dir_colors"
