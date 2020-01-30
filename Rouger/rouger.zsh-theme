if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="green"; fi

# colors
eval gray='$FG[247]'
eval orange='$FG[214]'
eval turquoise='$FG[123]'
eval yellow='$FG[227]'
eval red='$FG[196]'
eval purple='$FG[069]'

# git settings 
ZSH_THEME_GIT_PROMPT_PREFIX=" $gray~ $FG[078]"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY=" "
ZSH_THEME_GIT_PROMPT_MODIFIED="$orange•"
ZSH_THEME_GIT_PROMPT_DELETED="$red•"
ZSH_THEME_GIT_PROMPT_RENAMED="$purple•"
ZSH_THEME_GIT_PROMPT_ADDED="$orange+%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNMERGED="$orange>M<"
ZSH_THEME_GIT_PROMPT_UNTRACKED="$orange๏"
ZSH_THEME_GIT_PROMPT_STASHED="$yellow [stashed]"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_BEHIND="$turquoise ↓"
ZSH_THEME_GIT_PROMPT_AHEAD="$turquoise ↑"

PROMPT='$FG[237]${(l.COLUMNS..-.)}%{$reset_color%}
$FG[032]%~\
$(git_prompt_info)$(git_prompt_status) \
$FG[105]%(!.#.»)%{$reset_color%} '