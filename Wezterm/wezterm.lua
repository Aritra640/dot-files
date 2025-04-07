-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

config.color_scheme = "catppuccin-mocha"

config.font = wezterm.font("MesloLGS Nerd Font Mono")
config.font_size = 20

--Adding configuration
config.initial_cols = 70
config.initial_rows = 30
config.enable_tab_bar = false

config.window_decorations = "RESIZE"
config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}

config.keys = {
  {
    key = 'n',
    mods = 'CTRL',
    action = wezterm.action.ToggleFullScreen,
  },
}


config.window_background_opacity = 10
config.macos_window_background_blur = 10

-- And finally, return the configuration to wezterm
return config
