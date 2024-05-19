local wezterm = require 'wezterm'
local act = wezterm.action

local config = wezterm.config_builder()


config.color_scheme = 'onedarkpro'
config.bold_brightens_ansi_colors = "No"
config.font = wezterm.font 'JetbrainsMono Nerd Font'
config.line_height = 1.2
config.font_size = 16
config.dpi = 144
config.freetype_load_target = "Light"

config.enable_kitty_keyboard = true
config.enable_csi_u_key_encoding = false

config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
config.enable_tab_bar = false
config.window_padding = {
  left = 20,
  right = 0,
  top = 75,
  bottom = 5,
}

config.window_close_confirmation = 'NeverPrompt'
config.audible_bell = "Disabled"

config.keys = {
  -- cmd+backspace erase word
  { key = 'Backspace', mods = 'CMD',       action = act.SendKey { key = 'w', mods = 'CTRL' } },
  -- cmd+shift+backspace erase line
  { key = 'Backspace', mods = 'CMD|SHIFT', action = act.SendKey { key = 'u', mods = 'CTRL' } },
  {
    key = 'LeftArrow',
    mods = 'OPT',
    action = act.SendKey {
      key = 'b',
      mods = 'ALT',
    },
  },
  {
    key = 'RightArrow',
    mods = 'OPT',
    action = act.SendKey { key = 'f', mods = 'ALT' },
  },
}
return config
