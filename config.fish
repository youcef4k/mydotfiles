# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Load Oh My Fish configuration.
source $OMF_PATH/init.fish

# Aliases
# alias vm="VBoxManage startvm "ISV21112""

# thefuck --alias | source


#source /usr/local/bin/virtualenvwrapper.sh


. ~/miniconda3/etc/fish/conf.d/conda.fish

fish_vi_key_bindings

alias sshnx='ssh -X nvidia@10.8.32.17'
alias sshyx='ssh -X ys254960@10.8.32.17'
bass source ~/.bashrc

bind -M insert \cf accept-autosuggestion

set PATH ~/bin ~/.local/bin /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin /usr/games /usr/local/games /snap/bin 
set PATH $PATH /usr/local/k1tools/bin 
set PATH $PATH ~/.autojump/bin
set PATH $PATH ~/miniconda3/condabin
set PATH $PATH ~/.fzf/bin
set PATH $PATH /usr/local/cuda-10.0/bin
set PATH $PATH ~/N2D2-IP/bin/N2D2/exec
set PATH $PATH ~/NXP/S32DS_Vision_v2018.R1/eclipse
set PATH $PATH ~/.local/kitty.app/bin
set RUST_SRC_PATH ~/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src
source ~/.cargo/env
set MANPATH $MANPATH /usr/local/k1tools/share/man/ 
set LD_LIBRARY_PATH $LD_LIBRARY_PATH /usr/local/k1tools/lib64/
set LD_LIBRARY_PATH $LD_LIBRARY_PATH /usr/local/k1tools/lib

if test -f ~/.autojump/share/autojump/autojump.fish; . ~/.autojump/share/autojump/autojump.fish; end
# set PATH ~/.autojump/bin ~/miniconda3/condabin ~/.autojump/bin ~/.fzf/bin ~/bin ~/.local/bin /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin /usr/games /usr/local/games /snap/bin /usr/local/cuda-10.0/bin /usr/local/k1tools/bin ~/N2D2-IP/bin/N2D2/

kitty + complete setup fish | source
