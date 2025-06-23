local wezterm = require "wezterm"
local act = wezterm.action

return {
    { -- ctrl+左键 打开url
        event = { Up = { streak = 1, button = "Left" } },
        mods = "CTRL",
        action = act.OpenLinkAtMouseCursor,
    },
    { -- CTRL + 滚轮向上 -> 放大字体
        event = { Down = { streak = 1, button = { WheelUp = 1 } } },
        mods = 'CTRL',
        action = act.IncreaseFontSize,
    },
    { -- CTRL + 滚轮向下 -> 缩小字体
        event = { Down = { streak = 1, button = { WheelDown = 1 } } },
        mods = 'CTRL',
        action = act.DecreaseFontSize,
    },
}
