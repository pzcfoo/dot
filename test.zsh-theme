# Totally ripped off Dallas theme

# Grab the current date (%W) and time (%t):
JUNKFOOD_TIME_="%{$fg_bold[red]%}#%{$fg_bold[red]%}[$fg_bold[white]%}%t %{$fg_bold[red]%}] $fg_bold[white]%}[%{$reset_color%} " 
JUNKFOOD_MACHINE_="%{$fg_bold[blue]%}%m%{$fg[white]%} ]:%{$reset_color%}"
JUNKFOOD_CURRENT_USER_="$fg_bold[white]%}[ %{$fg_bold[green]%}%n%{$reset_color%}"

# Grab the current filepath, use shortcuts: ~/Desktop
# Append the current git branch, if in a git repository: ~aw@master
JUNKFOOD_LOCA_="%{$fg[cyan]%}%~\$(git_prompt_info)%{$reset_color%}"

# For the git prompt, use a white @ and blue text for the branch name
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[white]%}@%{$fg_bold[white]%}"

# Close it all off by resetting the color and styles.
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%}✔"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[red]%}✗✗✗"

# Put it all together!
PROMPT="$JUNKFOOD_CURRENT_USER_@$JUNKFOOD_MACHINE_$JUNKFOOD_LOCA_
  "
