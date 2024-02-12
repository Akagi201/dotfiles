local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.color_scheme = 'Dracula'
config.font = wezterm.font("FiraCode Nerd Font Mono")
config.font_size = 16
config.line_height = 1.2
config.command_palette_font_size = 16

config.window_frame = {
  font_size = 16,
  font = wezterm.font("FiraCode Nerd Font Mono"),
}

config.pane_focus_follows_mouse = true

return config