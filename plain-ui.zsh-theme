# display username
display_username() {
	echo "%{$fg_bold[magenta]%}%n%{$reset_color%}"
}

prompt_indicator() {
   echo $'%B\u276f%b'
}

display_directory() {
	echo "%{$fg_bold[cyan]%}%0~%{$reset_color%}"
}

git_prompt() {
   echo "%{$fg_bold[magenta]%}$(git_prompt_info)%{$reset_color%}"
}

# set the git_prompt_info text
ZSH_THEME_GIT_PROMPT_PREFIX="{"
ZSH_THEME_GIT_PROMPT_SUFFIX="}"
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_CLEAN=""

# set the git_prompt_status text
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[cyan]%} ✈%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[yellow]%} ✭%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} ✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[blue]%} ➦%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[magenta]%} ✂%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[white]%} ✱%{$reset_color%}"



PROMPT='$(display_username) $(display_directory) $(git_prompt) $(prompt_indicator) '