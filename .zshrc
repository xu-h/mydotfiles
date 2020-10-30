if [ ! -f "$HOME/antigen.zsh" ]; then
    echo "antigen not found in home dir, downloading..."
    wget -O ~/antigen.zsh git.io/antigen
fi

source $HOME/antigen.zsh
antigen init $HOME/.antigenrc

# HISTFILE=~/.histfile
# HISTSIZE=1000
# SAVEHIST=1000
# # bindkey -v

# # zsh autocompletion
# zstyle :compinstall filename '/home/code-xu/.zshrc'
# autoload -Uz compinit
# compinit

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# alias lg='lazygit'
