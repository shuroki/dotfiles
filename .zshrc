ZIM_HOME=~/.zim

# Install missing modules and update ${ZIM_HOME}/init.zsh if missing or outdated.
if [[ ! ${ZIM_HOME}/init.zsh -nt ${ZIM_CONFIG_FILE:-${ZDOTDIR:-${HOME}}/.zimrc} ]]; then
  source /opt/homebrew/opt/zimfw/share/zimfw.zsh init
fi

# Initialize modules.
source ${ZIM_HOME}/init.zsh

source ~/.env
source ~/.alias

eval "$(starship init zsh)" # 加载starship
eval "$(fnm env --use-on-cd)" # 加载fnm