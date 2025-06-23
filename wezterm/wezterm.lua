local wezterm = require("wezterm")
local config = wezterm.config_builder()

require("theme")
SetTheme(config)

config.hide_tab_bar_if_only_one_tab = true                             -- 隐藏多窗口标题栏
config.font = wezterm.font_with_fallback { 'JetBrainsMono Nerd Font' } -- 设置字体
config.font_size = 16

config.mouse_bindings = require("mouse_bind")
config.adjust_window_size_when_changing_font_size = false -- 修改字体大小时是否修改窗口大小
config.window_close_confirmation = 'NeverPrompt'

return config
