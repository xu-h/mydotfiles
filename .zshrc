ANTIGEN_PATH=~/.dotfiles
source $ANTIGEN_PATH/antigen/antigen.zsh
antigen init ~/.antigenrc

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# bindkey -v

# zsh autocompletion
zstyle :compinstall filename '/home/code-xu/.zshrc'
autoload -Uz compinit
compinit

# added by Miniconda3 installer
# export PATH="/home/code-xu/dev-env/miniconda3/bin:$PATH"  # commented out by conda initialize

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# add cuda
export PATH=/usr/local/cuda-9.0/bin${PATH:+:${PATH}}
export export LD_LIBRARY_PATH=/usr/local/cuda-9.0/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
export LD_LIBRARY_PATH=${LD_LIBRARY_PATH:+${LD_LIBRARY_PATH}:}/usr/local/cuda/extras/CUPTI/lib64

# tex live
export MANPATH=${MANPATH}:/usr/local/texlive/2018/texmf-dist/doc/man
export INFOPATH=${INFOPATH}:/usr/local/texlive/2018/texmf-dist/doc/info
export PATH=${PATH}:/usr/local/texlive/2018/bin/x86_64-linux

# ant
export ANT_HOME=$HOME/dev-env/apache-ant-1.10.5
export PATH=${PATH}:$ANT_HOME/bin

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/code-xu/dev-env/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/code-xu/dev-env/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/code-xu/dev-env/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/code-xu/dev-env/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# __conda_setup will activate base env automaticialy
conda deactivate

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

alias lg='lazygit'

# set LUA_PATH 
eval $(luarocks path --bin)
