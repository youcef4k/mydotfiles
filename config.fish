# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Load Oh My Fish configuration.
source $OMF_PATH/init.fish

# Aliases
# alias vm="VBoxManage startvm "ISV21112""

# thefuck --alias | source


set PATH $PATH /usr/local/cuda-10.0/bin 
#source /usr/local/bin/virtualenvwrapper.sh


. /home/sbyoussouf/miniconda3/etc/fish/conf.d/conda.fish

fish_vi_key_bindings

alias sshnx='ssh -X nvidia@10.8.32.17'
alias sshyx='ssh -X ys254960@10.8.32.17'
bass source ~/.bashrc


set PATH $PATH /usr/local/k1tools/bin 
set MANPATH $MANPATH /usr/local/k1tools/share/man/ 
set LD_LIBRARY_PATH $LD_LIBRARY_PATH /usr/local/k1tools/lib64/
set LD_LIBRARY_PATH $LD_LIBRARY_PATH /usr/local/k1tools/lib

if test -f /home/sbyoussouf/.autojump/share/autojump/autojump.fish; . /home/sbyoussouf/.autojump/share/autojump/autojump.fish; end
set PATH /home/sbyoussouf/.autojump/bin /home/sbyoussouf/miniconda3/condabin /home/sbyoussouf/.autojump/bin /home/sbyoussouf/.fzf/bin /home/sbyoussouf/bin /home/sbyoussouf/.local/bin /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin /usr/games /usr/local/games /snap/bin /usr/lib/jvm/java-8-oracle/bin /usr/lib/jvm/java-8-oracle/db/bin /usr/lib/jvm/java-8-oracle/jre/bin /home/sbyoussouf/devenv/node/bin /usr/local/cuda-10.0/bin /usr/local/k1tools/bin /home/sbyoussouf/N2D2/build/bin 
