# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="cobalt2"
# ZSH_THEME="robbyrussell"
# ZSH_THEME="agnoster-mod"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git gitignore zsh-completions zsh-syntax-highlighting)

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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias text="open -e"
alias ohmyzsh="open ~/.oh-my-zsh"
alias config="mate ~/.zshrc"
alias reload="source ~/.zshrc"
alias crp="_create_new_repo"
alias gu="_git_update"
alias ignore="_create_gitignore"
alias c="_compile_and_run_c"
alias myip="_myip"
alias eclipse="setsid /home/map/.local/share/umake/ide/eclipse/eclipse > /dev/null 2>&1"
alias android="setsid /home/map/.local/share/umake/android/android-studio/bin/studio.sh > /dev/null 2>&1"

# _git_update [MESSAGE] [BRANCH]
#
# Author: Kongpon Charanwattanakit
#
# Invoke necessary commands to push files to GitHub repository.
_git_update() {
	if [ "$1" ]; then # message passed
		git add -A
		git commit -m "$1"
		if [ "$2" ]; then # branch passed
			git push origin "$2"
		else
			git push origin master
		fi
	else
		echo "Error: Please specify commit message"
	fi
}

# _create_new_repo
#
# Author: Kongpon Charanwattanakit
#
# Creating new GitHub repository on current directory.
# Specify TYPE to automatically create .gitignore file from gitignore.io.
_create_new_repo() {
	GREEN='\033[0;32m'
	GREY='\e[37m'
	BOLD='\033[1m'
	NC='\033[0m' # Reset (No Color)

	# prompt for gitignore file
	echo -n "\n${GREEN}?${NC} ${BOLD}.gitignore file type${NC} ${GREY}(enter to skip)${NC} "
	read answer
	# check if argument is passed
	if [ "$answer" ]; then
		if [ "$answer" = "." ]; then
			echo "Creating default .gitignore file..."
			echo '.DS_Store\n.*\n!.gitignore' > .gitignore
		else
			echo "Creating .gitignore file from gitignore.io..."
			gi "$answer" > .gitignore
		fi
		cat .gitignore
	fi
	git init
	git add -A
	git commit -m ":tada: Initial commit"
	hub create
	git push -u origin master
}

# _create_gitignore
#
# Author: Kongpon Charanwattanakit
#
# Creating new .gitignore on current directory.
# Specify TYPE to automatically create .gitignore file from gitignore.io.
_create_gitignore() {
	# check if argument is passed
	if [ "$1" ]; then
		if [ "$1" = "." ]; then
			echo "Creating default .gitignore file..."
			echo '.DS_Store\n.*\n!.gitignore' > .gitignore
		else
			echo "Creating .gitignore file from gitignore.io..."
			gi "$1" > .gitignore
		fi
	else
		echo "Creating default .gitignore file..."
		echo '.DS_Store\n.*\n!.gitignore' > .gitignore
	fi
	cat .gitignore
}

# _compile_and_run_c
#
# Author: Kongpon Charanwattanakit
#
# Compile and run clang program.
_compile_and_run_c() {
	#NAME="$(echo "${1}" | rev | cut -c3- | rev)"
	#cc "${1}" -o "${NAME}"
	#./"${NAME}"
	#rm "${NAME}"
	clang "${1}" -o temp_1234 -w
	./temp_1234 ${2}
	rm temp_1234
}

# _myip
#
# Author: Kongpon Charanwattanakit
#
# Display information about my ip address.
_myip() {
	echo '   'local ip: `ipconfig getifaddr en0` | grep 'local ip'
	route get default | grep gateway
	echo '  'public ip: `curl -s ipecho.net/plain` | grep 'public ip'
}
