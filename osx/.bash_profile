####################################
### Navigation & Rel. Functions  ###
####################################

alias vibp="vi ~/.bash_profile"
##For making, viewing and managing in-window flashcards
#Makes a flashcard file in documents if it does not exist and prints contents
alias flashcard="touch ~/Documents/flashcard; cat ~/Documents/flashcard"
#Opens flashcard for editing
alias flashcarde="vi ~/Documents/flashcard"
#mongo aliases
alias mongostart="launchctl load /usr/local/opt/mongodb/homebrew.mxcl.mongodb.plist' "
alias mongostop="launchctl unload /usr/local/opt/mongodb/homebrew.mxcl.mongodb.plist"
#laziness
alias ..="cd .."
alias ...="cd ../../"
alias ....="cd ../../../"
###########Amazon Cloud#############
-secret
####################################
### Custom Prompt / Colorization ###
####################################

# Command Line and LS Colors
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
 
### Git Stuff
 
# Fastest possible way to check if repo is dirty. a savior for the WebKit repo.
function parse_git_dirty() {
   git diff --quiet --ignore-submodules HEAD 2>/dev/null; [ $? -eq 1 ] && echo '*'
}

# branch name
function parse_git_branch() {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/\1$(parse_git_dirty)/"
}

#THIS IS YOUR PROMPT # THIS IS YOUR PROMPT # THIS IS YOUR PROMPT
 
# Prompt 1: "username@hostname:"
PS1="\e[34;40m\u\e[0m@\e[31;40m\h\e[0m:"
# Prompt 2: "path/to/where/you/are"
PS1="$PS1\e[32;40m\w\e[0m"
# Prompt 3: "(gitbranch)"
PS1="$PS1 \$([[ -n \$(git branch 2> /dev/null) ]] && echo \" \")\[\033[1;33m\]\$(parse_git_branch)\[\033[1;37m\]\n\$ \[$(tput sgr0)\]"
 
# ABOVE IS YOUR PROMPT # ABOVE IS YOUR PROMPT # ABOVE IS YOUR PROMPT
 
### Useful Command Shortcuts ###
#create a history log file in documents and open it with the sublime text editor
#dependent on {application => "sublime text 2", alias => #subl alias for sublime text"=> 
# verbose ls
alias ll="ls -al"
#Postgres info
#export PG_USER="secret"
#export PG_PASS="secret"
#automates some rails 3 tasks
#notes: navigation, opening
#Postgres Alias

#Git alias commands
alias gita="git add -A"
alias gitc="git commit -m"

#Web Development Immersive 7
alias rails3="rvm gemset use rails3"
alias rails4="rvm gemset use r2rails4"

##path for psql
export PATH="/Applications/Postgres.app/Contents/Versions/9.3/bin:$PATH"
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
