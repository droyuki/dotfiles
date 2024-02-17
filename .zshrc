function set_win_title(){
    echo -ne "\033]0; $(basename "$PWD") \007"
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
MFILE="/System/Library/CoreServices/SystemVersion.plist"
if [[ -f $MFILE ]]; then
  _distro="macos"
else
  _distro="ubuntu"
fi

case $_distro in
    *ubuntu*)
      ICON=""

      alias ls='ls --color=auto'

      ## NVM
      export NVM_DIR="$HOME/.nvm"
      [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
      [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
      ;;
    *macos*)
      ICON=""
      alias ls='ls -G'

      ## NVM
      export NVM_DIR="$HOME/.nvm"
      [ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
      [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
      ;;
    *)
      ICON="";;
esac

export _distro=$distro
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

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# k8s aliases
alias k='kubectl'
alias km='kubectl -n mcb'
alias ks='kubectl -n kube-system'
alias ku='kubectl config use-context'
alias kd='kubectl config unset current-context'


eval "$(starship init zsh)"

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

cd ~/projects
