# Fonts Installation
# https://github.com/ryanoasis/nerd-fonts/blob/master/readme.md#option-4-homebrew-fonts
# https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/RobotoMono
# Then select the Roboto Mono Nerd Font

# colorls Installation
# https://github.com/athityakumar/colorls
# sudo gem install colorls

# powerlevel9k Installation
# https://github.com/Powerlevel9k/powerlevel9k
# brew tap sambadevi/powerlevel9k
POWERLEVEL9K_MODE='nerdfont-complete'
source $HOME/.oh-my-zsh/custom/themes/powerlevel9k/powerlevel9k.zsh-theme

# Path to your oh-my-zsh installation.
# Install oh-my-zsh : https://ohmyz.sh/
export ZSH="$HOME/.oh-my-zsh"

#History setup
HISTFILE=$HOME/.zsh_history
HISTSIZE=100000
SAVEHIST=$HISTSIZ

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    ssh-agent
)

source $ZSH/oh-my-zsh.sh

# User configuration
export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:$HOME/.cargo/bin:$PATH

alias gvim='/Applications/MacVim.app/Contents/MacOS/Vim -g'
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
alias python='python3'
# alias ls='colorls'
alias reload="source ~/.zshrc"


# iTerm2 MacOS Shell Integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"


# Roblox Setup
export CONTRIB_PATH="/Users/pallaire/Perforce/pallaireMBP/Contrib2"


