#############################################
###                                       ###
###                                       ###
###       plain-ui : a oh-my-zsh theme    ###
###        version : 1.0                  ###
###   developed by : @purveshpatel511     ###
###      Licence   : MIT Licence          ###
###                                       ###
###                                       ###
#############################################


correct_username() {
	echo "%{$fg_bold[yellow]%}%n%{$reset_color%}"
}

incorrect_username() {
	echo "%S%{$fg_bold[red]%}%{$bg[white]%}%n%{$reset_color%}%s"
}

display_username() {
	echo "%(?.$(correct_username).$(incorrect_username))"
}


#\u21e2⇢ u21e8⇨ long: u27fc⟼ u27fe⟾ 27ff⟿
prompt_indicator() {
   echo "%{$fg_bold[orange]%}\u27fc %{$reset_color%}"
}

display_directory() {
	echo "%{$fg_bold[cyan]%}%0~%{$reset_color%}"
}

git_prompt() {
   echo "%{$fg_bold[magenta]%}\ue0a0 $(git_prompt_info)%{$reset_color%}"
}

open_bracket() {
	echo "%{$fg[green]%}%B[%b%{$reset_color%}"
}

close_bracket() {
	echo "%{$fg[green]%}%B]%b%{$reset_color%}"
}

dashed_line() {
	echo "%{$fg[green]%}%B--%b%{$reset_color%}"
}

display_time() {
	echo "%{$fg_bold[red]%}%*%{$reset_color%}"
}

# set the git_prompt_info text
ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="\u26a1"
ZSH_THEME_GIT_PROMPT_CLEAN="\u2728"

# set the git_prompt_status text
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[cyan]%} \u271a %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[yellow]%} \u00b1 %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} \u2718 %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[blue]%} \u27a6 %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[magenta]%} \u2699 %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[white]%} \u2731 %{$reset_color%}"



PROMPT='$(open_bracket)$(display_username)$(close_bracket)$(dashed_line)$(open_bracket)$(display_directory)$(close_bracket)$(dashed_line)$(open_bracket)$(git_prompt)$(close_bracket)  $(display_time)  
$(prompt_indicator)  '