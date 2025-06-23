local wezterm = require "wezterm"

function SetTheme(config)
    local appearance = wezterm.gui.get_appearance()
    local scheme = ""

    if appearance:find "Dark" then
        scheme = "Catppuccin Mocha"
    else
        -- scheme = "Catppuccin Latte"
        scheme = "Catppuccin Mocha"
    end

    config.color_scheme = scheme
end
