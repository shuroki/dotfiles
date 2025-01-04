local wezterm = require("wezterm")
local config = wezterm.config_builder()

require("theme")
set_theme(config)

config.hide_tab_bar_if_only_one_tab = true
config.font = wezterm.font_with_fallback {'JetBrains Mono Nerd Font'}

return config