# Enable Powerlevel10k instant prompt. Keep this at the top of the file.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# History Configuration
HISTFILE=$HOME/.zhistory       # File to save history
SAVEHIST=1000                  # Max number of history entries to save
HISTSIZE=999                   # Max number of entries in history
setopt share_history           # Share history across all sessions
setopt hist_expire_dups_first  # Expire duplicate entries first when trimming history
setopt hist_ignore_dups        # Ignore duplicate entries
setopt hist_verify             # Prompt for confirmation before executing history commands

# Powerlevel10k Theme
source ~/powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh  # Load Powerlevel10k configuration

# Zsh Syntax Highlighting (choose the correct path)
# Ensure this path is correct (use `find` to locate the zsh-syntax-highlighting.zsh file if necessary)
if [[ -f "/usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ]]; then
  source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
else
  echo "Zsh Syntax Highlighting not found at /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
fi

# Zsh Autosuggestions
ZSH_CUSTOM=${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}
source ${ZSH_CUSTOM}/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh



# The following lines were added by compinstall
zstyle :compinstall filename '~/.zshrc'
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Set environment variables
export scripts="$HOME/scripts"      # Path to your scripts folder
export host="rey"         # Replace with your actual hostname
export username="rey"     # Replace with your actual username

export PATH="$HOME/scripts:$PATH"

# Enable some helpful zsh options
setopt autocd
setopt correct
setopt auto_pushd

# Initialize zsh completion (if not already initialized)
autoload -Uz compinit
compinit


## Universal
alias i3config="nvim ~/.config/i3/config"
alias swayconfig="nvim ~/.config/sway/config"
alias qconfig="nvim ~/.config/qtile/config.py"
alias polyconfig="nvim ~/.config/polybar/config.ini"
alias wayconfig="nvim ~/.config/waybar/config.ini"
alias fetchconfig="nvim ~/.config/neofetch/config.conf"
alias kitconfig="nvim ~/.config/kitty/kitty.conf"
alias ls="eza --icons"
alias la="ls -la"
alias lst="ls --tree"
alias neodir="cd ~/.config/nvim"
alias sv="sudoedit"
alias v="nvim"

alias zsource="source .zshrc"
alias xx="exit"
alias ai="tgpt"
alias gg="fg"
alias ins='nvim $(fzf -m --preview="bat --theme=gruvbox-dark --color=always {}")'

# Aliases for ease of use
alias cat="bat"
alias ll="eza -lh --icons --grid --group-directories-first"
#alias la="eza -lah --icons --grid --group-directories-first"
alias ".."="cd .."
alias cls="clear"
alias md="mkdir"

alias rey-weatherHH="curl -4 http://wttr.in/Hamburg"
alias rey-weather="curl -4 http://wttr.in/"

alias install='sudo apt install'
alias update='sudo apt update && sudo apt upgrade'
alias upgrade='sudo apt full-upgrade'

alias cp2='rsync -ah --progress'

# Set up PATH for local scripts
export PATH="$HOME/.local/bin:$PATH"
export PATH=$PATH:/snap/bin

# Enable plugins or other custom functions
# Add custom configurations or functions here

# Set default editor to nvim
export VISUAL="nvim"
export EDITOR="nvim"

# Source other configurations if needed (e.g., for zsh themes or plugins)
# source $ZSH/oh-my-zsh.sh
