local wezterm = require('wezterm')

local config = wezterm.config_builder()

config.color_scheme = 'Dracula'
config.font = wezterm.font('FiraCode Nerd Font Mono')
config.font_size = 16
config.line_height = 1.2
config.command_palette_font_size = 16
config.hide_tab_bar_if_only_one_tab = true
config.pane_focus_follows_mouse = true
config.window_background_opacity = 0.85
config.macos_window_background_blur = 10

return config