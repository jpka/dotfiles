# ZSH Theme - Preview: http://gyazo.com/8becc8a7ed5ab54a0262a470555c3eed.png
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

#local user_host='%{$terminfo[bold]$fg[green]%}%n@%m%{$reset_color%}'
local current_dir='%{$terminfo[bold]$fg[blue]%} %~%{$reset_color%}'
#local rvm_ruby=''
#if which rvm &> /dev/null; then
local rvm_ruby='%{$fg[red]%}‹$(rvm current)>'
#fi
local git_branch='$(git_prompt_info)'
local node_v=''
if which node &> /dev/null; then
  node_v='%{$fg[green]%}<$(node -v)>%{$reset_color%}'
fi
PROMPT="╭${current_dir} ${git_branch} ${rvm_ruby} ${node_v}
╰%B>%b "
RPS1="${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="›"
