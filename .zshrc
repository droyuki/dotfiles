function set_win_title(){
    echo -ne "\033]0; $(basename "$PWD") \007"
}

function make_ssh_alias() {
   for s in {49..174} 
   do
      code="alias ssh@$s=\"ssh wilson_liao@172.21.246.$s\""
      echo $code
   done
}

function colormap() {
  for i in {0..255}; do print -Pn "%K{$i}  %k%F{$i}${(l:3::0:)i}%f " ${${(M)$((i%6)):#3}:+$'\n'}; done
}

function reload() {
    echo "reload .zshrc"
    source ~/.zshrc
    cd -
}

# find out which distribution we are running on
LFILE="/etc/*-release"
MFILE="/System/Library/CoreServices/SystemVersion.plist"
if [[ -f $LFILE ]]; then
  _distro="ubuntu"
elif [[ -f $MFILE ]]; then
  _distro="macos"
fi

case $_distro in
    *ubuntu*)                ICON="";;
    *macos*)                 ICON="";;
    *)                       ICON="";;
esac

export STARSHIP_DISTRO="$ICON"

# history config
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory


# bind ctrl+left / ctrl+right
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# change window title
precmd_functions+=(set_win_title)

# some more ls aliases
if [ $_distro = ubuntu ]; then
    alias ls='ls --color=auto'
else # mac
    alias ls='ls -G'
fi

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# k8s aliases
alias k='kubectl'
alias km='kubectl -n mcb'
alias ks='kubectl -n kube-system'
alias ku='kubectl config use-context'
alias kd='kubectl config unset current-context'

eval "$(make_ssh_alias)"
eval "$(starship init zsh)"

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

cd ~/projects
