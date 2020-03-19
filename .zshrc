### Added by Zplugin's installer
if [[ ! -d $HOME/.zplugin/bin ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing Zplugin…%f"
    command mkdir -p $HOME/.zplugin
    command git clone https://github.com/zdharma/zplugin $HOME/.zplugin/bin && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%F" || \
        print -P "%F{160}▓▒░ The clone has failed.%F"
fi
source "$HOME/.zplugin/bin/zplugin.zsh"
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin
### End of Zplugin installer's chunk

zplugin light ohmyzsh/git
# zplugin light zsh-users/zsh-autosuggestions
zplugin light zsh-users/zsh-autosuggestions
zplugin light zdharma/fast-syntax-highlighting
zplugin ice as"program" pick"bin/git-dsf"
zplugin light zdharma/zsh-diff-so-fancy


# zplugin snippet http://github.com/ohmyzsh/ohmyzsh/raw/master/lib/git.zsh
# zplugin snippet https://github.com/zsh-users/zsh-completions/blob/master/zsh-completions.plugin.zsh
# zplugin snippet OMZ::plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
zplugin light denysdovhan/spaceship-prompt
# export ZSH="/Users/danieljordan/.oh-my-zsh"
# ZSH_THEME="kardan"
# plugins=(git)
# plugins=(zsh-autosuggestions)

# source $ZSH/oh-my-zsh.sh
unset LSCOLORS
export CLICOLOR=1
export CLICOLOR_FORCE=1


#set history size
export HISTSIZE=10000
#save history after logout
export SAVEHIST=10000
#history file
export HISTFILE=~/.zhistory
#append into history file
setopt INC_APPEND_HISTORY
#save only one command if 2 common are same and consistent
setopt HIST_IGNORE_DUPS
#add timestamp for each entry
setopt EXTENDED_HISTORY   

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias pm='python manage.py'
alias pmr='python manage.py runserver'
alias pmmm='python manage.py makemigrations'
alias pmm='python manage.py migrate'

alias config='/usr/bin/git --git-dir=/Users/danieljordan/.cfg/ --work-tree=/Users/danieljordan'
