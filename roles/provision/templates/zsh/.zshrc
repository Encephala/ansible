# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
source $HOME/.alien/alien.zsh

export ALIEN_SECTIONS_LEFT=(
    time
    ssh
    path
    version # I don't know what this does, I'm sure it's cool and I'll magically find out some day
    newline
    venv
    prompt
)

export ALIEN_SECTIONS_RIGHT=(
    exit
    vcs_branch
    vcs_status
    vcs_dirty
)

export ALIEN_SECTION_TIME_FORMAT="%H:%M:%S"

export ALIEN_GIT_STASH_SYM="\\$"
export ALIEN_GIT_SYM=""
export ALIEN_HG_SYM=""
export ALIEN_SVN_SYM=""
export ALIEN_GIT_PUSH_SYM="↑ " # Add space because rendering on right site is janky otherwise

# Colours from https://www.color-hex.com/color-palette/59283
export ALIEN_SECTION_TIME_BG=#FFD6E4
export ALIEN_SECTION_TIME_FG=8
export ALIEN_SECTION_SSH_BG=#FFFFFF
export ALIEN_SECTION_SSH_FG=8
export ALIEN_SECTION_PATH_BG=#AAFBDC
export ALIEN_SECTION_PATH_FG=8

export ALIEN_SECTION_EXIT_BG=$ALIEN_SECTION_PATH_BG
export ALIEN_SECTION_EXIT_BG_ERROR=126
export ALIEN_SECTION_EXIT_FG=7
export ALIEN_SECTION_VCS_BRANCH_BG=$ALIEN_SECTION_PATH_BG
export ALIEN_SECTION_VCS_BRANCH_FG=$ALIEN_SECTION_PATH_FG
export ALIEN_SECTION_VCS_STATUS_BG=$ALIEN_SECTION_USER_BG
export ALIEN_SECTION_VCS_STATUS_FG=$ALIEN_SECTION_USER_FG
export ALIEN_SECTION_VCS_DIRTY_BG=$ALIEN_SECTION_TIME_BG
export ALIEN_SECTION_VCS_DIRTY_FG=$ALIEN_SECTION_TIME_FG
export ALIEN_GIT_TRACKED_COLOR=10
export ALIEN_GIT_UN_TRACKED_COLOR=0

export ALIEN_PROMPT_FG=82
export ALIEN_SECTION_VENV_FG=$ALIEN_PROMPT_FG

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
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
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export PATH="$PATH:/home/jonathan/.local/bin"
export EDITOR="vim"
